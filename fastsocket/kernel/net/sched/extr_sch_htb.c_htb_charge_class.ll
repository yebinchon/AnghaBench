; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_charge_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_charge_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i64, i32 }
%struct.htb_class = type { i32, i64, i32, %struct.htb_class*, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HTB_CAN_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, i32, %struct.sk_buff*)* @htb_charge_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_charge_class(%struct.htb_sched* %0, %struct.htb_class* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.htb_sched*, align 8
  %6 = alloca %struct.htb_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %5, align 8
  store %struct.htb_class* %1, %struct.htb_class** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = call i32 @qdisc_pkt_len(%struct.sk_buff* %12)
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %138, %4
  %15 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %16 = icmp ne %struct.htb_class* %15, null
  br i1 %16, label %17, label %142

17:                                               ; preds = %14
  %18 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %19 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %22 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %25 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @psched_tdiff_bounded(i32 %20, i32 %23, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %29 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %17
  %34 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %35 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %41 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @htb_accnt_tokens(%struct.htb_class* %46, i32 %47, i64 %48)
  br label %61

50:                                               ; preds = %17
  %51 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %52 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %58 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %50, %45
  %62 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @htb_accnt_ctokens(%struct.htb_class* %62, i32 %63, i64 %64)
  %66 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %67 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %70 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %72 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %74 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %75 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %76 = call i32 @htb_change_class_mode(%struct.htb_sched* %74, %struct.htb_class* %75, i64* %11)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %79 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %61
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @HTB_CAN_SEND, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %88 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %87, i32 0, i32 5
  %89 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %90 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %93 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = call i32 @htb_safe_rb_erase(i32* %88, i64 %96)
  br label %98

98:                                               ; preds = %86, %82
  %99 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %100 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @HTB_CAN_SEND, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %106 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @htb_add_to_wait_tree(%struct.htb_sched* %105, %struct.htb_class* %106, i64 %107)
  br label %109

109:                                              ; preds = %104, %98
  br label %110

110:                                              ; preds = %109, %61
  %111 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %112 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %118 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = call i64 @skb_is_gso(%struct.sk_buff* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  br label %131

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130, %125
  %132 = phi i32 [ %129, %125 ], [ 1, %130 ]
  %133 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %134 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %110
  %139 = load %struct.htb_class*, %struct.htb_class** %6, align 8
  %140 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %139, i32 0, i32 3
  %141 = load %struct.htb_class*, %struct.htb_class** %140, align 8
  store %struct.htb_class* %141, %struct.htb_class** %6, align 8
  br label %14

142:                                              ; preds = %14
  ret void
}

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i64 @psched_tdiff_bounded(i32, i32, i32) #1

declare dso_local i32 @htb_accnt_tokens(%struct.htb_class*, i32, i64) #1

declare dso_local i32 @htb_accnt_ctokens(%struct.htb_class*, i32, i64) #1

declare dso_local i32 @htb_change_class_mode(%struct.htb_sched*, %struct.htb_class*, i64*) #1

declare dso_local i32 @htb_safe_rb_erase(i32*, i64) #1

declare dso_local i32 @htb_add_to_wait_tree(%struct.htb_sched*, %struct.htb_class*, i64) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
