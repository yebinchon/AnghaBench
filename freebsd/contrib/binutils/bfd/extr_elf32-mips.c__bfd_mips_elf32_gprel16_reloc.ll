; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mips.c__bfd_mips_elf32_gprel16_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-mips.c__bfd_mips_elf32_gprel16_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@R_MIPS_LITERAL = common dso_local global i64 0, align 8
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"literal relocation occurs for an external symbol\00", align 1
@bfd_reloc_outofrange = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_mips_elf32_gprel16_reloc(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i8* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @R_MIPS_LITERAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BSF_SECTION_SYM, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BSF_LOCAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = call i64 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8**, i8*** %15, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* @bfd_reloc_outofrange, align 8
  store i64 %47, i64* %8, align 8
  br label %82

48:                                               ; preds = %36, %29, %26, %7
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %16, align 4
  br label %62

53:                                               ; preds = %48
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %14, align 8
  br label %62

62:                                               ; preds = %53, %51
  %63 = load i32*, i32** %14, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i8**, i8*** %15, align 8
  %67 = call i64 @mips_elf_final_gp(i32* %63, %struct.TYPE_14__* %64, i32 %65, i8** %66, i32* %18)
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @bfd_reloc_ok, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i64, i64* %17, align 8
  store i64 %72, i64* %8, align 8
  br label %82

73:                                               ; preds = %62
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %18, align 4
  %81 = call i64 @_bfd_mips_elf_gprel16_with_gp(i32* %74, %struct.TYPE_14__* %75, %struct.TYPE_15__* %76, i32* %77, i32 %78, i8* %79, i32 %80)
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %73, %71, %43
  %83 = load i64, i64* %8, align 8
  ret i64 %83
}

declare dso_local i64 @_(i8*) #1

declare dso_local i64 @mips_elf_final_gp(i32*, %struct.TYPE_14__*, i32, i8**, i32*) #1

declare dso_local i64 @_bfd_mips_elf_gprel16_with_gp(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
