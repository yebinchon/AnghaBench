; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_get_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, %struct.TYPE_6__, %struct.uwb_rc* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.uwb_rc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UWB_NUM_STREAMS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"get stream %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rsv*)* @uwb_rsv_get_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rsv_get_stream(%struct.uwb_rsv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rsv*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %3, align 8
  %8 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %8, i32 0, i32 2
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %9, align 8
  store %struct.uwb_rc* %10, %struct.uwb_rc** %4, align 8
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %15 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %25
  ]

18:                                               ; preds = %1
  %19 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %20 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %6, align 8
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %27 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %6, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %25, %18
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* @UWB_NUM_STREAMS, align 4
  %36 = call i32 @find_first_zero_bit(i64* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @UWB_NUM_STREAMS, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %46 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i64*, i64** %6, align 8
  %49 = call i32 @set_bit(i32 %47, i64* %48)
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %52 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %40, %30
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @find_first_zero_bit(i64*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
