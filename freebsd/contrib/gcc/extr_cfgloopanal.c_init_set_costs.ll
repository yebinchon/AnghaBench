; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_init_set_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_init_set_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@reg_class_contents = common dso_local global i32* null, align 8
@GENERAL_REGS = common dso_local global i64 0, align 8
@fixed_regs = common dso_local global i32* null, align 8
@target_avail_regs = common dso_local global i32 0, align 4
@target_res_regs = common dso_local global i32 0, align 4
@target_small_cost = common dso_local global i32 0, align 4
@target_pres_cost = common dso_local global i32 0, align 4
@target_spill_cost = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_set_costs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @SImode, align 4
  %8 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %9 = call i32 @gen_raw_REG(i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @SImode, align 4
  %11 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @gen_raw_REG(i32 %10, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @Pmode, align 4
  %15 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %16 = add nsw i32 %15, 2
  %17 = call i32 @gen_raw_REG(i32 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @SImode, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @gen_rtx_MEM(i32 %18, i32 %19)
  %21 = call i32 @validize_mem(i32 %20)
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %45, %0
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32*, i32** @reg_class_contents, align 8
  %28 = load i64, i64* @GENERAL_REGS, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @TEST_HARD_REG_BIT(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load i32*, i32** @fixed_regs, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @target_avail_regs, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @target_avail_regs, align 4
  br label %44

44:                                               ; preds = %41, %34, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %22

48:                                               ; preds = %22
  store i32 3, i32* @target_res_regs, align 4
  %49 = call i32 (...) @start_sequence()
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @emit_move_insn(i32 %50, i32 %51)
  %53 = call i32 (...) @get_insns()
  store i32 %53, i32* %1, align 4
  %54 = call i32 (...) @end_sequence()
  %55 = load i32, i32* %1, align 4
  %56 = call i8* @seq_cost(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* @target_small_cost, align 4
  %58 = load i32, i32* @target_small_cost, align 4
  %59 = mul nsw i32 2, %58
  store i32 %59, i32* @target_pres_cost, align 4
  %60 = call i32 (...) @start_sequence()
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @emit_move_insn(i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @emit_move_insn(i32 %64, i32 %65)
  %67 = call i32 (...) @get_insns()
  store i32 %67, i32* %1, align 4
  %68 = call i32 (...) @end_sequence()
  %69 = load i32, i32* %1, align 4
  %70 = call i8* @seq_cost(i32 %69)
  store i8* %70, i8** @target_spill_cost, align 8
  ret void
}

declare dso_local i32 @gen_raw_REG(i32, i32) #1

declare dso_local i32 @validize_mem(i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i8* @seq_cost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
