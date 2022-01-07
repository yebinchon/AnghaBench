; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_semantics.c_rtmsg_fib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_semantics.c_rtmsg_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_alias = type { i32, i32, i32, i32 }
%struct.nl_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV4_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtmsg_fib(i32 %0, i32 %1, %struct.fib_alias* %2, i32 %3, i32 %4, %struct.nl_info* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fib_alias*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nl_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.fib_alias* %2, %struct.fib_alias** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nl_info* %5, %struct.nl_info** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %19 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %24 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 0, %28 ]
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* @ENOBUFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %17, align 4
  %33 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %34 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fib_nlmsg_size(i32 %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.sk_buff* @nlmsg_new(i32 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %15, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %40 = icmp eq %struct.sk_buff* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %91

42:                                               ; preds = %29
  %43 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %44 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %45 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %51 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %54 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %59 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %62 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @fib_dump_info(%struct.sk_buff* %43, i32 %46, i32 %47, i32 %48, i32 %49, i32 %52, i32 %55, i32 %56, i32 %57, i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %42
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %91

77:                                               ; preds = %42
  %78 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %79 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %80 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %83 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RTNLGRP_IPV4_ROUTE, align 4
  %86 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %87 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32 @rtnl_notify(%struct.sk_buff* %78, i32 %81, i32 %84, i32 %85, %struct.TYPE_2__* %88, i32 %89)
  br label %101

91:                                               ; preds = %68, %41
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %96 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RTNLGRP_IPV4_ROUTE, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @rtnl_set_sk_err(i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %77, %94, %91
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @fib_nlmsg_size(i32) #1

declare dso_local i32 @fib_dump_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
