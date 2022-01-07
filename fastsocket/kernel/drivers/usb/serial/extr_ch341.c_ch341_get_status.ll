; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ch341_private = type { i8, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"ch341_get_status()\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CH341_BITS_MODEM_STAT = common dso_local global i8 0, align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ch341_private*)* @ch341_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_get_status(%struct.usb_device* %0, %struct.ch341_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ch341_private* %1, %struct.ch341_private** %5, align 8
  store i32 8, i32* %8, align 4
  %10 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 8, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @ch341_control_in(%struct.usb_device* %19, i32 149, i32 1798, i32 0, i8* %20, i32 8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %53

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  %29 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %30 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %29, i32 0, i32 1
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = xor i32 %35, -1
  %37 = load i8, i8* @CH341_BITS_MODEM_STAT, align 1
  %38 = sext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = trunc i32 %39 to i8
  %41 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %42 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %41, i32 0, i32 0
  store i8 %40, i8* %42, align 8
  %43 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %44 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %46 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %45, i32 0, i32 1
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %52

49:                                               ; preds = %25
  %50 = load i32, i32* @EPROTO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %28
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ch341_control_in(%struct.usb_device*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
