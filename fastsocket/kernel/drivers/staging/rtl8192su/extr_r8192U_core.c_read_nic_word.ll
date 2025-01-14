; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_read_nic_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_read_nic_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@RTL8187_REQ_GET_REGS = common dso_local global i32 0, align 4
@RTL8187_REQT_READ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"read_nic_word TimeOut! status:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_nic_word(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.usb_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @ieee80211_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.r8192_priv*
  store %struct.r8192_priv* %11, %struct.r8192_priv** %7, align 8
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %17 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %16, i32 0)
  %18 = load i32, i32* @RTL8187_REQ_GET_REGS, align 4
  %19 = load i32, i32* @RTL8187_REQT_READ, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = call i32 @usb_control_msg(%struct.usb_device* %15, i32 %17, i32 %18, i32 %19, i32 %20, i32 0, i32* %5, i32 2, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
