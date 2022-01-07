; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_police* }
%struct.tcf_police = type { i64, i64, i64, i32, i64, i64, i64, i32, %struct.TYPE_6__, i32, i64, i32*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tcf_result = type { i32 }

@TC_ACT_SHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_act_police to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_act_police(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_police*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %12 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %13 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %12, i32 0, i32 0
  %14 = load %struct.tcf_police*, %struct.tcf_police** %13, align 8
  store %struct.tcf_police* %14, %struct.tcf_police** %8, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %16 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %15, i32 0, i32 7
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i64 @qdisc_pkt_len(%struct.sk_buff* %18)
  %20 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %21 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %19
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %28 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %33 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %3
  %37 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %38 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %37, i32 0, i32 12
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %42 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %36
  %46 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %47 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %52 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TC_ACT_SHOT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %58 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %45
  %63 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %64 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %63, i32 0, i32 7
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %67 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %197

70:                                               ; preds = %36, %3
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i64 @qdisc_pkt_len(%struct.sk_buff* %71)
  %73 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %74 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %72, %75
  br i1 %76, label %77, label %172

77:                                               ; preds = %70
  %78 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %79 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %78, i32 0, i32 11
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %84 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %83, i32 0, i32 7
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %87 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %4, align 4
  br label %197

89:                                               ; preds = %77
  %90 = call i32 (...) @psched_get_time()
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %93 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %96 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @psched_tdiff_bounded(i32 %91, i32 %94, i64 %97)
  store i64 %98, i64* %10, align 8
  %99 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %100 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %89
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %106 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %111 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %112 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @L2T_P(%struct.tcf_police* %110, i64 %113)
  %115 = icmp sgt i64 %109, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %118 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %119 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @L2T_P(%struct.tcf_police* %117, i64 %120)
  store i64 %121, i64* %11, align 8
  br label %122

122:                                              ; preds = %116, %103
  %123 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call i64 @qdisc_pkt_len(%struct.sk_buff* %124)
  %126 = call i64 @L2T_P(%struct.tcf_police* %123, i64 %125)
  %127 = load i64, i64* %11, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %122, %89
  %130 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %131 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %137 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %142 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %10, align 8
  br label %144

144:                                              ; preds = %140, %129
  %145 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i64 @qdisc_pkt_len(%struct.sk_buff* %146)
  %148 = call i64 @L2T(%struct.tcf_police* %145, i64 %147)
  %149 = load i64, i64* %10, align 8
  %150 = sub nsw i64 %149, %148
  store i64 %150, i64* %10, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = or i64 %151, %152
  %154 = icmp sge i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %144
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %158 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* %10, align 8
  %160 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %161 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %160, i32 0, i32 6
  store i64 %159, i64* %161, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %164 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %163, i32 0, i32 5
  store i64 %162, i64* %164, align 8
  %165 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %166 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %165, i32 0, i32 7
  %167 = call i32 @spin_unlock(i32* %166)
  %168 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %169 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %4, align 4
  br label %197

171:                                              ; preds = %144
  br label %172

172:                                              ; preds = %171, %70
  %173 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %174 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %173, i32 0, i32 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %179 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @TC_ACT_SHOT, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %172
  %184 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %185 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %172
  %190 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %191 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %190, i32 0, i32 7
  %192 = call i32 @spin_unlock(i32* %191)
  %193 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  %194 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %189, %155, %82, %62
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i64 @psched_tdiff_bounded(i32, i32, i64) #1

declare dso_local i64 @L2T_P(%struct.tcf_police*, i64) #1

declare dso_local i64 @L2T(%struct.tcf_police*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
