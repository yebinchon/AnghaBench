; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.km_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.xfrm_user_expire = type { i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_EXPIRE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.km_event*)* @build_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_expire(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca %struct.xfrm_user_expire*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.km_event*, %struct.km_event** %7, align 8
  %12 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XFRM_MSG_EXPIRE, align 4
  %15 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %10, i32 %13, i32 0, i32 %14, i32 8, i32 0)
  store %struct.nlmsghdr* %15, %struct.nlmsghdr** %9, align 8
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %17 = icmp eq %struct.nlmsghdr* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %23 = call %struct.xfrm_user_expire* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.xfrm_user_expire* %23, %struct.xfrm_user_expire** %8, align 8
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %25 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %8, align 8
  %26 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %25, i32 0, i32 1
  %27 = call i32 @copy_to_user_state(%struct.xfrm_state* %24, i32* %26)
  %28 = load %struct.km_event*, %struct.km_event** %7, align 8
  %29 = getelementptr inbounds %struct.km_event, %struct.km_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %8, align 8
  %36 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 0
  %40 = call i64 @xfrm_mark_put(%struct.sk_buff* %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %47

43:                                               ; preds = %21
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %46 = call i32 @nlmsg_end(%struct.sk_buff* %44, %struct.nlmsghdr* %45)
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %43, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_expire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_to_user_state(%struct.xfrm_state*, i32*) #1

declare dso_local i64 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
