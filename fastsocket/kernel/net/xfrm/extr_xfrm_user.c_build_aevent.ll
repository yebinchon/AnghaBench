; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_aevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_aevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.km_event = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.xfrm_aevent_id = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_NEWAE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_REPLAY_VAL = common dso_local global i32 0, align 4
@XFRMA_LTIME_VAL = common dso_local global i32 0, align 4
@XFRM_AE_RTHR = common dso_local global i32 0, align 4
@XFRMA_REPLAY_THRESH = common dso_local global i32 0, align 4
@XFRM_AE_ETHR = common dso_local global i32 0, align 4
@XFRMA_ETIMER_THRESH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.km_event*)* @build_aevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_aevent(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca %struct.xfrm_aevent_id*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.km_event*, %struct.km_event** %7, align 8
  %12 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.km_event*, %struct.km_event** %7, align 8
  %15 = getelementptr inbounds %struct.km_event, %struct.km_event* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XFRM_MSG_NEWAE, align 4
  %18 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %10, i32 %13, i32 %16, i32 %17, i32 28, i32 0)
  store %struct.nlmsghdr* %18, %struct.nlmsghdr** %9, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %20 = icmp eq %struct.nlmsghdr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %130

24:                                               ; preds = %3
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %26 = call %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.xfrm_aevent_id* %26, %struct.xfrm_aevent_id** %8, align 8
  %27 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %28 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = call i32 @memcpy(i32* %29, i32* %32, i32 4)
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %39 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %46 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %53 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %56 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %55, i32 0, i32 2
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = call i32 @memcpy(i32* %56, i32* %59, i32 4)
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %62 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %66 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.km_event*, %struct.km_event** %7, align 8
  %68 = getelementptr inbounds %struct.km_event, %struct.km_event* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %72 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* @XFRMA_REPLAY_VAL, align 4
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 4
  %77 = call i32 @NLA_PUT(%struct.sk_buff* %73, i32 %74, i32 4, i32* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load i32, i32* @XFRMA_LTIME_VAL, align 4
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 3
  %82 = call i32 @NLA_PUT(%struct.sk_buff* %78, i32 %79, i32 4, i32* %81)
  %83 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %84 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @XFRM_AE_RTHR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %24
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load i32, i32* @XFRMA_REPLAY_THRESH, align 4
  %92 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %93 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @NLA_PUT_U32(%struct.sk_buff* %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %89, %24
  %97 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %8, align 8
  %98 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XFRM_AE_ETHR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = load i32, i32* @XFRMA_ETIMER_THRESH, align 4
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 10
  %110 = load i32, i32* @HZ, align 4
  %111 = sdiv i32 %109, %110
  %112 = call i32 @NLA_PUT_U32(%struct.sk_buff* %104, i32 %105, i32 %111)
  br label %113

113:                                              ; preds = %103, %96
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %116 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %115, i32 0, i32 2
  %117 = call i64 @xfrm_mark_put(%struct.sk_buff* %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %124

120:                                              ; preds = %113
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %123 = call i32 @nlmsg_end(%struct.sk_buff* %121, %struct.nlmsghdr* %122)
  store i32 %123, i32* %4, align 4
  br label %130

124:                                              ; preds = %119
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %127 = call i32 @nlmsg_cancel(%struct.sk_buff* %125, %struct.nlmsghdr* %126)
  %128 = load i32, i32* @EMSGSIZE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %124, %120, %21
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
