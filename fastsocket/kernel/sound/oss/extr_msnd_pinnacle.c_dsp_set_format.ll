; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dsp_set_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dsp_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.file = type { i32 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DAPQ_DATA_BUFF = common dso_local global i64 0, align 8
@DARQ_DATA_BUFF = common dso_local global i64 0, align 8
@DEFSAMPLESIZE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@DAQDS_wSampleSize = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@DAQDS__size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @dsp_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_set_format(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), align 8
  %10 = load i64, i64* @DAPQ_DATA_BUFF, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), align 8
  %13 = load i64, i64* @DARQ_DATA_BUFF, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %18 [
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %2, %2
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DEFSAMPLESIZE, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %16
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FMODE_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @DAQDS_wSampleSize, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writew(i32 %32, i64 %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FMODE_READ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @DAQDS_wSampleSize, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writew(i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* @DAQDS__size, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* @DAQDS__size, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %21

60:                                               ; preds = %21
  %61 = load %struct.file*, %struct.file** %3, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FMODE_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  br label %69

69:                                               ; preds = %67, %60
  %70 = load %struct.file*, %struct.file** %3, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FMODE_READ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 4
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
