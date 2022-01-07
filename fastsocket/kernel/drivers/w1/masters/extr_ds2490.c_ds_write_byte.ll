; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32, i32 }
%struct.ds_status = type { i32 }

@COMM_BYTE_IO = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, i64)* @ds_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_write_byte(%struct.ds_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ds_status, align 4
  %8 = alloca i64, align 8
  store %struct.ds_device* %0, %struct.ds_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %10 = load i32, i32* @COMM_BYTE_IO, align 4
  %11 = load i32, i32* @COMM_IM, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %14 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ds_send_control(%struct.ds_device* %9, i32 %16, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %25 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %30 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msleep(i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %35 = call i32 @ds_wait_status(%struct.ds_device* %34, %struct.ds_status* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %33
  %41 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %42 = call i32 @ds_recv_data(%struct.ds_device* %41, i64* %8, i32 8)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %40
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %48, %49
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %45, %38, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ds_send_control(%struct.ds_device*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ds_wait_status(%struct.ds_device*, %struct.ds_status*) #1

declare dso_local i32 @ds_recv_data(%struct.ds_device*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
