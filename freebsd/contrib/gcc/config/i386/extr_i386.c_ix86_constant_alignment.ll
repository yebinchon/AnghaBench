; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_constant_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_constant_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_CST = common dso_local global i64 0, align 8
@DFmode = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i64 0, align 8
@TARGET_NO_ALIGN_LONG_STRINGS = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_constant_alignment(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @REAL_CST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_TYPE(i32 %11)
  %13 = call i64 @TYPE_MODE(i32 %12)
  %14 = load i64, i64* @DFmode, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 64
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 64, i32* %3, align 4
  br label %56

20:                                               ; preds = %16, %10
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i64 @TYPE_MODE(i32 %22)
  %24 = call i64 @ALIGN_MODE_128(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 128, i32* %3, align 4
  br label %56

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30
  br label %54

32:                                               ; preds = %2
  %33 = load i32, i32* @optimize_size, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @STRING_CST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* @TARGET_NO_ALIGN_LONG_STRINGS, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TREE_STRING_LENGTH(i32 %44)
  %46 = icmp sge i32 %45, 31
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @BITS_PER_WORD, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @BITS_PER_WORD, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %47, %43, %40, %35, %32
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %51, %29, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @ALIGN_MODE_128(i64) #1

declare dso_local i32 @TREE_STRING_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
