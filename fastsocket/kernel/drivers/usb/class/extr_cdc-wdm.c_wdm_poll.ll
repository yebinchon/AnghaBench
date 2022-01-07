; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.wdm_device* }
%struct.wdm_device = type { i32, i32, i32, i64, i64 }
%struct.poll_table_struct = type { i32 }

@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@WDM_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@WDM_IN_USE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @wdm_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.wdm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.wdm_device*, %struct.wdm_device** %9, align 8
  store %struct.wdm_device* %10, %struct.wdm_device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %12 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @WDM_DISCONNECTING, align 4
  %16 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %17 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @POLLERR, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %23 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %22, i32 0, i32 1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %72

26:                                               ; preds = %2
  %27 = load i32, i32* @WDM_READ, align 4
  %28 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %29 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @POLLIN, align 4
  %34 = load i32, i32* @POLLRDNORM, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %38 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %43 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @POLLERR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @WDM_IN_USE, align 4
  %52 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %53 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %52, i32 0, i32 2
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @POLLOUT, align 4
  %58 = load i32, i32* @POLLWRNORM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %64 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %63, i32 0, i32 1
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.file*, %struct.file** %3, align 8
  %68 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %69 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %68, i32 0, i32 0
  %70 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %71 = call i32 @poll_wait(%struct.file* %67, i32* %69, %struct.poll_table_struct* %70)
  br label %72

72:                                               ; preds = %62, %20
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
