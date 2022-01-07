; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_expand_nl_goto_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_expand_nl_goto_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elims = type { i32, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@static_chain_rtx = common dso_local global i32 0, align 4
@virtual_stack_vars_rtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@ELIMINABLE_REGS = common dso_local global %struct.elims* null, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@HAVE_nonlocal_goto = common dso_local global i32 0, align 4
@HAVE_nonlocal_goto_receiver = common dso_local global i64 0, align 8
@cfun = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i64* null, align 8
@virtual_incoming_args_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @expand_nl_goto_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_nl_goto_receiver() #0 {
  %1 = load i32, i32* @VOIDmode, align 4
  %2 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %3 = call i32 @gen_rtx_USE(i32 %1, i32 %2)
  %4 = call i32 @emit_insn(i32 %3)
  %5 = load i32, i32* @VOIDmode, align 4
  %6 = load i32, i32* @static_chain_rtx, align 4
  %7 = call i32 @gen_rtx_CLOBBER(i32 %5, i32 %6)
  %8 = call i32 @emit_insn(i32 %7)
  %9 = load i32, i32* @virtual_stack_vars_rtx, align 4
  %10 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %11 = call i32 @emit_move_insn(i32 %9, i32 %10)
  %12 = load i32, i32* @VOIDmode, align 4
  %13 = call i32 @gen_rtx_ASM_INPUT(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @emit_insn(i32 %13)
  ret void
}

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_ASM_INPUT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
