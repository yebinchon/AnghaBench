; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_simple_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_simple_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLKmode = common dso_local global i64 0, align 8
@flag_non_call_exceptions = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i32 0, align 4
@flag_float_store = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simple_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @MEM_P(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @MEM_VOLATILE_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %48

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GET_MODE(i32 %14)
  %16 = load i64, i64* @BLKmode, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %48

19:                                               ; preds = %13
  %20 = load i64, i64* @flag_non_call_exceptions, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @may_trap_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %48

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @side_effects_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %48

32:                                               ; preds = %27
  %33 = load i32, i32* @stack_pointer_rtx, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @reg_mentioned_p(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %48

38:                                               ; preds = %32
  %39 = load i64, i64* @flag_float_store, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @GET_MODE(i32 %42)
  %44 = call i64 @FLOAT_MODE_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %48

47:                                               ; preds = %41, %38
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %37, %31, %26, %18, %12, %7
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @may_trap_p(i32) #1

declare dso_local i64 @side_effects_p(i32) #1

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i64 @FLOAT_MODE_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
