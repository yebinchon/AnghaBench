; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_policy_netlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_policy_netlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.xfrm_dump_info = type { i64, i32, %struct.sk_buff*, %struct.sk_buff* }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.xfrm_policy*, i32, i32)* @xfrm_policy_netlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xfrm_policy_netlink(%struct.sk_buff* %0, %struct.xfrm_policy* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_dump_info, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %11, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  br label %38

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %10, i32 0, i32 3
  store %struct.sk_buff* %22, %struct.sk_buff** %23, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %10, i32 0, i32 2
  store %struct.sk_buff* %24, %struct.sk_buff** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %10, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @dump_one_policy(%struct.xfrm_policy* %29, i32 %30, i32 0, %struct.xfrm_dump_info* %10)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %38

36:                                               ; preds = %21
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  br label %38

38:                                               ; preds = %36, %33, %17
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %39
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @dump_one_policy(%struct.xfrm_policy*, i32, i32, %struct.xfrm_dump_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
