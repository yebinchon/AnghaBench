; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_netlink.c_fill_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_netlink.c_fill_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_PHONET = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32)* @fill_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_addr(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifaddrmsg*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %16, i32 %17, i32 %18, i32 %19, i32 32, i32 0)
  store %struct.nlmsghdr* %20, %struct.nlmsghdr** %15, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %22 = icmp eq %struct.nlmsghdr* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %58

26:                                               ; preds = %6
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %28 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %27)
  store %struct.ifaddrmsg* %28, %struct.ifaddrmsg** %14, align 8
  %29 = load i32, i32* @AF_PHONET, align 4
  %30 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %31 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %33 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @IFA_F_PERMANENT, align 4
  %35 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %36 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @RT_SCOPE_LINK, align 4
  %38 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %39 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %44 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* @IFA_LOCAL, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @NLA_PUT_U8(%struct.sk_buff* %45, i32 %46, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %51 = call i32 @nlmsg_end(%struct.sk_buff* %49, %struct.nlmsghdr* %50)
  store i32 %51, i32* %7, align 4
  br label %58

52:                                               ; No predecessors!
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %55 = call i32 @nlmsg_cancel(%struct.sk_buff* %53, %struct.nlmsghdr* %54)
  %56 = load i32, i32* @EMSGSIZE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %26, %23
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
