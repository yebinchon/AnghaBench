; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_rtx_REG.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_rtx_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Pmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i32 0, align 4
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@fixed_regs = common dso_local global i64* null, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@RETURN_ADDRESS_POINTER_REGNUM = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@reg_raw_mode = common dso_local global i32* null, align 8
@regno_reg_rtx = common dso_local global i32* null, align 8
@return_address_pointer_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_rtx_REG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @Pmode, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load i32, i32* @reload_in_progress, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @reload_completed, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @frame_pointer_needed, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @frame_pointer_rtx, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %19, %12
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i64*, i64** @fixed_regs, align 8
  %31 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @pic_offset_table_rtx, align 4
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %29, %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @stack_pointer_rtx, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %9, %2
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @gen_raw_REG(i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %41, %35, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @gen_raw_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
