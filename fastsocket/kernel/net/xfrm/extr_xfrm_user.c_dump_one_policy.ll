; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_dump_one_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_dump_one_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32 }
%struct.xfrm_dump_info = type { i32, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XFRM_MSG_NEWPOLICY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, i32, i8*)* @dump_one_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_one_policy(%struct.xfrm_policy* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xfrm_dump_info*, align 8
  %11 = alloca %struct.xfrm_userpolicy_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.TYPE_2__, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.xfrm_dump_info*
  store %struct.xfrm_dump_info* %17, %struct.xfrm_dump_info** %10, align 8
  %18 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %19 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %18, i32 0, i32 3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %12, align 8
  %21 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %22 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %21, i32 0, i32 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = call i32 @NETLINK_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %31 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFRM_MSG_NEWPOLICY, align 4
  %34 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %35 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %24, i32 %29, i32 %32, i32 %33, i32 4, i32 %36)
  store %struct.nlmsghdr* %37, %struct.nlmsghdr** %14, align 8
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %39 = icmp eq %struct.nlmsghdr* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %87

43:                                               ; preds = %4
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %45 = call %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr* %44)
  store %struct.xfrm_userpolicy_info* %45, %struct.xfrm_userpolicy_info** %11, align 8
  %46 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %47 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %46, %struct.xfrm_userpolicy_info* %47, i32 %48)
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %52 = call i64 @copy_to_user_tmpl(%struct.xfrm_policy* %50, %struct.sk_buff* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %81

55:                                               ; preds = %43
  %56 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %58 = call i64 @copy_to_user_sec_ctx(%struct.xfrm_policy* %56, %struct.sk_buff* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %81

61:                                               ; preds = %55
  %62 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %63 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %66 = call i64 @copy_to_user_policy_type(i32 %64, %struct.sk_buff* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %81

69:                                               ; preds = %61
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %72 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %71, i32 0, i32 0
  %73 = call i64 @xfrm_mark_put(%struct.sk_buff* %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %79 = call i32 @nlmsg_end(%struct.sk_buff* %77, %struct.nlmsghdr* %78)
  store i32 0, i32* %5, align 4
  br label %87

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %68, %60, %54
  %82 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %83 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %84 = call i32 @nlmsg_cancel(%struct.sk_buff* %82, %struct.nlmsghdr* %83)
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %76, %40
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*, i32) #1

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
