; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_free_dependency_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_free_dependency_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@true_dependency_cache = common dso_local global i32* null, align 8
@cache_size = common dso_local global i32 0, align 4
@output_dependency_cache = common dso_local global i32* null, align 8
@anti_dependency_cache = common dso_local global i32* null, align 8
@current_sched_info = common dso_local global %struct.TYPE_2__* null, align 8
@DO_SPECULATION = common dso_local global i32 0, align 4
@spec_dependency_cache = common dso_local global i32* null, align 8
@forward_dependency_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dependency_caches() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @true_dependency_cache, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %58

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %38, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @cache_size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load i32*, i32** @true_dependency_cache, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @bitmap_clear(i32* %13)
  %15 = load i32*, i32** @output_dependency_cache, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @bitmap_clear(i32* %18)
  %20 = load i32*, i32** @anti_dependency_cache, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @bitmap_clear(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DO_SPECULATION, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %9
  %32 = load i32*, i32** @spec_dependency_cache, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @bitmap_clear(i32* %35)
  br label %37

37:                                               ; preds = %31, %9
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load i32*, i32** @true_dependency_cache, align 8
  %43 = call i32 @free(i32* %42)
  store i32* null, i32** @true_dependency_cache, align 8
  %44 = load i32*, i32** @output_dependency_cache, align 8
  %45 = call i32 @free(i32* %44)
  store i32* null, i32** @output_dependency_cache, align 8
  %46 = load i32*, i32** @anti_dependency_cache, align 8
  %47 = call i32 @free(i32* %46)
  store i32* null, i32** @anti_dependency_cache, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DO_SPECULATION, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32*, i32** @spec_dependency_cache, align 8
  %56 = call i32 @free(i32* %55)
  store i32* null, i32** @spec_dependency_cache, align 8
  br label %57

57:                                               ; preds = %54, %41
  br label %58

58:                                               ; preds = %57, %0
  ret void
}

declare dso_local i32 @bitmap_clear(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
