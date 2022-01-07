; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_dump_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_dump_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state_walk = type { i32 }
%struct.xfrm_dump_info = type { i32, i32, %struct.sk_buff*, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@dump_one_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @xfrm_dump_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_dump_sa(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.xfrm_state_walk*, align 8
  %7 = alloca %struct.xfrm_dump_info, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = bitcast i32* %15 to %struct.xfrm_state_walk*
  store %struct.xfrm_state_walk* %16, %struct.xfrm_state_walk** %6, align 8
  %17 = call i32 @BUILD_BUG_ON(i32 0)
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 2
  store %struct.sk_buff* %22, %struct.sk_buff** %23, align 8
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @NLM_F_MULTI, align 4
  %31 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %33 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %2
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %6, align 8
  %44 = call i32 @xfrm_state_walk_init(%struct.xfrm_state_walk* %43, i32 0)
  br label %45

45:                                               ; preds = %38, %2
  %46 = load %struct.net*, %struct.net** %5, align 8
  %47 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %6, align 8
  %48 = load i32, i32* @dump_one_state, align 4
  %49 = call i32 @xfrm_state_walk(%struct.net* %46, %struct.xfrm_state_walk* %47, i32 %48, %struct.xfrm_dump_info* %7)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @xfrm_state_walk_init(%struct.xfrm_state_walk*, i32) #1

declare dso_local i32 @xfrm_state_walk(%struct.net*, %struct.xfrm_state_walk*, i32, %struct.xfrm_dump_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
