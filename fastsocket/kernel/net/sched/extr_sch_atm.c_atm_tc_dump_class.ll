; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_dump_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32 }
%struct.atm_qdisc_data = type { i32 }
%struct.atm_flow_data = type { i32, i32, i64, %struct.TYPE_8__*, %struct.sockaddr_atmpvc*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_atmpvc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"atm_tc_dump_class(sch %p,[qdisc %p],flow %p,skb %p,tcm %p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_ATM_HDR = common dso_local global i32 0, align 4
@AF_ATMPVC = common dso_local global i32 0, align 4
@TCA_ATM_ADDR = common dso_local global i32 0, align 4
@TCA_ATM_STATE = common dso_local global i32 0, align 4
@TCA_ATM_EXCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @atm_tc_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.atm_qdisc_data*, align 8
  %11 = alloca %struct.atm_flow_data*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.sockaddr_atmpvc, align 4
  %14 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %16 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.atm_qdisc_data* %16, %struct.atm_qdisc_data** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %18, %struct.atm_flow_data** %11, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %20 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %10, align 8
  %21 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %19, %struct.atm_qdisc_data* %20, %struct.atm_flow_data* %21, %struct.sk_buff* %22, %struct.tcmsg* %23)
  %25 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %10, align 8
  %26 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %27 = call i32 @find_flow(%struct.atm_qdisc_data* %25, %struct.atm_flow_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %141

32:                                               ; preds = %4
  %33 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %34 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %37 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %39 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %38, i32 0, i32 5
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %44 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* @TCA_OPTIONS, align 4
  %47 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %45, i32 %46)
  store %struct.nlattr* %47, %struct.nlattr** %12, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %49 = icmp eq %struct.nlattr* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %137

51:                                               ; preds = %32
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i32, i32* @TCA_ATM_HDR, align 4
  %54 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %55 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %58 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %57, i32 0, i32 4
  %59 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %58, align 8
  %60 = call i32 @NLA_PUT(%struct.sk_buff* %52, i32 %53, i32 %56, %struct.sockaddr_atmpvc* %59)
  %61 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %62 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %114

65:                                               ; preds = %51
  %66 = load i32, i32* @AF_ATMPVC, align 4
  %67 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %69 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = icmp ne %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %76 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %74
  %84 = phi i32 [ %81, %74 ], [ -1, %82 ]
  %85 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %88 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %95 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %94, i32 0, i32 3
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load i32, i32* @TCA_ATM_ADDR, align 4
  %103 = call i32 @NLA_PUT(%struct.sk_buff* %101, i32 %102, i32 16, %struct.sockaddr_atmpvc* %13)
  %104 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %105 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %104, i32 0, i32 3
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ATM_VF2VS(i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = load i32, i32* @TCA_ATM_STATE, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @NLA_PUT_U32(%struct.sk_buff* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %83, %51
  %115 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %116 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = load i32, i32* @TCA_ATM_EXCESS, align 4
  %122 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %123 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @NLA_PUT_U32(%struct.sk_buff* %120, i32 %121, i32 %124)
  br label %130

126:                                              ; preds = %114
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = load i32, i32* @TCA_ATM_EXCESS, align 4
  %129 = call i32 @NLA_PUT_U32(%struct.sk_buff* %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %133 = call i32 @nla_nest_end(%struct.sk_buff* %131, %struct.nlattr* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %5, align 4
  br label %141

137:                                              ; preds = %50
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %140 = call i32 @nla_nest_cancel(%struct.sk_buff* %138, %struct.nlattr* %139)
  store i32 -1, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %130, %29
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.atm_flow_data*, %struct.sk_buff*, %struct.tcmsg*) #1

declare dso_local i32 @find_flow(%struct.atm_qdisc_data*, %struct.atm_flow_data*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.sockaddr_atmpvc*) #1

declare dso_local i32 @ATM_VF2VS(i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
