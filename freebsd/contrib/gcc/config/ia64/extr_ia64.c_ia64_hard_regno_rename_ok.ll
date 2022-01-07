; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_hard_regno_rename_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_hard_regno_rename_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_hard_regno_rename_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 3), align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 4), align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 5), align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %13, %9, %2
  store i32 0, i32* %3, align 4
  br label %81

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 3), align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 4), align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 5), align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46, %42, %38, %34, %30
  store i32 0, i32* %3, align 4
  br label %81

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @OUT_REGNO_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 6), align 4
  %62 = call i32 @OUT_REG(i32 %61)
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %81

65:                                               ; preds = %59, %55
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @PR_REGNO_P(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @PR_REGNO_P(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %69, %65
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %73, %64, %54, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @OUT_REGNO_P(i32) #1

declare dso_local i32 @OUT_REG(i32) #1

declare dso_local i64 @PR_REGNO_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
