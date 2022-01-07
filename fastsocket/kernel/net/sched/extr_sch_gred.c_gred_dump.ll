; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.gred_sched = type { %struct.gred_sched_data**, i32, i32, i32 }
%struct.gred_sched_data = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_gred_sopt = type { i32, i32, i32, i32 }
%struct.tc_gred_qopt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_GRED_DPS = common dso_local global i32 0, align 4
@TCA_GRED_PARMS = common dso_local global i32 0, align 4
@MAX_DPs = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @gred_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.gred_sched*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tc_gred_sopt, align 4
  %11 = alloca %struct.gred_sched_data*, align 8
  %12 = alloca %struct.tc_gred_qopt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.gred_sched* %14, %struct.gred_sched** %6, align 8
  store %struct.nlattr* null, %struct.nlattr** %8, align 8
  %15 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %10, i32 0, i32 0
  %16 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %17 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %10, i32 0, i32 1
  %20 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %21 = call i32 @gred_rio_mode(%struct.gred_sched* %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %10, i32 0, i32 2
  %23 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %24 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %10, i32 0, i32 3
  %27 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %28 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @TCA_OPTIONS, align 4
  %32 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %30, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %8, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %34 = icmp eq %struct.nlattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %179

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @TCA_GRED_DPS, align 4
  %39 = call i32 @NLA_PUT(%struct.sk_buff* %37, i32 %38, i32 16, %struct.tc_gred_sopt* %10)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @TCA_GRED_PARMS, align 4
  %42 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %40, i32 %41)
  store %struct.nlattr* %42, %struct.nlattr** %7, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %44 = icmp eq %struct.nlattr* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %179

46:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %169, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MAX_DPs, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %172

51:                                               ; preds = %47
  %52 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %53 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %52, i32 0, i32 0
  %54 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %54, i64 %56
  %58 = load %struct.gred_sched_data*, %struct.gred_sched_data** %57, align 8
  store %struct.gred_sched_data* %58, %struct.gred_sched_data** %11, align 8
  %59 = call i32 @memset(%struct.tc_gred_qopt* %12, i32 0, i32 64)
  %60 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %61 = icmp ne %struct.gred_sched_data* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @MAX_DPs, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  br label %163

67:                                               ; preds = %51
  %68 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %69 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 15
  store i32 %70, i32* %71, align 4
  %72 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %73 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %77 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 14
  store i32 %78, i32* %79, align 4
  %80 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %81 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 13
  store i32 %82, i32* %83, align 4
  %84 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %85 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %89 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %87, %91
  %93 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %95 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %99 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %97, %101
  %103 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  %104 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %105 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 3
  store i32 %107, i32* %108, align 4
  %109 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %110 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 12
  store i32 %112, i32* %113, align 4
  %114 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %115 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 11
  store i32 %117, i32* %118, align 4
  %119 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %120 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 10
  store i32 %122, i32* %123, align 4
  %124 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %125 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 9
  store i32 %127, i32* %128, align 4
  %129 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %130 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %135 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 7
  store i32 %137, i32* %138, align 4
  %139 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %140 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 6
  store i32 %141, i32* %142, align 4
  %143 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %144 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 5
  store i32 %145, i32* %146, align 4
  %147 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %148 = call i64 @gred_wred_mode(%struct.gred_sched* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %67
  %151 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %152 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %153 = call i32 @gred_load_wred_set(%struct.gred_sched* %151, %struct.gred_sched_data* %152)
  br label %154

154:                                              ; preds = %150, %67
  %155 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %156 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %155, i32 0, i32 1
  %157 = load %struct.gred_sched_data*, %struct.gred_sched_data** %11, align 8
  %158 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @red_calc_qavg(%struct.TYPE_4__* %156, i32 %160)
  %162 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %12, i32 0, i32 4
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %154, %62
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = call i64 @nla_append(%struct.sk_buff* %164, i32 64, %struct.tc_gred_qopt* %12)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %179

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %47

172:                                              ; preds = %47
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %175 = call i32 @nla_nest_end(%struct.sk_buff* %173, %struct.nlattr* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %178 = call i32 @nla_nest_end(%struct.sk_buff* %176, %struct.nlattr* %177)
  store i32 %178, i32* %3, align 4
  br label %185

179:                                              ; preds = %167, %45, %35
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %182 = call i32 @nla_nest_cancel(%struct.sk_buff* %180, %struct.nlattr* %181)
  %183 = load i32, i32* @EMSGSIZE, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %172
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @gred_rio_mode(%struct.gred_sched*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_gred_sopt*) #1

declare dso_local i32 @memset(%struct.tc_gred_qopt*, i32, i32) #1

declare dso_local i64 @gred_wred_mode(%struct.gred_sched*) #1

declare dso_local i32 @gred_load_wred_set(%struct.gred_sched*, %struct.gred_sched_data*) #1

declare dso_local i32 @red_calc_qavg(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @nla_append(%struct.sk_buff*, i32, %struct.tc_gred_qopt*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
