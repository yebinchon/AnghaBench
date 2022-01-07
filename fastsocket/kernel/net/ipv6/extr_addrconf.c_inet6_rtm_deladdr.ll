; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_rtm_deladdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_rtm_deladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrmsg = type { i32, i32 }
%struct.in6_addr = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @inet6_rtm_deladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_deladdr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load i32, i32* @IFA_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %25 = load i32, i32* @IFA_MAX, align 4
  %26 = load i32, i32* @ifa_ipv6_policy, align 4
  %27 = call i32 @nlmsg_parse(%struct.nlmsghdr* %24, i32 8, %struct.nlattr** %23, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %34 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.ifaddrmsg* %34, %struct.ifaddrmsg** %9, align 8
  %35 = load i64, i64* @IFA_ADDRESS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = load i64, i64* @IFA_LOCAL, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call %struct.in6_addr* @extract_addr(%struct.nlattr* %37, %struct.nlattr* %40)
  store %struct.in6_addr* %41, %struct.in6_addr** %12, align 8
  %42 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %43 = icmp eq %struct.in6_addr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %57

47:                                               ; preds = %32
  %48 = load %struct.net*, %struct.net** %8, align 8
  %49 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %50 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %53 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %54 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @inet6_addr_del(%struct.net* %48, i32 %51, %struct.in6_addr* %52, i32 %55)
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %57

57:                                               ; preds = %47, %44, %30
  %58 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.in6_addr* @extract_addr(%struct.nlattr*, %struct.nlattr*) #1

declare dso_local i32 @inet6_addr_del(%struct.net*, i32, %struct.in6_addr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
