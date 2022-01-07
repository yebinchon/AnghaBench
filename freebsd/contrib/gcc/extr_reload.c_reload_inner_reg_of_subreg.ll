; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_reload_inner_reg_of_subreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_reload_inner_reg_of_subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @reload_inner_reg_of_subreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_inner_reg_of_subreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @SUBREG, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @SUBREG_REG(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @CONSTANT_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @PLUS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %14
  store i32 1, i32* %4, align 4
  br label %78

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @REG_P(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @REGNO(i32 %31)
  %33 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %26
  store i32 0, i32* %4, align 4
  br label %78

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @subreg_regno(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @HARD_REGNO_MODE_OK(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %78

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = call i32 @GET_MODE_SIZE(i64 %45)
  %47 = load i32, i32* @UNITS_PER_WORD, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @GET_MODE(i32 %53)
  %55 = call i32 @GET_MODE_SIZE(i64 %54)
  %56 = load i32, i32* @UNITS_PER_WORD, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @GET_MODE(i32 %59)
  %61 = call i32 @GET_MODE_SIZE(i64 %60)
  %62 = load i32, i32* @UNITS_PER_WORD, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i64**, i64*** @hard_regno_nregs, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @REGNO(i32 %65)
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @GET_MODE(i32 %69)
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = icmp ne i32 %63, %73
  br label %75

75:                                               ; preds = %58, %52, %49, %43
  %76 = phi i1 [ false, %52 ], [ false, %49 ], [ false, %43 ], [ %74, %58 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %42, %35, %25, %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i32 @subreg_regno(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
