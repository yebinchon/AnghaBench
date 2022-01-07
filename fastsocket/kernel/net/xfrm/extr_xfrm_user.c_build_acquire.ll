; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfrm_tmpl = type { i32, i32, i32 }
%struct.xfrm_policy = type { i32, i32 }
%struct.xfrm_user_acquire = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_ACQUIRE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*, i32)* @build_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_acquire(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.xfrm_tmpl* %2, %struct.xfrm_policy* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.xfrm_tmpl*, align 8
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_user_acquire*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %8, align 8
  store %struct.xfrm_tmpl* %2, %struct.xfrm_tmpl** %9, align 8
  store %struct.xfrm_policy* %3, %struct.xfrm_policy** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = call i32 (...) @xfrm_get_acqseq()
  store i32 %15, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* @XFRM_MSG_ACQUIRE, align 4
  %18 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %16, i32 0, i32 0, i32 %17, i32 32, i32 0)
  store %struct.nlmsghdr* %18, %struct.nlmsghdr** %13, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %20 = icmp eq %struct.nlmsghdr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %106

24:                                               ; preds = %5
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %26 = call %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.xfrm_user_acquire* %26, %struct.xfrm_user_acquire** %12, align 8
  %27 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %28 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %27, i32 0, i32 7
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 3
  %31 = call i32 @memcpy(i32* %28, i32* %30, i32 4)
  %32 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %33 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %32, i32 0, i32 6
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @memcpy(i32* %33, i32* %36, i32 4)
  %38 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %39 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %38, i32 0, i32 5
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 1
  %42 = call i32 @memcpy(i32* %39, i32* %41, i32 4)
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %44 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %45 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %44, i32 0, i32 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %43, i32* %45, i32 %46)
  %48 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %9, align 8
  %49 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %52 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %9, align 8
  %54 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %57 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %9, align 8
  %59 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %62 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %12, align 8
  %68 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 4
  %69 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call i64 @copy_to_user_tmpl(%struct.xfrm_policy* %69, %struct.sk_buff* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %24
  br label %100

74:                                               ; preds = %24
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i64 @copy_to_user_state_sec_ctx(%struct.xfrm_state* %75, %struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %100

80:                                               ; preds = %74
  %81 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %82 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i64 @copy_to_user_policy_type(i32 %83, %struct.sk_buff* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %100

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %91 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %90, i32 0, i32 0
  %92 = call i64 @xfrm_mark_put(%struct.sk_buff* %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %99

95:                                               ; preds = %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %98 = call i32 @nlmsg_end(%struct.sk_buff* %96, %struct.nlmsghdr* %97)
  store i32 %98, i32* %6, align 4
  br label %106

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %87, %79, %73
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %103 = call i32 @nlmsg_cancel(%struct.sk_buff* %101, %struct.nlmsghdr* %102)
  %104 = load i32, i32* @EMSGSIZE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %100, %95, %21
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @xfrm_get_acqseq(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, i32*, i32) #1

declare dso_local i64 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i64 @copy_to_user_state_sec_ctx(%struct.xfrm_state*, %struct.sk_buff*) #1

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
