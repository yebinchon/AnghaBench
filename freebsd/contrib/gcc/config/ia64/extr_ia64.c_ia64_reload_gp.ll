; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_reload_gp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_reload_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DImode = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_reload_gp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 3), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @DImode, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 3), align 8
  %8 = call i32 @gen_rtx_REG(i32 %6, i64 %7)
  store i32 %8, i32* %1, align 4
  br label %49

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* @frame_pointer_needed, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @hard_frame_pointer_rtx, align 4
  store i32 %16, i32* %1, align 4
  %17 = load i64, i64* %2, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %2, align 8
  br label %24

19:                                               ; preds = %9
  %20 = load i32, i32* @stack_pointer_rtx, align 4
  store i32 %20, i32* %1, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %22 = load i64, i64* %2, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i64, i64* %2, align 8
  %26 = call i64 @CONST_OK_FOR_I(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @pic_offset_table_rtx, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @GEN_INT(i64 %31)
  %33 = call i32 @gen_adddi3(i32 %29, i32 %30, i32 %32)
  %34 = call i32 @emit_insn(i32 %33)
  br label %45

35:                                               ; preds = %24
  %36 = load i32, i32* @pic_offset_table_rtx, align 4
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @GEN_INT(i64 %37)
  %39 = call i32 @emit_move_insn(i32 %36, i32 %38)
  %40 = load i32, i32* @pic_offset_table_rtx, align 4
  %41 = load i32, i32* @pic_offset_table_rtx, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @gen_adddi3(i32 %40, i32 %41, i32 %42)
  %44 = call i32 @emit_insn(i32 %43)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load i32, i32* @DImode, align 4
  %47 = load i32, i32* @pic_offset_table_rtx, align 4
  %48 = call i32 @gen_rtx_MEM(i32 %46, i32 %47)
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %5
  %50 = load i32, i32* @pic_offset_table_rtx, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @emit_move_insn(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i64 @CONST_OK_FOR_I(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i64) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
