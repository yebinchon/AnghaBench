; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_fill_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_fill_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 (%struct.Qdisc*, %struct.sk_buff*)*, i64 (%struct.Qdisc*, %struct.gnet_dump*)*, i32 }
%struct.gnet_dump = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tcmsg = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_7__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@TCA_STATS2 = common dso_local global i32 0, align 4
@TCA_STATS = common dso_local global i32 0, align 4
@TCA_XSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, i32, i32, i32, i32, i32)* @tc_fill_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_fill_qdisc(%struct.sk_buff* %0, %struct.Qdisc* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcmsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.gnet_dump, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call i8* @skb_tail_pointer(%struct.sk_buff* %20)
  store i8* %21, i8** %18, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %22, i32 %23, i32 %24, i32 %25, i32 40, i32 %26)
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %17, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %29 = call %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr* %28)
  store %struct.tcmsg* %29, %struct.tcmsg** %16, align 8
  %30 = load i32, i32* @AF_UNSPEC, align 4
  %31 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %32 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %34 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %36 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %38 = call %struct.TYPE_7__* @qdisc_dev(%struct.Qdisc* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %42 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %45 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %50 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %52 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %51, i32 0, i32 6
  %53 = call i32 @atomic_read(i32* %52)
  %54 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %55 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load i32, i32* @TCA_KIND, align 4
  %58 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %59 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %56, i32 %57, i32 %62)
  %64 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %65 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64 (%struct.Qdisc*, %struct.sk_buff*)*, i64 (%struct.Qdisc*, %struct.sk_buff*)** %67, align 8
  %69 = icmp ne i64 (%struct.Qdisc*, %struct.sk_buff*)* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %7
  %71 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %72 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64 (%struct.Qdisc*, %struct.sk_buff*)*, i64 (%struct.Qdisc*, %struct.sk_buff*)** %74, align 8
  %76 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i64 %75(%struct.Qdisc* %76, %struct.sk_buff* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %162

81:                                               ; preds = %70, %7
  %82 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %83 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %87 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %90 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %96 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @qdisc_dump_stab(%struct.sk_buff* %94, i64 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %162

101:                                              ; preds = %93, %81
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = load i32, i32* @TCA_STATS2, align 4
  %104 = load i32, i32* @TCA_STATS, align 4
  %105 = load i32, i32* @TCA_XSTATS, align 4
  %106 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %107 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %106)
  %108 = call i64 @gnet_stats_start_copy_compat(%struct.sk_buff* %102, i32 %103, i32 %104, i32 %105, i32 %107, %struct.gnet_dump* %19)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %162

111:                                              ; preds = %101
  %112 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %113 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64 (%struct.Qdisc*, %struct.gnet_dump*)*, i64 (%struct.Qdisc*, %struct.gnet_dump*)** %115, align 8
  %117 = icmp ne i64 (%struct.Qdisc*, %struct.gnet_dump*)* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %120 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64 (%struct.Qdisc*, %struct.gnet_dump*)*, i64 (%struct.Qdisc*, %struct.gnet_dump*)** %122, align 8
  %124 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %125 = call i64 %123(%struct.Qdisc* %124, %struct.gnet_dump* %19)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %162

128:                                              ; preds = %118, %111
  %129 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %130 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %129, i32 0, i32 2
  %131 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %19, i32* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %135 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %134, i32 0, i32 1
  %136 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %19, i32* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %140 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %139, i32 0, i32 0
  %141 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %19, %struct.TYPE_8__* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %133, %128
  br label %162

144:                                              ; preds = %138
  %145 = call i64 @gnet_stats_finish_copy(%struct.gnet_dump* %19)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %162

148:                                              ; preds = %144
  %149 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %150 = call i8* @skb_tail_pointer(%struct.sk_buff* %149)
  %151 = load i8*, i8** %18, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %157 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %8, align 4
  br label %166

161:                                              ; No predecessors!
  br label %162

162:                                              ; preds = %161, %147, %143, %127, %110, %100, %80
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = call i32 @nlmsg_trim(%struct.sk_buff* %163, i8* %164)
  store i32 -1, i32* %8, align 4
  br label %166

166:                                              ; preds = %162, %148
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_7__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @qdisc_dump_stab(%struct.sk_buff*, i64) #1

declare dso_local i64 @gnet_stats_start_copy_compat(%struct.sk_buff*, i32, i32, i32, i32, %struct.gnet_dump*) #1

declare dso_local i32 @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_8__*) #1

declare dso_local i64 @gnet_stats_finish_copy(%struct.gnet_dump*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
