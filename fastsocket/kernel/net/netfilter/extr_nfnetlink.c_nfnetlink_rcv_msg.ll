; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink.c_nfnetlink_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink.c_nfnetlink_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32 }
%struct.nfnl_callback = type { i32 (i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* }
%struct.nlattr = type { i32 }
%struct.nfnetlink_subsystem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nfnl = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @nfnetlink_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnetlink_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.nfnl_callback*, align 8
  %7 = alloca %struct.nfnetlink_subsystem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @CAP_NET_ADMIN, align 4
  %19 = call i64 @security_netlink_recv(%struct.sk_buff* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %121

24:                                               ; preds = %2
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @NLMSG_LENGTH(i32 4)
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %121

31:                                               ; preds = %24
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %118, %31
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.nfnetlink_subsystem* @nfnetlink_get_subsys(i32 %36)
  store %struct.nfnetlink_subsystem* %37, %struct.nfnetlink_subsystem** %7, align 8
  %38 = load %struct.nfnetlink_subsystem*, %struct.nfnetlink_subsystem** %7, align 8
  %39 = icmp ne %struct.nfnetlink_subsystem* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %121

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.nfnetlink_subsystem*, %struct.nfnetlink_subsystem** %7, align 8
  %46 = call %struct.nfnl_callback* @nfnetlink_find_client(i32 %44, %struct.nfnetlink_subsystem* %45)
  store %struct.nfnl_callback* %46, %struct.nfnl_callback** %6, align 8
  %47 = load %struct.nfnl_callback*, %struct.nfnl_callback** %6, align 8
  %48 = icmp ne %struct.nfnl_callback* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %121

52:                                               ; preds = %43
  %53 = call i32 @NLMSG_SPACE(i32 4)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %55 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @NFNL_MSG_TYPE(i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load %struct.nfnetlink_subsystem*, %struct.nfnetlink_subsystem** %7, align 8
  %59 = getelementptr inbounds %struct.nfnetlink_subsystem, %struct.nfnetlink_subsystem* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %12, align 8
  %68 = alloca %struct.nlattr*, i64 %66, align 16
  store i64 %66, i64* %13, align 8
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %70 = bitcast %struct.nlmsghdr* %69 to i8*
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = bitcast i8* %73 to %struct.nlattr*
  store %struct.nlattr* %74, %struct.nlattr** %14, align 8
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %76 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load %struct.nfnetlink_subsystem*, %struct.nfnetlink_subsystem** %7, align 8
  %83 = getelementptr inbounds %struct.nfnetlink_subsystem, %struct.nfnetlink_subsystem* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.nfnetlink_subsystem*, %struct.nfnetlink_subsystem** %7, align 8
  %92 = getelementptr inbounds %struct.nfnetlink_subsystem, %struct.nfnetlink_subsystem* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nla_parse(%struct.nlattr** %68, i32 %88, %struct.nlattr* %89, i32 %90, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %52
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %118

103:                                              ; preds = %52
  %104 = load %struct.nfnl_callback*, %struct.nfnl_callback** %6, align 8
  %105 = getelementptr inbounds %struct.nfnl_callback, %struct.nfnl_callback* %104, i32 0, i32 0
  %106 = load i32 (i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)*, i32 (i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)** %105, align 8
  %107 = load i32, i32* @nfnl, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %110 = call i32 %106(i32 %107, %struct.sk_buff* %108, %struct.nlmsghdr* %109, %struct.nlattr** %68)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  store i32 2, i32* %16, align 4
  br label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %116, %115, %101
  %119 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %16, align 4
  switch i32 %120, label %123 [
    i32 1, label %121
    i32 2, label %35
  ]

121:                                              ; preds = %118, %49, %40, %30, %21
  %122 = load i32, i32* %3, align 4
  ret i32 %122

123:                                              ; preds = %118
  unreachable
}

declare dso_local i64 @security_netlink_recv(%struct.sk_buff*, i32) #1

declare dso_local i64 @NLMSG_LENGTH(i32) #1

declare dso_local %struct.nfnetlink_subsystem* @nfnetlink_get_subsys(i32) #1

declare dso_local %struct.nfnl_callback* @nfnetlink_find_client(i32, %struct.nfnetlink_subsystem*) #1

declare dso_local i32 @NLMSG_SPACE(i32) #1

declare dso_local i64 @NFNL_MSG_TYPE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, %struct.nlattr*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
