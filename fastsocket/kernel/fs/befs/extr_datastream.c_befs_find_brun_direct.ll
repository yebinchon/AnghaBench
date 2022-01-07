; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_find_brun_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_find_brun_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"---> befs_find_brun_direct(), find %lu\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"befs_find_brun_direct() passed block outside ofdirect region\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@BEFS_NUM_DIRECT_BLOCKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"---> befs_find_brun_direct(), found %lu at direct[%d]\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"---> befs_find_brun_direct() ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.TYPE_6__*, i64, %struct.TYPE_7__*)* @befs_find_brun_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_find_brun_direct(%struct.super_block* %0, %struct.TYPE_6__* %1, i64 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %11, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.TYPE_8__* @BEFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = ashr i64 %20, %24
  store i64 %25, i64* %13, align 8
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = call i32 @befs_error(%struct.super_block* %33, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @BEFS_ERR, align 4
  store i32 %35, i32* %5, align 4
  br label %112

36:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %97, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @BEFS_NUM_DIRECT_BLOCKS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %47, %53
  %55 = icmp slt i64 %46, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %12, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.super_block*, %struct.super_block** %6, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %92, i32 %93)
  %95 = load i32, i32* @BEFS_OK, align 4
  store i32 %95, i32* %5, align 4
  br label %112

96:                                               ; preds = %45, %41
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %12, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %37

108:                                              ; preds = %37
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @BEFS_ERR, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %56, %32
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_8__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
