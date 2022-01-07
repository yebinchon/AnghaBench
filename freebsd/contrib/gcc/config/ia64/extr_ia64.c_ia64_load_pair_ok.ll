; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_load_pair_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_load_pair_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_load_pair_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @GET_CODE(i32 %7)
  %9 = icmp ne i32 %8, 128
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @REGNO(i32 %11)
  %13 = call i32 @FP_REGNO_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %53

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GET_CODE(i32 %17)
  %19 = load i32, i32* @MEM, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @MEM_VOLATILE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  store i32 0, i32* %3, align 4
  br label %53

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = call i32 @GET_CODE(i32 %28)
  switch i32 %29, label %50 [
    i32 128, label %30
    i32 130, label %30
    i32 131, label %31
    i32 129, label %32
  ]

30:                                               ; preds = %26, %26
  br label %52

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %53

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @XEXP(i32 %33, i32 0)
  %35 = call i32 @XEXP(i32 %34, i32 1)
  %36 = call i32 @XEXP(i32 %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @GET_CODE(i32 %37)
  %39 = load i32, i32* @CONST_INT, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @INTVAL(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @GET_MODE(i32 %44)
  %46 = call i32 @GET_MODE_SIZE(i32 %45)
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %32
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %41
  br label %52

50:                                               ; preds = %26
  %51 = call i32 (...) @abort() #3
  unreachable

52:                                               ; preds = %49, %30
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48, %31, %25, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @FP_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
