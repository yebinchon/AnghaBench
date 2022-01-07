; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_put_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_put_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, %struct.TYPE_5__, %struct.uwb_rc* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.uwb_rc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"put stream %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv*)* @uwb_rsv_put_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rsv_put_stream(%struct.uwb_rsv* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %2, align 8
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 2
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  store %struct.uwb_rc* %8, %struct.uwb_rc** %3, align 8
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %13 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %23
  ]

16:                                               ; preds = %1
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %5, align 8
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %25 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %5, align 8
  br label %29

28:                                               ; preds = %1
  br label %40

29:                                               ; preds = %23, %16
  %30 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %31 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = call i32 @clear_bit(i32 %32, i64* %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %37 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
