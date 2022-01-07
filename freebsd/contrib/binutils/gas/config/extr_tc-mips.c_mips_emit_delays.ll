; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_emit_delays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_emit_delays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@history = common dso_local global i32 0, align 4
@NOP_INSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_emit_delays() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @history, align 4
  %6 = call i32 @nops_for_insn(i32 %5, i32* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %1, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @NOP_INSN, align 4
  %16 = call i32 @add_fixed_insn(i32 %15)
  br label %10

17:                                               ; preds = %10
  %18 = call i32 (...) @mips_move_labels()
  br label %19

19:                                               ; preds = %17, %4
  br label %20

20:                                               ; preds = %19, %0
  %21 = call i32 (...) @mips_no_prev_insn()
  ret void
}

declare dso_local i32 @nops_for_insn(i32, i32*) #1

declare dso_local i32 @add_fixed_insn(i32) #1

declare dso_local i32 @mips_move_labels(...) #1

declare dso_local i32 @mips_no_prev_insn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
