; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_clear_dead_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_clear_dead_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hard_regno_nregs = common dso_local global i32** null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64)* @clear_dead_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_dead_regs(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %59, %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @REG_NOTE_KIND(i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @XEXP(i64 %21, i32 0)
  %23 = call i64 @REG_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @REGNO(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32**, i32*** @hard_regno_nregs, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @GET_MODE(i64 %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %43 = icmp ule i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @gcc_assert(i32 %44)
  br label %46

46:                                               ; preds = %50, %25
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %53, %54
  %56 = call i32 @CLEAR_HARD_REG_BIT(i32 %52, i32 %55)
  br label %46

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %20, %15
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @XEXP(i64 %60, i32 1)
  store i64 %61, i64* %7, align 8
  br label %12

62:                                               ; preds = %12
  ret void
}

declare dso_local i32 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CLEAR_HARD_REG_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
