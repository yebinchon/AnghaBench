; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds2490.c_ds_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32, i32 }
%struct.ds_status = type { i32 }

@COMM_BLOCK_IO = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, i32*, i32)* @ds_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_write_block(%struct.ds_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ds_status, align 4
  store %struct.ds_device* %0, %struct.ds_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ds_send_data(%struct.ds_device* %10, i32* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %20 = load i32, i32* @COMM_BLOCK_IO, align 4
  %21 = load i32, i32* @COMM_IM, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %24 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ds_send_control(%struct.ds_device* %19, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %60

33:                                               ; preds = %18
  %34 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %35 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %40 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @msleep(i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %45 = call i32 @ds_wait_status(%struct.ds_device* %44, %struct.ds_status* %9)
  %46 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ds_recv_data(%struct.ds_device* %46, i32* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %52, %31, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ds_send_data(%struct.ds_device*, i32*, i32) #1

declare dso_local i32 @ds_send_control(%struct.ds_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ds_wait_status(%struct.ds_device*, %struct.ds_status*) #1

declare dso_local i32 @ds_recv_data(%struct.ds_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
