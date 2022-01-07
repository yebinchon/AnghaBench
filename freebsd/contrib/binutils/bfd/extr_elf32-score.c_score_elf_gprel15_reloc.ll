; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_gprel15_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_gprel15_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i64 }

@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*, i8*, %struct.TYPE_16__*, i32*, i8**)* @score_elf_gprel15_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @score_elf_gprel15_reloc(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i8* %3, %struct.TYPE_16__* %4, i32* %5, i8** %6) #0 {
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
  br i1 %20, label %21, label %44

21:                                               ; preds = %7
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BSF_SECTION_SYM, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load i64, i64* @bfd_reloc_ok, align 8
  store i64 %43, i64* %8, align 8
  br label %78

44:                                               ; preds = %28, %21, %7
  %45 = load i32*, i32** %14, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %16, align 4
  br label %58

49:                                               ; preds = %44
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %14, align 8
  br label %58

58:                                               ; preds = %49, %47
  %59 = load i32*, i32** %14, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i8**, i8*** %15, align 8
  %63 = call i64 @score_elf_final_gp(i32* %59, %struct.TYPE_15__* %60, i32 %61, i8** %62, i32* %18)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @bfd_reloc_ok, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i64, i64* %17, align 8
  store i64 %68, i64* %8, align 8
  br label %78

69:                                               ; preds = %58
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %18, align 4
  %77 = call i64 @score_elf_gprel15_with_gp(i32* %70, %struct.TYPE_15__* %71, %struct.TYPE_17__* %72, %struct.TYPE_16__* %73, i32 %74, i8* %75, i32 %76)
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %69, %67, %33
  %79 = load i64, i64* %8, align 8
  ret i64 %79
}

declare dso_local i64 @score_elf_final_gp(i32*, %struct.TYPE_15__*, i32, i8**, i32*) #1

declare dso_local i64 @score_elf_gprel15_with_gp(i32*, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
