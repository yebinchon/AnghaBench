; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev = type { i32, i32, %struct.rfcomm_dlc* }
%struct.rfcomm_dlc = type { %struct.rfcomm_dev* }

@.str = private unnamed_addr constant [14 x i8] c"dev %p dlc %p\00", align 1
@rfcomm_tty_driver = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dev*)* @rfcomm_dev_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_destruct(%struct.rfcomm_dev* %0) #0 {
  %2 = alloca %struct.rfcomm_dev*, align 8
  %3 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_dev* %0, %struct.rfcomm_dev** %2, align 8
  %4 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %4, i32 0, i32 2
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %5, align 8
  store %struct.rfcomm_dlc* %6, %struct.rfcomm_dlc** %3, align 8
  %7 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %8 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dev* %7, %struct.rfcomm_dlc* %8)
  %10 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %10, i32 0, i32 1
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %18 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %17)
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %20 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %19, i32 0, i32 0
  %21 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %20, align 8
  %22 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %23 = icmp eq %struct.rfcomm_dev* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %26 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %25, i32 0, i32 0
  store %struct.rfcomm_dev* null, %struct.rfcomm_dev** %26, align 8
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %29 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %28)
  %30 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %31 = call i32 @rfcomm_dlc_put(%struct.rfcomm_dlc* %30)
  %32 = load i32, i32* @rfcomm_tty_driver, align 4
  %33 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %34 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @tty_unregister_device(i32 %32, i32 %35)
  %37 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %38 = call i32 @kfree(%struct.rfcomm_dev* %37)
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = call i32 @module_put(i32 %39)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dev*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_put(%struct.rfcomm_dlc*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @kfree(%struct.rfcomm_dev*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
