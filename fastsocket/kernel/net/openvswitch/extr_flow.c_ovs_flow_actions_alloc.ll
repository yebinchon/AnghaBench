; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_actions_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_flow_actions_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_actions = type { i64 }

@MAX_ACTIONS_BUFSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sw_flow_actions* @ovs_flow_actions_alloc(i32 %0) #0 {
  %2 = alloca %struct.sw_flow_actions*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw_flow_actions*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_ACTIONS_BUFSIZE, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.sw_flow_actions* @ERR_PTR(i32 %10)
  store %struct.sw_flow_actions* %11, %struct.sw_flow_actions** %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.sw_flow_actions* @kmalloc(i32 %16, i32 %17)
  store %struct.sw_flow_actions* %18, %struct.sw_flow_actions** %4, align 8
  %19 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  %20 = icmp ne %struct.sw_flow_actions* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sw_flow_actions* @ERR_PTR(i32 %23)
  store %struct.sw_flow_actions* %24, %struct.sw_flow_actions** %2, align 8
  br label %29

25:                                               ; preds = %12
  %26 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  %27 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  store %struct.sw_flow_actions* %28, %struct.sw_flow_actions** %2, align 8
  br label %29

29:                                               ; preds = %25, %21, %8
  %30 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %2, align 8
  ret %struct.sw_flow_actions* %30
}

declare dso_local %struct.sw_flow_actions* @ERR_PTR(i32) #1

declare dso_local %struct.sw_flow_actions* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
