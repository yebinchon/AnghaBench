; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_tbase_get_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_tbase_get_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvec_base = type { i32 }

@TBASE_DEFERRABLE_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tvec_base* (%struct.tvec_base*)* @tbase_get_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tvec_base* @tbase_get_base(%struct.tvec_base* %0) #0 {
  %2 = alloca %struct.tvec_base*, align 8
  store %struct.tvec_base* %0, %struct.tvec_base** %2, align 8
  %3 = load %struct.tvec_base*, %struct.tvec_base** %2, align 8
  %4 = ptrtoint %struct.tvec_base* %3 to i64
  %5 = load i64, i64* @TBASE_DEFERRABLE_FLAG, align 8
  %6 = xor i64 %5, -1
  %7 = and i64 %4, %6
  %8 = inttoptr i64 %7 to %struct.tvec_base*
  ret %struct.tvec_base* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
