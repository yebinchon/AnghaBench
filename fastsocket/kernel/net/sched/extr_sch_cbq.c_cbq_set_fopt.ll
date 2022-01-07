; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_fopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_fopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32 }
%struct.tc_cbq_fopt = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbq_class*, %struct.tc_cbq_fopt*)* @cbq_set_fopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_set_fopt(%struct.cbq_class* %0, %struct.tc_cbq_fopt* %1) #0 {
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.tc_cbq_fopt*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %3, align 8
  store %struct.tc_cbq_fopt* %1, %struct.tc_cbq_fopt** %4, align 8
  %5 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %6 = load %struct.tc_cbq_fopt*, %struct.tc_cbq_fopt** %4, align 8
  %7 = getelementptr inbounds %struct.tc_cbq_fopt, %struct.tc_cbq_fopt* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tc_cbq_fopt*, %struct.tc_cbq_fopt** %4, align 8
  %10 = getelementptr inbounds %struct.tc_cbq_fopt, %struct.tc_cbq_fopt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tc_cbq_fopt*, %struct.tc_cbq_fopt** %4, align 8
  %13 = getelementptr inbounds %struct.tc_cbq_fopt, %struct.tc_cbq_fopt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cbq_change_defmap(%struct.cbq_class* %5, i32 %8, i32 %11, i32 %14)
  ret i32 0
}

declare dso_local i32 @cbq_change_defmap(%struct.cbq_class*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
