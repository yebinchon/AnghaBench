; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfn32-mips.c_mips16_gprel_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfn32-mips.c_mips16_gprel_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { i32 }

@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_19__*, %struct.TYPE_17__*, i8*, %struct.TYPE_18__*, i32*, i8**)* @mips16_gprel_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips16_gprel_reloc(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2, i8* %3, %struct.TYPE_18__* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %7
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BSF_SECTION_SYM, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BSF_LOCAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i64, i64* @bfd_reloc_ok, align 8
  store i64 %44, i64* %8, align 8
  br label %108

45:                                               ; preds = %29, %22, %7
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %16, align 4
  br label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %14, align 8
  br label %59

59:                                               ; preds = %50, %48
  %60 = load i32*, i32** %14, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i8**, i8*** %15, align 8
  %64 = call i64 @mips_elf_final_gp(i32* %60, %struct.TYPE_17__* %61, i32 %62, i8** %63, i32* %19)
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* @bfd_reloc_ok, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* %17, align 8
  store i64 %69, i64* %8, align 8
  br label %108

70:                                               ; preds = %59
  %71 = load i8*, i8** %12, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32* %77, i32** %18, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @_bfd_mips16_elf_reloc_unshuffle(i32* %78, i32 %83, i32 %84, i32* %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %19, align 4
  %94 = call i64 @_bfd_mips_elf_gprel16_with_gp(i32* %87, %struct.TYPE_17__* %88, %struct.TYPE_19__* %89, %struct.TYPE_18__* %90, i32 %91, i8* %92, i32 %93)
  store i64 %94, i64* %17, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %18, align 8
  %106 = call i32 @_bfd_mips16_elf_reloc_shuffle(i32* %95, i32 %100, i32 %104, i32* %105)
  %107 = load i64, i64* %17, align 8
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %70, %68, %36
  %109 = load i64, i64* %8, align 8
  ret i64 %109
}

declare dso_local i64 @mips_elf_final_gp(i32*, %struct.TYPE_17__*, i32, i8**, i32*) #1

declare dso_local i32 @_bfd_mips16_elf_reloc_unshuffle(i32*, i32, i32, i32*) #1

declare dso_local i64 @_bfd_mips_elf_gprel16_with_gp(i32*, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @_bfd_mips16_elf_reloc_shuffle(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
