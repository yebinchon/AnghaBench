; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_covers_regno_no_parallel_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_covers_regno_no_parallel_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @covers_regno_no_parallel_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @covers_regno_no_parallel_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @SUBREG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GET_MODE(i32 %13)
  %15 = call i32 @GET_MODE_SIZE(i64 %14)
  %16 = load i32, i32* @UNITS_PER_WORD, align 4
  %17 = add nsw i32 %15, %16
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @UNITS_PER_WORD, align 4
  %20 = sdiv i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @SUBREG_REG(i32 %21)
  %23 = call i64 @GET_MODE(i32 %22)
  %24 = call i32 @GET_MODE_SIZE(i64 %23)
  %25 = load i32, i32* @UNITS_PER_WORD, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @UNITS_PER_WORD, align 4
  %29 = sdiv i32 %27, %28
  %30 = icmp eq i32 %20, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %12
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @SUBREG_REG(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %12, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @REG_P(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %72

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @REGNO(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  br label %60

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32**, i32*** @hard_regno_nregs, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @GET_MODE(i32 %55)
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %49, %58
  br label %60

60:                                               ; preds = %48, %45
  %61 = phi i32 [ %47, %45 ], [ %59, %48 ]
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ult i32 %66, %67
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i1 [ false, %60 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %38
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
