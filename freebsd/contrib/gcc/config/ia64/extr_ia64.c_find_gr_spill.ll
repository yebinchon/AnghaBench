; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_find_gr_spill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_find_gr_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@current_function_is_leaf = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@call_used_regs = common dso_local global i64* null, align 8
@fixed_regs = common dso_local global i32* null, align 8
@global_regs = common dso_local global i32* null, align 8
@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@frame_pointer_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_gr_spill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_gr_spill(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @current_function_is_leaf, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  %8 = call i32 @GR_REG(i32 1)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %54, %7
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GR_REG(i32 31)
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load i32*, i32** @regs_ever_live, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %13
  %21 = load i64*, i64** @call_used_regs, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load i32*, i32** @fixed_regs, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** @global_regs, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %41, %34, %27, %20, %13
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %9

57:                                               ; preds = %9
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @frame_pointer_needed, align 4
  %65 = sub nsw i32 80, %64
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 4
  %70 = call i32 @LOC_REG(i32 0)
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %58
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %67, %47
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @GR_REG(i32) #1

declare dso_local i32 @LOC_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
