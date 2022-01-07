; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.vlan_net = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vlan_net_id = common dso_local global i32 0, align 4
@VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @vlan_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_init_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlan_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vlan_net* @kzalloc(i32 4, i32 %8)
  store %struct.vlan_net* %9, %struct.vlan_net** %5, align 8
  %10 = load %struct.vlan_net*, %struct.vlan_net** %5, align 8
  %11 = icmp eq %struct.vlan_net* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load i32, i32* @vlan_net_id, align 4
  %16 = load %struct.vlan_net*, %struct.vlan_net** %5, align 8
  %17 = call i32 @net_assign_generic(%struct.net* %14, i32 %15, %struct.vlan_net* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %32

21:                                               ; preds = %13
  %22 = load i32, i32* @VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD, align 4
  %23 = load %struct.vlan_net*, %struct.vlan_net** %5, align 8
  %24 = getelementptr inbounds %struct.vlan_net, %struct.vlan_net* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = call i32 @vlan_proc_init(%struct.net* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %37

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.vlan_net*, %struct.vlan_net** %5, align 8
  %34 = call i32 @kfree(%struct.vlan_net* %33)
  br label %35

35:                                               ; preds = %32, %12
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.vlan_net* @kzalloc(i32, i32) #1

declare dso_local i32 @net_assign_generic(%struct.net*, i32, %struct.vlan_net*) #1

declare dso_local i32 @vlan_proc_init(%struct.net*) #1

declare dso_local i32 @kfree(%struct.vlan_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
