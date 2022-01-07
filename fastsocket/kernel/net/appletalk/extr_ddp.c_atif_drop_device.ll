; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atif_drop_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atif_drop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { %struct.atalk_iface*, %struct.net_device* }
%struct.net_device = type { i32* }

@atalk_interfaces = common dso_local global %struct.atalk_iface* null, align 8
@atalk_interfaces_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @atif_drop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atif_drop_device(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atalk_iface**, align 8
  %4 = alloca %struct.atalk_iface*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.atalk_iface** @atalk_interfaces, %struct.atalk_iface*** %3, align 8
  %5 = call i32 @write_lock_bh(i32* @atalk_interfaces_lock)
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.atalk_iface**, %struct.atalk_iface*** %3, align 8
  %8 = load %struct.atalk_iface*, %struct.atalk_iface** %7, align 8
  store %struct.atalk_iface* %8, %struct.atalk_iface** %4, align 8
  %9 = icmp ne %struct.atalk_iface* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %12 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = icmp eq %struct.net_device* %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %18 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %17, i32 0, i32 0
  %19 = load %struct.atalk_iface*, %struct.atalk_iface** %18, align 8
  %20 = load %struct.atalk_iface**, %struct.atalk_iface*** %3, align 8
  store %struct.atalk_iface* %19, %struct.atalk_iface** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @dev_put(%struct.net_device* %21)
  %23 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %24 = call i32 @kfree(%struct.atalk_iface* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %30

27:                                               ; preds = %10
  %28 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %29 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %28, i32 0, i32 0
  store %struct.atalk_iface** %29, %struct.atalk_iface*** %3, align 8
  br label %30

30:                                               ; preds = %27, %16
  br label %6

31:                                               ; preds = %6
  %32 = call i32 @write_unlock_bh(i32* @atalk_interfaces_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.atalk_iface*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
