; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_exts_dump_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_exts_dump_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_exts = type { i64 }
%struct.tcf_ext_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_exts_dump_stats(%struct.sk_buff* %0, %struct.tcf_exts* %1, %struct.tcf_ext_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_exts*, align 8
  %7 = alloca %struct.tcf_ext_map*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_exts* %1, %struct.tcf_exts** %6, align 8
  store %struct.tcf_ext_map* %2, %struct.tcf_ext_map** %7, align 8
  store i32 0, i32* %4, align 4
  br label %9

8:                                                ; No predecessors!
  store i32 -1, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %3
  %10 = load i32, i32* %4, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
