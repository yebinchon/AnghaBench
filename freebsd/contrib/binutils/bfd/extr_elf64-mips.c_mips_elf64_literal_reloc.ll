; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_literal_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_literal_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"literal relocation occurs for an external symbol\00", align 1
@bfd_reloc_outofrange = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_9__*, i8*, i32*, i32*, i8**)* @mips_elf64_literal_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_elf64_literal_reloc(i32* %0, i32* %1, %struct.TYPE_9__* %2, i8* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %7
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BSF_SECTION_SYM, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BSF_LOCAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = call i64 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %15, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* @bfd_reloc_outofrange, align 8
  store i64 %39, i64* %8, align 8
  br label %74

40:                                               ; preds = %28, %21, %7
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %16, align 4
  br label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %16, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %14, align 8
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i32*, i32** %14, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i8**, i8*** %15, align 8
  %59 = call i64 @mips_elf64_final_gp(i32* %55, %struct.TYPE_9__* %56, i32 %57, i8** %58, i32* %18)
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @bfd_reloc_ok, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* %17, align 8
  store i64 %64, i64* %8, align 8
  br label %74

65:                                               ; preds = %54
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %18, align 4
  %73 = call i64 @_bfd_mips_elf_gprel16_with_gp(i32* %66, %struct.TYPE_9__* %67, i32* %68, i32* %69, i32 %70, i8* %71, i32 %72)
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %65, %63, %35
  %75 = load i64, i64* %8, align 8
  ret i64 %75
}

declare dso_local i64 @_(i8*) #1

declare dso_local i64 @mips_elf64_final_gp(i32*, %struct.TYPE_9__*, i32, i8**, i32*) #1

declare dso_local i64 @_bfd_mips_elf_gprel16_with_gp(i32*, %struct.TYPE_9__*, i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
