; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_polexpire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_polexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_policy = type { i32, i32 }
%struct.km_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_user_polexpire = type { i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_POLEXPIRE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_policy*, i32, %struct.km_event*)* @build_polexpire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_polexpire(%struct.sk_buff* %0, %struct.xfrm_policy* %1, i32 %2, %struct.km_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.km_event*, align 8
  %10 = alloca %struct.xfrm_user_polexpire*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.km_event* %3, %struct.km_event** %9, align 8
  %13 = load %struct.km_event*, %struct.km_event** %9, align 8
  %14 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.km_event*, %struct.km_event** %9, align 8
  %19 = getelementptr inbounds %struct.km_event, %struct.km_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XFRM_MSG_POLEXPIRE, align 4
  %22 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %17, i32 %20, i32 0, i32 %21, i32 8, i32 0)
  store %struct.nlmsghdr* %22, %struct.nlmsghdr** %11, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %24 = icmp eq %struct.nlmsghdr* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %80

28:                                               ; preds = %4
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %30 = call %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr* %29)
  store %struct.xfrm_user_polexpire* %30, %struct.xfrm_user_polexpire** %10, align 8
  %31 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %32 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %33 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %32, i32 0, i32 1
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %31, i32* %33, i32 %34)
  %36 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i64 @copy_to_user_tmpl(%struct.xfrm_policy* %36, %struct.sk_buff* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %74

41:                                               ; preds = %28
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i64 @copy_to_user_sec_ctx(%struct.xfrm_policy* %42, %struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %74

47:                                               ; preds = %41
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %49 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i64 @copy_to_user_policy_type(i32 %50, %struct.sk_buff* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %74

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %58 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %57, i32 0, i32 0
  %59 = call i64 @xfrm_mark_put(%struct.sk_buff* %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %73

62:                                               ; preds = %55
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %69 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %72 = call i32 @nlmsg_end(%struct.sk_buff* %70, %struct.nlmsghdr* %71)
  store i32 %72, i32* %5, align 4
  br label %80

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %54, %46, %40
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %77 = call i32 @nlmsg_cancel(%struct.sk_buff* %75, %struct.nlmsghdr* %76)
  %78 = load i32, i32* @EMSGSIZE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %62, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, i32*, i32) #1

declare dso_local i64 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i64 @copy_to_user_sec_ctx(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i64 @copy_to_user_policy_type(i32, %struct.sk_buff*) #1

declare dso_local i64 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
