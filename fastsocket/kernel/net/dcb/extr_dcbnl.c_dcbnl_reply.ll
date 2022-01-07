; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dcbmsg = type { i64, i32, i32 }
%struct.nlmsghdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @dcbnl_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_reply(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.dcbmsg*, align 8
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @nlmsg_new(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %16, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* %19, align 4
  store i32 %28, i32* %8, align 4
  br label %71

29:                                               ; preds = %7
  %30 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %30, i32 %31, i32 %32, i32 %33, i32 16, i32 %34)
  store %struct.nlmsghdr* %35, %struct.nlmsghdr** %18, align 8
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %37 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %36)
  store %struct.dcbmsg* %37, %struct.dcbmsg** %17, align 8
  %38 = load i32, i32* @AF_UNSPEC, align 4
  %39 = load %struct.dcbmsg*, %struct.dcbmsg** %17, align 8
  %40 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.dcbmsg*, %struct.dcbmsg** %17, align 8
  %43 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dcbmsg*, %struct.dcbmsg** %17, align 8
  %45 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @nla_put_u8(%struct.sk_buff* %46, i32 %47, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %29
  br label %67

53:                                               ; preds = %29
  %54 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %55 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %56 = call i32 @nlmsg_end(%struct.sk_buff* %54, %struct.nlmsghdr* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @rtnl_unicast(%struct.sk_buff* %57, i32* @init_net, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %71

65:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %71

66:                                               ; No predecessors!
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %65, %62, %27
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
