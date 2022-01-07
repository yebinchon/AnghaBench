; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_return_in_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_return_in_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@MS_AGGREGATE_RETURN = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@TARGET_MMX = common dso_local global i64 0, align 8
@TARGET_SSE = common dso_local global i64 0, align 8
@XFmode = common dso_local global i32 0, align 4
@TDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_return_in_memory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @type_natural_mode(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* @TARGET_64BIT, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @examine_argument(i32 %13, i32 %14, i32 1, i32* %4, i32* %5)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BLKmode, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %81

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @int_size_in_bytes(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* @MS_AGGREGATE_RETURN, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @AGGREGATE_TYPE_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %81

37:                                               ; preds = %33, %29, %24
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @VECTOR_MODE_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TImode, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %81

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i64, i64* @TARGET_MMX, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  store i32 %56, i32* %2, align 4
  br label %81

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* @TARGET_SSE, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  store i32 %64, i32* %2, align 4
  br label %81

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @XFmode, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %81

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @TDmode, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 12
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %81

80:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %79, %75, %70, %60, %52, %48, %36, %23, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @type_natural_mode(i32) #1

declare dso_local i32 @examine_argument(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i64 @VECTOR_MODE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
