; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_issue_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_issue_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_sim = type { i32, i32 }

@mips_sim_insn = common dso_local global i32 0, align 4
@mips_sim_record_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_sim*, i32)* @mips_sim_issue_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_sim_issue_insn(%struct.mips_sim* %0, i32 %1) #0 {
  %3 = alloca %struct.mips_sim*, align 8
  %4 = alloca i32, align 4
  store %struct.mips_sim* %0, %struct.mips_sim** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %6 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @state_transition(i32 %7, i32 %8)
  %10 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %11 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* @mips_sim_insn, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @PATTERN(i32 %15)
  %17 = load i32, i32* @mips_sim_record_set, align 4
  %18 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %19 = call i32 @note_stores(i32 %16, i32 %17, %struct.mips_sim* %18)
  ret void
}

declare dso_local i32 @state_transition(i32, i32) #1

declare dso_local i32 @note_stores(i32, i32, %struct.mips_sim*) #1

declare dso_local i32 @PATTERN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
