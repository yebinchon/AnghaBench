; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_count_pseudo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_count_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_renumber = common dso_local global i32* null, align 8
@pseudos_counted = common dso_local global i32 0, align 4
@spilled_pseudos = common dso_local global i32 0, align 4
@spill_add_cost = common dso_local global i32* null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@spill_cost = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @count_pseudo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_pseudo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @REG_FREQ(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** @reg_renumber, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @REGNO_REG_SET_P(i32* @pseudos_counted, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @REGNO_REG_SET_P(i32* @spilled_pseudos, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  br label %58

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @SET_REGNO_REG_SET(i32* @pseudos_counted, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @spill_add_cost, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load i32**, i32*** @hard_regno_nregs, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @PSEUDO_REGNO_MODE(i32 %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %48, %21
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32*, i32** @spill_cost, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %49
  store i32 %57, i32* %55, align 4
  br label %44

58:                                               ; preds = %20, %44
  ret void
}

declare dso_local i32 @REG_FREQ(i32) #1

declare dso_local i64 @REGNO_REG_SET_P(i32*, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @PSEUDO_REGNO_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
