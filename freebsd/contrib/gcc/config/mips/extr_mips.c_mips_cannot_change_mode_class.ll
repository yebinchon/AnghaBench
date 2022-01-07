; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_cannot_change_mode_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_cannot_change_mode_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i64 0, align 8
@TARGET_BIG_ENDIAN = common dso_local global i64 0, align 8
@FP_INC = common dso_local global i32 0, align 4
@FP_REGS = common dso_local global i32 0, align 4
@ACC_REGS = common dso_local global i32 0, align 4
@TARGET_FLOAT64 = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_cannot_change_mode_class(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @GET_MODE_SIZE(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @GET_MODE_SIZE(i32 %10)
  %12 = call i64 @MIN(i64 %9, i64 %11)
  %13 = load i64, i64* @UNITS_PER_WORD, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @GET_MODE_SIZE(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @GET_MODE_SIZE(i32 %18)
  %20 = call i64 @MAX(i64 %17, i64 %19)
  %21 = load i64, i64* @UNITS_PER_WORD, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = load i64, i64* @TARGET_BIG_ENDIAN, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* @FP_INC, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @FP_REGS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @reg_classes_intersect_p(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %63

35:                                               ; preds = %29, %26
  br label %43

36:                                               ; preds = %23
  %37 = load i32, i32* @ACC_REGS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @reg_classes_intersect_p(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %63

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %15, %3
  %45 = load i64, i64* @TARGET_FLOAT64, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SImode, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @GET_MODE_SIZE(i32 %52)
  %54 = load i64, i64* @UNITS_PER_WORD, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @FP_REGS, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @reg_classes_intersect_p(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %63

62:                                               ; preds = %56, %51, %47, %44
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %41, %34
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @reg_classes_intersect_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
