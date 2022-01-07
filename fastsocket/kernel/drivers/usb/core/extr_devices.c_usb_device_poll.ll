; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_device_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_device_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.usb_device_status* }
%struct.usb_device_status = type { i64 }
%struct.poll_table_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@conndiscevcnt = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@deviceconndiscwq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @usb_device_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_device_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.usb_device_status*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = load %struct.usb_device_status*, %struct.usb_device_status** %9, align 8
  store %struct.usb_device_status* %10, %struct.usb_device_status** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @lock_kernel()
  %12 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %13 = icmp ne %struct.usb_device_status* %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.usb_device_status* @kmalloc(i32 8, i32 %15)
  store %struct.usb_device_status* %16, %struct.usb_device_status** %6, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.usb_device_status*, %struct.usb_device_status** %18, align 8
  %20 = icmp ne %struct.usb_device_status* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %23 = call i32 @kfree(%struct.usb_device_status* %22)
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load %struct.usb_device_status*, %struct.usb_device_status** %25, align 8
  store %struct.usb_device_status* %26, %struct.usb_device_status** %6, align 8
  br label %42

27:                                               ; preds = %14
  %28 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %29 = icmp ne %struct.usb_device_status* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 (...) @unlock_kernel()
  %32 = load i32, i32* @POLLIN, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %27
  %34 = load i64, i64* @conndiscevcnt, align 8
  %35 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device_status, %struct.usb_device_status* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  store %struct.usb_device_status* %37, %struct.usb_device_status** %39, align 8
  %40 = load i32, i32* @POLLIN, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %2
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FMODE_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %52 = call i32 @poll_wait(%struct.file* %50, i32* @deviceconndiscwq, %struct.poll_table_struct* %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %55 = getelementptr inbounds %struct.usb_device_status, %struct.usb_device_status* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @conndiscevcnt, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @POLLIN, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i64, i64* @conndiscevcnt, align 8
  %65 = load %struct.usb_device_status*, %struct.usb_device_status** %6, align 8
  %66 = getelementptr inbounds %struct.usb_device_status, %struct.usb_device_status* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = call i32 (...) @unlock_kernel()
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.usb_device_status* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_device_status*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
