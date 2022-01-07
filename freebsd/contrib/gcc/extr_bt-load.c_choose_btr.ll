; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_choose_btr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_choose_btr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@all_btrs = common dso_local global i32 0, align 4
@give_up = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_alloc_order = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @choose_btr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_btr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @all_btrs, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @give_up, align 4
  %9 = call i32 @GO_IF_HARD_REG_SUBSET(i32 %6, i32 %7, i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @all_btrs, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @TEST_HARD_REG_BIT(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @TEST_HARD_REG_BIT(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %20, %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %10

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @GO_IF_HARD_REG_SUBSET(i32, i32, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
