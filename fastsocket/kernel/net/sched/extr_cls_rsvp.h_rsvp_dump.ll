; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.rsvp_filter = type { i32, i32, %struct.tc_rsvp_pinfo*, %struct.TYPE_2__, i32, i32, %struct.rsvp_session* }
%struct.tc_rsvp_pinfo = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.rsvp_session = type { i32, i32, i32, %struct.tc_rsvp_pinfo }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_RSVP_DST = common dso_local global i32 0, align 4
@TCA_RSVP_PINFO = common dso_local global i32 0, align 4
@TCA_RSVP_CLASSID = common dso_local global i32 0, align 4
@TCA_RSVP_SRC = common dso_local global i32 0, align 4
@rsvp_ext_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* @rsvp_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsvp_dump(%struct.tcf_proto* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.rsvp_filter*, align 8
  %11 = alloca %struct.rsvp_session*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.tc_rsvp_pinfo, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %16, %struct.rsvp_filter** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i8* @skb_tail_pointer(%struct.sk_buff* %17)
  store i8* %18, i8** %12, align 8
  %19 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %20 = icmp eq %struct.rsvp_filter* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %122

25:                                               ; preds = %4
  %26 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %27 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %26, i32 0, i32 6
  %28 = load %struct.rsvp_session*, %struct.rsvp_session** %27, align 8
  store %struct.rsvp_session* %28, %struct.rsvp_session** %11, align 8
  %29 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %30 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %33 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i32, i32* @TCA_OPTIONS, align 4
  %36 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %34, i32 %35)
  store %struct.nlattr* %36, %struct.nlattr** %13, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %38 = icmp eq %struct.nlattr* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %118

40:                                               ; preds = %25
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load i32, i32* @TCA_RSVP_DST, align 4
  %43 = load %struct.rsvp_session*, %struct.rsvp_session** %11, align 8
  %44 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %43, i32 0, i32 3
  %45 = call i32 @NLA_PUT(%struct.sk_buff* %41, i32 %42, i32 32, %struct.tc_rsvp_pinfo* %44)
  %46 = load %struct.rsvp_session*, %struct.rsvp_session** %11, align 8
  %47 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %14, i32 0, i32 5
  store i32 %48, i32* %49, align 8
  %50 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %51 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %14, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.rsvp_session*, %struct.rsvp_session** %11, align 8
  %55 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %14, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load %struct.rsvp_session*, %struct.rsvp_session** %11, align 8
  %59 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %14, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %63 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %14, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.tc_rsvp_pinfo, %struct.tc_rsvp_pinfo* %14, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* @TCA_RSVP_PINFO, align 4
  %69 = call i32 @NLA_PUT(%struct.sk_buff* %67, i32 %68, i32 32, %struct.tc_rsvp_pinfo* %14)
  %70 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %71 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %40
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32, i32* @TCA_RSVP_CLASSID, align 4
  %78 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %79 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @NLA_PUT_U32(%struct.sk_buff* %76, i32 %77, i64 %81)
  br label %83

83:                                               ; preds = %75, %40
  %84 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %85 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = icmp ne i32 %88, 16
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32, i32* @TCA_RSVP_SRC, align 4
  %93 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %94 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %93, i32 0, i32 2
  %95 = load %struct.tc_rsvp_pinfo*, %struct.tc_rsvp_pinfo** %94, align 8
  %96 = call i32 @NLA_PUT(%struct.sk_buff* %91, i32 %92, i32 8, %struct.tc_rsvp_pinfo* %95)
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %100 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %99, i32 0, i32 1
  %101 = call i64 @tcf_exts_dump(%struct.sk_buff* %98, i32* %100, i32* @rsvp_ext_map)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %118

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %107 = call i32 @nla_nest_end(%struct.sk_buff* %105, %struct.nlattr* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %110 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %109, i32 0, i32 1
  %111 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %108, i32* %110, i32* @rsvp_ext_map)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %5, align 4
  br label %122

118:                                              ; preds = %113, %103, %39
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @nlmsg_trim(%struct.sk_buff* %119, i8* %120)
  store i32 -1, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %114, %21
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_rsvp_pinfo*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
