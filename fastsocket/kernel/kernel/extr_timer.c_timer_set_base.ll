; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_timer_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_timer_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { %struct.tvec_base* }
%struct.tvec_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*, %struct.tvec_base*)* @timer_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_set_base(%struct.timer_list* %0, %struct.tvec_base* %1) #0 {
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca %struct.tvec_base*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %3, align 8
  store %struct.tvec_base* %1, %struct.tvec_base** %4, align 8
  %5 = load %struct.tvec_base*, %struct.tvec_base** %4, align 8
  %6 = ptrtoint %struct.tvec_base* %5 to i64
  %7 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %8 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 0
  %9 = load %struct.tvec_base*, %struct.tvec_base** %8, align 8
  %10 = call i64 @tbase_get_deferrable(%struct.tvec_base* %9)
  %11 = or i64 %6, %10
  %12 = inttoptr i64 %11 to %struct.tvec_base*
  %13 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %14 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %13, i32 0, i32 0
  store %struct.tvec_base* %12, %struct.tvec_base** %14, align 8
  ret void
}

declare dso_local i64 @tbase_get_deferrable(%struct.tvec_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
