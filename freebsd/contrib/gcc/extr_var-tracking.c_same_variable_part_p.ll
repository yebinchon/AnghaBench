; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_same_variable_part_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_same_variable_part_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @same_variable_part_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_variable_part_p(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @DECL_P(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @REG_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @REG_EXPR(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @REG_OFFSET(i32 %21)
  store i64 %22, i64* %9, align 8
  br label %34

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @MEM_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @MEM_EXPR(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @INT_MEM_OFFSET(i32 %30)
  store i64 %31, i64* %9, align 8
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %57

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @DECL_P(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %34
  store i32 0, i32* %4, align 4
  br label %57

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @var_debug_decl(i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @var_debug_decl(i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %42
  %55 = phi i1 [ false, %42 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %41, %32, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REG_EXPR(i32) #1

declare dso_local i64 @REG_OFFSET(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @MEM_EXPR(i32) #1

declare dso_local i64 @INT_MEM_OFFSET(i32) #1

declare dso_local i64 @var_debug_decl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
