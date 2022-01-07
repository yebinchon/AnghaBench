; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_touch_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_touch_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32 }
%struct.ds_status = type { i32 }

@COMM_BIT_IO = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@COMM_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, i64, i64*)* @ds_touch_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_touch_bit(%struct.ds_device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ds_status, align 4
  store %struct.ds_device* %0, %struct.ds_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %11 = load i32, i32* @COMM_BIT_IO, align 4
  %12 = load i32, i32* @COMM_IM, align 4
  %13 = or i32 %11, %12
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @COMM_D, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %13, %20
  %22 = call i32 @ds_send_control(%struct.ds_device* %10, i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %19
  %28 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %29 = call i32 @ds_wait_status(%struct.ds_device* %28, %struct.ds_status* %9)
  %30 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = call i32 @ds_recv_data(%struct.ds_device* %30, i64* %31, i32 8)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ds_send_control(%struct.ds_device*, i32, i32) #1

declare dso_local i32 @ds_wait_status(%struct.ds_device*, %struct.ds_status*) #1

declare dso_local i32 @ds_recv_data(%struct.ds_device*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
