; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_global_cost_for_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_global_cost_for_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_res_regs = common dso_local global i32 0, align 4
@target_avail_regs = common dso_local global i32 0, align 4
@target_small_cost = common dso_local global i32 0, align 4
@target_pres_cost = common dso_local global i32 0, align 4
@target_spill_cost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @global_cost_for_size(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add i32 %9, %10
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @target_res_regs, align 4
  %14 = add i32 %12, %13
  %15 = load i32, i32* @target_avail_regs, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @target_small_cost, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @target_avail_regs, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @target_pres_cost, align 4
  %29 = load i32, i32* %4, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %50

33:                                               ; preds = %23
  %34 = load i32, i32* @target_pres_cost, align 4
  %35 = load i32, i32* %4, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @target_spill_cost, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @target_avail_regs, align 4
  %44 = sub i32 %42, %43
  %45 = mul i32 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = udiv i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %33, %27
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
