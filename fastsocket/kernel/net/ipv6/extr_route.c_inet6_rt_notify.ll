; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_inet6_rt_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_inet6_rt_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.nl_info = type { %struct.TYPE_2__*, i32, %struct.net* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV6_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet6_rt_notify(i32 %0, %struct.rt6_info* %1, %struct.nl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt6_info*, align 8
  %6 = alloca %struct.nl_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rt6_info* %1, %struct.rt6_info** %5, align 8
  store %struct.nl_info* %2, %struct.nl_info** %6, align 8
  %11 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %12 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %11, i32 0, i32 2
  %13 = load %struct.net*, %struct.net** %12, align 8
  store %struct.net* %13, %struct.net** %8, align 8
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %17 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %22 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  store i32 %28, i32* %9, align 4
  %29 = call i32 (...) @rt6_nlmsg_size()
  %30 = call i32 (...) @gfp_any()
  %31 = call %struct.sk_buff* @nlmsg_new(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %68

35:                                               ; preds = %27
  %36 = load %struct.net*, %struct.net** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %41 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @rt6_fill_node(%struct.net* %36, %struct.sk_buff* %37, %struct.rt6_info* %38, i32* null, i32* null, i32 0, i32 %39, i32 %42, i32 %43, i32 0, i32 0, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %68

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %60 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @RTNLGRP_IPV6_ROUTE, align 4
  %63 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %64 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 (...) @gfp_any()
  %67 = call i32 @rtnl_notify(%struct.sk_buff* %57, %struct.net* %58, i32 %61, i32 %62, %struct.TYPE_2__* %65, i32 %66)
  br label %76

68:                                               ; preds = %47, %34
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.net*, %struct.net** %8, align 8
  %73 = load i32, i32* @RTNLGRP_IPV6_ROUTE, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @rtnl_set_sk_err(%struct.net* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %56, %71, %68
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rt6_nlmsg_size(...) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @rt6_fill_node(%struct.net*, %struct.sk_buff*, %struct.rt6_info*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
