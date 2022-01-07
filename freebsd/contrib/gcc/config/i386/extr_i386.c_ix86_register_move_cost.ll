; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_register_move_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_register_move_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ix86_cost = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_register_move_cost(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @ix86_secondary_memory_needed(i32 %9, i32 %10, i32 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MEMORY_MOVE_COST(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @MEMORY_MOVE_COST(i32 %18, i32 %19, i32 1)
  %21 = call i64 @MAX(i32 %17, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @MEMORY_MOVE_COST(i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @MEMORY_MOVE_COST(i32 %29, i32 %30, i32 1)
  %32 = call i64 @MAX(i32 %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @CLASS_MAX_NREGS(i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @CLASS_MAX_NREGS(i32 %40, i32 %41)
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %14
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 20
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %14
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @MMX_CLASS_P(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @MAYBE_FLOAT_CLASS_P(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @MMX_CLASS_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @MAYBE_FLOAT_CLASS_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %51
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 20
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %59, %55
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %109

68:                                               ; preds = %3
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @MMX_CLASS_P(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @MMX_CLASS_P(i32 %71)
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @SSE_CLASS_P(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @SSE_CLASS_P(i32 %77)
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74, %68
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %4, align 4
  br label %109

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @MAYBE_FLOAT_CLASS_P(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %4, align 4
  br label %109

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @MAYBE_SSE_CLASS_P(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %4, align 4
  br label %109

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @MAYBE_MMX_CLASS_P(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %100
  store i32 2, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %104, %96, %88, %80, %66
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @ix86_secondary_memory_needed(i32, i32, i32, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @MEMORY_MOVE_COST(i32, i32, i32) #1

declare dso_local i64 @CLASS_MAX_NREGS(i32, i32) #1

declare dso_local i64 @MMX_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_FLOAT_CLASS_P(i32) #1

declare dso_local i64 @SSE_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_SSE_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_MMX_CLASS_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
