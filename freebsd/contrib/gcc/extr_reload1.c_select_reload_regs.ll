; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_select_reload_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_select_reload_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { %struct.insn_chain* }

@insns_need_reload = common dso_local global %struct.insn_chain* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @select_reload_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_reload_regs() #0 {
  %1 = alloca %struct.insn_chain*, align 8
  %2 = load %struct.insn_chain*, %struct.insn_chain** @insns_need_reload, align 8
  store %struct.insn_chain* %2, %struct.insn_chain** %1, align 8
  br label %3

3:                                                ; preds = %9, %0
  %4 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %5 = icmp ne %struct.insn_chain* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %8 = call i32 @find_reload_regs(%struct.insn_chain* %7)
  br label %9

9:                                                ; preds = %6
  %10 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %11 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %10, i32 0, i32 0
  %12 = load %struct.insn_chain*, %struct.insn_chain** %11, align 8
  store %struct.insn_chain* %12, %struct.insn_chain** %1, align 8
  br label %3

13:                                               ; preds = %3
  ret void
}

declare dso_local i32 @find_reload_regs(%struct.insn_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
