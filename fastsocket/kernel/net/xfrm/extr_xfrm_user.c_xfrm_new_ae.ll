; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_new_ae.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_new_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.km_event = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_aevent_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFRMA_REPLAY_VAL = common dso_local global i64 0, align 8
@XFRMA_LTIME_VAL = common dso_local global i64 0, align 8
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_AE_CU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_new_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_new_ae(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.km_event, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfrm_mark, align 4
  %14 = alloca %struct.xfrm_aevent_id*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = call %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr* %23)
  store %struct.xfrm_aevent_id* %24, %struct.xfrm_aevent_id** %14, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @XFRMA_REPLAY_VAL, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  store %struct.nlattr* %28, %struct.nlattr** %15, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = load i64, i64* @XFRMA_LTIME_VAL, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  store %struct.nlattr* %32, %struct.nlattr** %16, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %114

40:                                               ; preds = %35, %3
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %42 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NLM_F_REPLACE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %114

49:                                               ; preds = %40
  %50 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %51 = call i32 @xfrm_mark_get(%struct.nlattr** %50, %struct.xfrm_mark* %13)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.net*, %struct.net** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %55 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %58 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %62 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %66 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net* %52, i32 %53, i32* %56, i32 %60, i32 %64, i32 %68)
  store %struct.xfrm_state* %69, %struct.xfrm_state** %9, align 8
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %71 = icmp eq %struct.xfrm_state* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %49
  %73 = load i32, i32* @ESRCH, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %114

75:                                               ; preds = %49
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @XFRM_STATE_VALID, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %110

83:                                               ; preds = %75
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %85 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %88 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %89 = call i32 @xfrm_update_ae_params(%struct.xfrm_state* %87, %struct.nlattr** %88)
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock_bh(i32* %91)
  %93 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %94 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %98 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %102 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @XFRM_AE_CU, align 4
  %106 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %109 = call i32 @km_state_notify(%struct.xfrm_state* %108, %struct.km_event* %10)
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %83, %82
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %112 = call i32 @xfrm_state_put(%struct.xfrm_state* %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %72, %47, %38
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xfrm_update_ae_params(%struct.xfrm_state*, %struct.nlattr**) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
