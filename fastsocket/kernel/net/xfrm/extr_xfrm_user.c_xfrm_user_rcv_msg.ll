; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_user_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_user_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_link = type { i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)*, i32, i32* }
%struct.sk_buff.0 = type opaque
%struct.nlmsghdr.1 = type opaque
%struct.nlattr.2 = type opaque
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_dump_control = type { i32, i32* }
%struct.nlattr = type { i32 }

@XFRMA_MAX = common dso_local global i32 0, align 4
@XFRM_MSG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_MSG_BASE = common dso_local global i32 0, align 4
@xfrm_dispatch = common dso_local global %struct.xfrm_link* null, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XFRM_MSG_GETSA = common dso_local global i32 0, align 4
@XFRM_MSG_GETPOLICY = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@xfrm_msg_min = common dso_local global i32* null, align 8
@xfrma_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @xfrm_user_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_user_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfrm_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_dump_control, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load i32, i32* @XFRMA_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @XFRM_MSG_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

32:                                               ; preds = %2
  %33 = load i32, i32* @XFRM_MSG_BASE, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.xfrm_link*, %struct.xfrm_link** @xfrm_dispatch, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %36, i64 %38
  store %struct.xfrm_link* %39, %struct.xfrm_link** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @CAP_NET_ADMIN, align 4
  %42 = call i64 @security_netlink_recv(%struct.sk_buff* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @XFRM_MSG_GETSA, align 4
  %50 = load i32, i32* @XFRM_MSG_BASE, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @XFRM_MSG_GETPOLICY, align 4
  %56 = load i32, i32* @XFRM_MSG_BASE, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %53, %47
  %60 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %61 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NLM_F_DUMP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = load %struct.xfrm_link*, %struct.xfrm_link** %9, align 8
  %68 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %13, i32 0, i32 0
  %76 = load %struct.xfrm_link*, %struct.xfrm_link** %9, align 8
  %77 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %75, align 8
  %79 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %13, i32 0, i32 1
  %80 = load %struct.xfrm_link*, %struct.xfrm_link** %9, align 8
  %81 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %79, align 8
  %83 = load %struct.net*, %struct.net** %6, align 8
  %84 = getelementptr inbounds %struct.net, %struct.net* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %89 = call i32 @netlink_dump_start(i32 %86, %struct.sk_buff* %87, %struct.nlmsghdr* %88, %struct.netlink_dump_control* %13)
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

90:                                               ; preds = %59, %53
  %91 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %92 = load i32*, i32** @xfrm_msg_min, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @XFRMA_MAX, align 4
  %98 = load i32, i32* @xfrma_policy, align 4
  %99 = call i32 @nlmsg_parse(%struct.nlmsghdr* %91, i32 %96, %struct.nlattr** %22, i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

104:                                              ; preds = %90
  %105 = load %struct.xfrm_link*, %struct.xfrm_link** %9, align 8
  %106 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %105, i32 0, i32 0
  %107 = load i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)*, i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)** %106, align 8
  %108 = icmp eq i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

112:                                              ; preds = %104
  %113 = load %struct.xfrm_link*, %struct.xfrm_link** %9, align 8
  %114 = getelementptr inbounds %struct.xfrm_link, %struct.xfrm_link* %113, i32 0, i32 0
  %115 = load i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)*, i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*, %struct.nlattr.2**)** %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = bitcast %struct.sk_buff* %116 to %struct.sk_buff.0*
  %118 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %119 = bitcast %struct.nlmsghdr* %118 to %struct.nlmsghdr.1*
  %120 = bitcast %struct.nlattr** %22 to %struct.nlattr.2**
  %121 = call i32 %115(%struct.sk_buff.0* %117, %struct.nlmsghdr.1* %119, %struct.nlattr.2** %120)
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %122

122:                                              ; preds = %112, %109, %102, %74, %71, %44, %29
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @security_netlink_recv(%struct.sk_buff*, i32) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
