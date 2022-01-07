; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlmsgerr = type { i32, i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netlink_ack(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlmsgerr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 8, i64* %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %19 = call i64 @nlmsg_len(%struct.nlmsghdr* %18)
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sk_buff* @nlmsg_new(i64 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @sock_net(%struct.TYPE_4__* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @NETLINK_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.sock* @netlink_lookup(i32 %32, i32 %37, i32 %42)
  store %struct.sock* %43, %struct.sock** %11, align 8
  %44 = load %struct.sock*, %struct.sock** %11, align 8
  %45 = icmp ne %struct.sock* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %28
  %47 = load i32, i32* @ENOBUFS, align 4
  %48 = load %struct.sock*, %struct.sock** %11, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %51, align 8
  %53 = load %struct.sock*, %struct.sock** %11, align 8
  %54 = call i32 %52(%struct.sock* %53)
  %55 = load %struct.sock*, %struct.sock** %11, align 8
  %56 = call i32 @sock_put(%struct.sock* %55)
  br label %57

57:                                               ; preds = %46, %28
  br label %102

58:                                               ; preds = %22
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @NETLINK_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %66 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NLMSG_ERROR, align 4
  %69 = load i64, i64* %10, align 8
  %70 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %59, i32 %64, i32 %67, i32 %68, i64 %69, i32 0)
  store %struct.nlmsghdr* %70, %struct.nlmsghdr** %8, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %72 = call %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr* %71)
  store %struct.nlmsgerr* %72, %struct.nlmsgerr** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.nlmsgerr*, %struct.nlmsgerr** %9, align 8
  %75 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.nlmsgerr*, %struct.nlmsgerr** %9, align 8
  %77 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %76, i32 0, i32 1
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %58
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %83 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  br label %87

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %86, %81
  %88 = phi i64 [ %85, %81 ], [ 8, %86 ]
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memcpy(i32* %77, %struct.nlmsghdr* %78, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @NETLINK_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MSG_DONTWAIT, align 4
  %101 = call i32 @netlink_unicast(%struct.TYPE_4__* %93, %struct.sk_buff* %94, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %87, %57
  ret void
}

declare dso_local i64 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local %struct.sock* @netlink_lookup(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.TYPE_4__*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i64, i32) #1

declare dso_local %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @netlink_unicast(%struct.TYPE_4__*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
