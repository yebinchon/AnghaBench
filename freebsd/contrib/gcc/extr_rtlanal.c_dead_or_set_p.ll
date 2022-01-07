; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_dead_or_set_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_dead_or_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CC0 = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dead_or_set_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @CC0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @REG_P(i32 %15)
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @REGNO(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  br label %38

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load i32**, i32*** @hard_regno_nregs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @GET_MODE(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %26, %35
  %37 = sub i32 %36, 1
  br label %38

38:                                               ; preds = %25, %23
  %39 = phi i32 [ %24, %23 ], [ %37, %25 ]
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %52, %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dead_or_set_regno_p(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %41

55:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @dead_or_set_regno_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
