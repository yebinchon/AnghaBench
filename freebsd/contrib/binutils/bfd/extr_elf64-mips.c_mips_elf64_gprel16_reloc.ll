; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_gprel16_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_gprel16_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i64 }

@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*, i8*, %struct.TYPE_16__*, i32*, i8**)* @mips_elf64_gprel16_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_elf64_gprel16_reloc(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i8* %3, %struct.TYPE_16__* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %7
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BSF_SECTION_SYM, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BSF_LOCAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load i64, i64* @bfd_reloc_ok, align 8
  store i64 %45, i64* %8, align 8
  br label %80

46:                                               ; preds = %28, %21, %7
  %47 = load i32*, i32** %14, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %16, align 4
  br label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %14, align 8
  br label %60

60:                                               ; preds = %51, %49
  %61 = load i32*, i32** %14, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i8**, i8*** %15, align 8
  %65 = call i64 @mips_elf64_final_gp(i32* %61, %struct.TYPE_15__* %62, i32 %63, i8** %64, i32* %18)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* @bfd_reloc_ok, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* %17, align 8
  store i64 %70, i64* %8, align 8
  br label %80

71:                                               ; preds = %60
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i64 @_bfd_mips_elf_gprel16_with_gp(i32* %72, %struct.TYPE_15__* %73, %struct.TYPE_17__* %74, %struct.TYPE_16__* %75, i32 %76, i8* %77, i32 %78)
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %71, %69, %35
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i64 @mips_elf64_final_gp(i32*, %struct.TYPE_15__*, i32, i8**, i32*) #1

declare dso_local i64 @_bfd_mips_elf_gprel16_with_gp(i32*, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
