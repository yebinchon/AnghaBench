; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_finish_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_finish_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_sim = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_sim*, i32)* @mips_sim_finish_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_sim_finish_insn(%struct.mips_sim* %0, i32 %1) #0 {
  %3 = alloca %struct.mips_sim*, align 8
  %4 = alloca i32, align 4
  store %struct.mips_sim* %0, %struct.mips_sim** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @JUMP_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %10 = call i32 @mips_sim_issue_nop(%struct.mips_sim* %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @SEQ_BEGIN(i32 %12)
  %14 = call i32 @GET_CODE(i32 %13)
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 130, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %17 = call i32 @mips_sim_reset(%struct.mips_sim* %16)
  br label %28

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SEQ_BEGIN(i32 %19)
  %21 = call i32 @INSN_ANNULLED_BRANCH_P(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.mips_sim*, %struct.mips_sim** %3, align 8
  %25 = call i32 @mips_sim_reset(%struct.mips_sim* %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %26, %15
  ret void
}

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i32 @mips_sim_issue_nop(%struct.mips_sim*) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SEQ_BEGIN(i32) #1

declare dso_local i32 @mips_sim_reset(%struct.mips_sim*) #1

declare dso_local i32 @INSN_ANNULLED_BRANCH_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
