; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c___vlan_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c___vlan_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"8021q: failed to change proc name for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"8021q: failed to add proc entry for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @__vlan_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vlan_device_event(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  switch i64 %5, label %31 [
    i64 130, label %6
    i64 129, label %18
    i64 128, label %28
  ]

6:                                                ; preds = %2
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @vlan_proc_rem_dev(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @vlan_proc_add_dev(%struct.net_device* %9)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %6
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @vlan_proc_add_dev(%struct.net_device* %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @vlan_proc_rem_dev(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %2, %28, %27, %17
  ret void
}

declare dso_local i32 @vlan_proc_rem_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_proc_add_dev(%struct.net_device*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
