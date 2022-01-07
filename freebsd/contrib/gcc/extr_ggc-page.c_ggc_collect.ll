; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float, i64, i32, i32 }

@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GGC_MIN_HEAPSIZE = common dso_local global i32 0, align 4
@GGC_MIN_EXPAND = common dso_local global i32 0, align 4
@ggc_force_collect = common dso_local global i32 0, align 4
@TV_GC = common dso_local global i32 0, align 4
@quiet_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c" {GC %luk -> \00", align 1
@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"BEGIN COLLECTING\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%luk}\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"END COLLECTING\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_collect() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  %4 = load i32, i32* @GGC_MIN_HEAPSIZE, align 4
  %5 = call float @PARAM_VALUE(i32 %4)
  %6 = fptoui float %5 to i64
  %7 = mul i64 %6, 1024
  %8 = call float @MAX(float %3, i64 %7)
  store float %8, float* %1, align 4
  %9 = load float, float* %1, align 4
  %10 = load i32, i32* @GGC_MIN_EXPAND, align 4
  %11 = call float @PARAM_VALUE(i32 %10)
  %12 = fmul float %9, %11
  %13 = fdiv float %12, 1.000000e+02
  store float %13, float* %2, align 4
  %14 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 4
  %15 = load float, float* %1, align 4
  %16 = load float, float* %2, align 4
  %17 = fadd float %15, %16
  %18 = fcmp olt float %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @ggc_force_collect, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %69

23:                                               ; preds = %19, %0
  %24 = load i32, i32* @TV_GC, align 4
  %25 = call i32 @timevar_push(i32 %24)
  %26 = load i32, i32* @quiet_flag, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 4
  %31 = fptoui float %30 to i64
  %32 = udiv i64 %31, 1024
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 4), align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 4
  %41 = call i32 (...) @release_pages()
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 3), align 8
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = sub i64 %45, 1
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 2), align 8
  %47 = call i32 (...) @clear_marks()
  %48 = call i32 (...) @ggc_mark_roots()
  %49 = call i32 (...) @poison_pages()
  %50 = call i32 (...) @validate_free_objects()
  %51 = call i32 (...) @sweep_pages()
  %52 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 4
  store float %52, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  %53 = load i32, i32* @TV_GC, align 4
  %54 = call i32 @timevar_pop(i32 %53)
  %55 = load i32, i32* @quiet_flag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* @stderr, align 4
  %59 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 4
  %60 = fptoui float %59 to i64
  %61 = udiv i64 %60, 1024
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %57, %40
  %64 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 4), align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %22, %66, %63
  ret void
}

declare dso_local float @MAX(float, i64) #1

declare dso_local float @PARAM_VALUE(i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @release_pages(...) #1

declare dso_local i32 @clear_marks(...) #1

declare dso_local i32 @ggc_mark_roots(...) #1

declare dso_local i32 @poison_pages(...) #1

declare dso_local i32 @validate_free_objects(...) #1

declare dso_local i32 @sweep_pages(...) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
