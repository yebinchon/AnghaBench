; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_restore_gp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_restore_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ABICALLS = common dso_local global i64 0, align 8
@TARGET_OLDABI = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@current_function_outgoing_args_size = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@TARGET_EXPLICIT_RELOCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_restore_gp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @TARGET_ABICALLS, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @TARGET_OLDABI, align 8
  %7 = icmp ne i64 %6, 0
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32, i32* @pic_offset_table_rtx, align 4
  %13 = load i64, i64* @frame_pointer_needed, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @hard_frame_pointer_rtx, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @stack_pointer_rtx, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* @current_function_outgoing_args_size, align 4
  %22 = call i32 @mips_add_offset(i32 %12, i32 %20, i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @Pmode, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @gen_rtx_MEM(i32 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @pic_offset_table_rtx, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @emit_move_insn(i32 %26, i32 %27)
  %29 = load i32, i32* @TARGET_EXPLICIT_RELOCS, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = call i32 (...) @gen_blockage()
  %33 = call i32 @emit_insn(i32 %32)
  br label %34

34:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @mips_add_offset(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_blockage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
