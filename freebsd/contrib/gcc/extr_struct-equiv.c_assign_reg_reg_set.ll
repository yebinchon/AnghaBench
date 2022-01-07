; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_assign_reg_reg_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_assign_reg_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @assign_reg_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_reg_reg_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @REGNO(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @reload_completed, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  store i32 1, i32* %8, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load i32**, i32*** @hard_regno_nregs, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GET_MODE(i32 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %16
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %63, %32
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @REGNO_REG_SET_P(i32 %42, i32 %43)
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %63

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @SET_REGNO_REG_SET(i32 %53, i32 %54)
  br label %62

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @CLEAR_REGNO_REG_SET(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @REGNO_REG_SET_P(i32, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

declare dso_local i32 @CLEAR_REGNO_REG_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
