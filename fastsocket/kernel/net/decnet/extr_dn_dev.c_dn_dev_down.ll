; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dn_dev* }
%struct.dn_dev = type { %struct.dn_ifaddr* }
%struct.dn_ifaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_dev_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dn_dev*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  store %struct.dn_dev* %7, %struct.dn_dev** %3, align 8
  %8 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %9 = icmp eq %struct.dn_dev* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %14 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %13, i32 0, i32 0
  %15 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  store %struct.dn_ifaddr* %15, %struct.dn_ifaddr** %4, align 8
  %16 = icmp ne %struct.dn_ifaddr* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %19 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %20 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %19, i32 0, i32 0
  %21 = call i32 @dn_dev_del_ifa(%struct.dn_dev* %18, %struct.dn_ifaddr** %20, i32 0)
  %22 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %23 = call i32 @dn_dev_free_ifa(%struct.dn_ifaddr* %22)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @dn_dev_delete(%struct.net_device* %25)
  br label %27

27:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @dn_dev_del_ifa(%struct.dn_dev*, %struct.dn_ifaddr**, i32) #1

declare dso_local i32 @dn_dev_free_ifa(%struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_delete(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
