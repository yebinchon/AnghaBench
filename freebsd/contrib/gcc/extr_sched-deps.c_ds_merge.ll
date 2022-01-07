; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_ds_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_ds_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPECULATIVE = common dso_local global i32 0, align 4
@DEP_TYPES = common dso_local global i32 0, align 4
@FIRST_SPEC_TYPE = common dso_local global i32 0, align 4
@MAX_DEP_WEAK = common dso_local global i32 0, align 4
@MIN_DEP_WEAK = common dso_local global i32 0, align 4
@LAST_SPEC_TYPE = common dso_local global i32 0, align 4
@SPEC_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ds_merge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SPECULATIVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SPECULATIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DEP_TYPES, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DEP_TYPES, align 4
  %26 = and i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @FIRST_SPEC_TYPE, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %105, %17
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %96

45:                                               ; preds = %34, %29
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %95

61:                                               ; preds = %50, %45
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @get_dep_weak(i32 %72, i32 %73)
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @get_dep_weak(i32 %76, i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = mul nsw i32 %75, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @MAX_DEP_WEAK, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sdiv i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MIN_DEP_WEAK, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* @MIN_DEP_WEAK, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %71
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @set_dep_weak(i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %66, %61
  br label %95

95:                                               ; preds = %94, %55
  br label %96

96:                                               ; preds = %95, %39
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @LAST_SPEC_TYPE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %106

101:                                              ; preds = %96
  %102 = load i32, i32* @SPEC_TYPE_SHIFT, align 4
  %103 = load i32, i32* %6, align 4
  %104 = shl i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101
  br i1 true, label %29, label %106

106:                                              ; preds = %105, %100
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @get_dep_weak(i32, i32) #1

declare dso_local i32 @set_dep_weak(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
