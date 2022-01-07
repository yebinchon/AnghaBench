; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_get_vfp_saved_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_get_vfp_saved_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@FIRST_VFP_REGNUM = common dso_local global i32 0, align 4
@LAST_VFP_REGNUM = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i32* null, align 8
@call_used_regs = common dso_local global i64* null, align 8
@arm_arch6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @arm_get_vfp_saved_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_get_vfp_saved_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %90

6:                                                ; preds = %0
  %7 = load i64, i64* @TARGET_VFP, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %90

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %68, %9
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @LAST_VFP_REGNUM, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %11
  %16 = load i32*, i32** @regs_ever_live, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i64*, i64** @call_used_regs, align 8
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %22, %15
  %30 = load i32*, i32** @regs_ever_live, align 8
  %31 = load i32, i32* %1, align 4
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i64*, i64** @call_used_regs, align 8
  %39 = load i32, i32* %1, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %2, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @arm_arch6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %51, %48
  %58 = load i32, i32* %2, align 4
  %59 = mul nsw i32 %58, 8
  %60 = add nsw i32 %59, 4
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %45
  store i32 0, i32* %2, align 4
  br label %67

64:                                               ; preds = %37, %22
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add i32 %69, 2
  store i32 %70, i32* %1, align 4
  br label %11

71:                                               ; preds = %11
  %72 = load i32, i32* %2, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @arm_arch6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %77, %74
  %84 = load i32, i32* %2, align 4
  %85 = mul nsw i32 %84, 8
  %86 = add nsw i32 %85, 4
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %71
  br label %90

90:                                               ; preds = %89, %6, %0
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
