; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_extend_dependency_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_extend_dependency_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@true_dependency_cache = common dso_local global i32* null, align 8
@cache_size = common dso_local global i32 0, align 4
@bitmap_head = common dso_local global i32 0, align 4
@output_dependency_cache = common dso_local global i32* null, align 8
@anti_dependency_cache = common dso_local global i32* null, align 8
@current_sched_info = common dso_local global %struct.TYPE_2__* null, align 8
@DO_SPECULATION = common dso_local global i32 0, align 4
@spec_dependency_cache = common dso_local global i32* null, align 8
@forward_dependency_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extend_dependency_caches(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** @true_dependency_cache, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %79

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @cache_size, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @bitmap_head, align 4
  %17 = load i32*, i32** @true_dependency_cache, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @XRESIZEVEC(i32 %16, i32* %17, i32 %18)
  store i32* %19, i32** @true_dependency_cache, align 8
  %20 = load i32, i32* @bitmap_head, align 4
  %21 = load i32*, i32** @output_dependency_cache, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32* @XRESIZEVEC(i32 %20, i32* %21, i32 %22)
  store i32* %23, i32** @output_dependency_cache, align 8
  %24 = load i32, i32* @bitmap_head, align 4
  %25 = load i32*, i32** @anti_dependency_cache, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32* @XRESIZEVEC(i32 %24, i32* %25, i32 %26)
  store i32* %27, i32** @anti_dependency_cache, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DO_SPECULATION, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %12
  %35 = load i32, i32* @bitmap_head, align 4
  %36 = load i32*, i32** @spec_dependency_cache, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @XRESIZEVEC(i32 %35, i32* %36, i32 %37)
  store i32* %38, i32** @spec_dependency_cache, align 8
  br label %39

39:                                               ; preds = %34, %12
  %40 = load i32, i32* @cache_size, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %74, %39
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i32*, i32** @true_dependency_cache, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @bitmap_initialize(i32* %49, i32 0)
  %51 = load i32*, i32** @output_dependency_cache, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @bitmap_initialize(i32* %54, i32 0)
  %56 = load i32*, i32** @anti_dependency_cache, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @bitmap_initialize(i32* %59, i32 0)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DO_SPECULATION, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %45
  %68 = load i32*, i32** @spec_dependency_cache, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @bitmap_initialize(i32* %71, i32 0)
  br label %73

73:                                               ; preds = %67, %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %41

77:                                               ; preds = %41
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* @cache_size, align 4
  br label %79

79:                                               ; preds = %77, %9
  ret void
}

declare dso_local i32* @XRESIZEVEC(i32, i32*, i32) #1

declare dso_local i32 @bitmap_initialize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
