; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c___neigh_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c___neigh_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_NEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, i32, i32)* @__neigh_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__neigh_notify(%struct.neighbour* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %11 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @dev_net(i32 %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @neigh_nlmsg_size()
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @nlmsg_new(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %45

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @neigh_fill_info(%struct.sk_buff* %23, %struct.neighbour* %24, i32 0, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  br label %45

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @rtnl_notify(%struct.sk_buff* %40, %struct.net* %41, i32 0, i32 %42, i32* null, i32 %43)
  br label %53

45:                                               ; preds = %30, %21
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rtnl_set_sk_err(%struct.net* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %39, %48, %45
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @neigh_nlmsg_size(...) #1

declare dso_local i32 @neigh_fill_info(%struct.sk_buff*, %struct.neighbour*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
