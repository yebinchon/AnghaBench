; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_odk_reginfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_odk_reginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i64 (i32**, i32)* }

@ELFCLASS64 = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c" %s    \00", align 1
@ODK_REGINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ri_gprmask:    0x%08jx\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%11.11s ri_cprmask[%d]: 0x%08jx\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%12.12s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ri_gp_value:   %#jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32*, i64)* @dump_mips_odk_reginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_odk_reginfo(%struct.readelf* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %10, align 8
  br label %15

15:                                               ; preds = %86, %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ult i32* %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %15
  %20 = load %struct.readelf*, %struct.readelf** %4, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 1
  %22 = load i64 (i32**, i32)*, i64 (i32**, i32)** %21, align 8
  %23 = call i64 %22(i32** %5, i32 4)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.readelf*, %struct.readelf** %4, align 8
  %25 = getelementptr inbounds %struct.readelf, %struct.readelf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ELFCLASS64, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.readelf*, %struct.readelf** %4, align 8
  %31 = getelementptr inbounds %struct.readelf, %struct.readelf* %30, i32 0, i32 1
  %32 = load i64 (i32**, i32)*, i64 (i32**, i32)** %31, align 8
  %33 = call i64 %32(i32** %5, i32 4)
  br label %34

34:                                               ; preds = %29, %19
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.readelf*, %struct.readelf** %4, align 8
  %40 = getelementptr inbounds %struct.readelf, %struct.readelf* %39, i32 0, i32 1
  %41 = load i64 (i32**, i32)*, i64 (i32**, i32)** %40, align 8
  %42 = call i64 %41(i32** %5, i32 4)
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load %struct.readelf*, %struct.readelf** %4, align 8
  %51 = getelementptr inbounds %struct.readelf, %struct.readelf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ELFCLASS32, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.readelf*, %struct.readelf** %4, align 8
  %57 = getelementptr inbounds %struct.readelf, %struct.readelf* %56, i32 0, i32 1
  %58 = load i64 (i32**, i32)*, i64 (i32**, i32)** %57, align 8
  %59 = call i64 %58(i32** %5, i32 4)
  store i64 %59, i64* %9, align 8
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.readelf*, %struct.readelf** %4, align 8
  %62 = getelementptr inbounds %struct.readelf, %struct.readelf* %61, i32 0, i32 1
  %63 = load i64 (i32**, i32)*, i64 (i32**, i32)** %62, align 8
  %64 = call i64 %63(i32** %5, i32 8)
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @ODK_REGINFO, align 4
  %67 = call i8* @option_kind(i32 %66)
  %68 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i64, i64* %7, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %83, %65
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %76, i8* %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %72

86:                                               ; preds = %72
  %87 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i64, i64* %9, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %15

91:                                               ; preds = %15
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @option_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
