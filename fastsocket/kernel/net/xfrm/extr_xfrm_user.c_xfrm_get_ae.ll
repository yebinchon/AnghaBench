; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_get_ae.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_get_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.km_event = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_aevent_id = type { i32, %struct.xfrm_usersa_id }
%struct.xfrm_usersa_id = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_get_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_get_ae(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.km_event, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfrm_mark, align 4
  %15 = alloca %struct.xfrm_aevent_id*, align 8
  %16 = alloca %struct.xfrm_usersa_id*, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = call %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.xfrm_aevent_id* %23, %struct.xfrm_aevent_id** %15, align 8
  %24 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %15, align 8
  %25 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %24, i32 0, i32 1
  store %struct.xfrm_usersa_id* %25, %struct.xfrm_usersa_id** %16, align 8
  %26 = call i32 (...) @xfrm_aevent_msgsize()
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @nlmsg_new(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %99

34:                                               ; preds = %3
  %35 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %36 = call i32 @xfrm_mark_get(%struct.nlattr** %35, %struct.xfrm_mark* %14)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.net*, %struct.net** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %40 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %39, i32 0, i32 3
  %41 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %42 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %45 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %48 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net* %37, i32 %38, i32* %40, i32 %43, i32 %46, i32 %49)
  store %struct.xfrm_state* %50, %struct.xfrm_state** %9, align 8
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %52 = icmp eq %struct.xfrm_state* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @ESRCH, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %99

58:                                               ; preds = %34
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %15, align 8
  %63 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %68 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %72 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %77 = call i64 @build_aevent(%struct.sk_buff* %75, %struct.xfrm_state* %76, %struct.km_event* %12)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %58
  %80 = call i32 (...) @BUG()
  br label %81

81:                                               ; preds = %79, %58
  %82 = load %struct.net*, %struct.net** %8, align 8
  %83 = getelementptr inbounds %struct.net, %struct.net* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @NETLINK_CB(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nlmsg_unicast(i32 %85, %struct.sk_buff* %86, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %94 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_bh(i32* %94)
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %97 = call i32 @xfrm_state_put(%struct.xfrm_state* %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %81, %53, %31
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_aevent_msgsize(...) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @build_aevent(%struct.sk_buff*, %struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
