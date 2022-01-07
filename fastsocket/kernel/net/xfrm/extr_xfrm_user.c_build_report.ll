; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_selector = type { i32 }
%struct.xfrm_user_report = type { i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_REPORT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_COADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.xfrm_selector*, i32*)* @build_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_report(%struct.sk_buff* %0, i32 %1, %struct.xfrm_selector* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_selector*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfrm_user_report*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xfrm_selector* %2, %struct.xfrm_selector** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* @XFRM_MSG_REPORT, align 4
  %14 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %12, i32 0, i32 0, i32 %13, i32 8, i32 0)
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %11, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %16 = icmp eq %struct.nlmsghdr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %22 = call %struct.xfrm_user_report* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.xfrm_user_report* %22, %struct.xfrm_user_report** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.xfrm_user_report*, %struct.xfrm_user_report** %10, align 8
  %25 = getelementptr inbounds %struct.xfrm_user_report, %struct.xfrm_user_report* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xfrm_user_report*, %struct.xfrm_user_report** %10, align 8
  %27 = getelementptr inbounds %struct.xfrm_user_report, %struct.xfrm_user_report* %26, i32 0, i32 0
  %28 = load %struct.xfrm_selector*, %struct.xfrm_selector** %8, align 8
  %29 = call i32 @memcpy(i32* %27, %struct.xfrm_selector* %28, i32 4)
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @XFRMA_COADDR, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @NLA_PUT(%struct.sk_buff* %33, i32 %34, i32 4, i32* %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %40 = call i32 @nlmsg_end(%struct.sk_buff* %38, %struct.nlmsghdr* %39)
  store i32 %40, i32* %5, align 4
  br label %47

41:                                               ; No predecessors!
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %44 = call i32 @nlmsg_cancel(%struct.sk_buff* %42, %struct.nlmsghdr* %43)
  %45 = load i32, i32* @EMSGSIZE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %37, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_report* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.xfrm_selector*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
