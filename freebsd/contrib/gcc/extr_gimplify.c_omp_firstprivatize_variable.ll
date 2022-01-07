; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_firstprivatize_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_firstprivatize_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimplify_omp_ctx = type { %struct.gimplify_omp_ctx*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@GOVD_SHARED = common dso_local global i32 0, align 4
@GOVD_FIRSTPRIVATE = common dso_local global i32 0, align 4
@GOVD_SEEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %0, i32* %1) #0 {
  %3 = alloca %struct.gimplify_omp_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.gimplify_omp_ctx* %0, %struct.gimplify_omp_ctx** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @DECL_P(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %60

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %57, %13
  %15 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call %struct.TYPE_3__* @splay_tree_lookup(i32 %17, i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GOVD_SHARED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* @GOVD_FIRSTPRIVATE, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GOVD_SEEN, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %41

40:                                               ; preds = %23
  br label %60

41:                                               ; preds = %30
  br label %53

42:                                               ; preds = %14
  %43 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @GOVD_FIRSTPRIVATE, align 4
  %51 = call i32 @omp_add_variable(%struct.gimplify_omp_ctx* %48, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %54, i32 0, i32 0
  %56 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %55, align 8
  store %struct.gimplify_omp_ctx* %56, %struct.gimplify_omp_ctx** %3, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %59 = icmp ne %struct.gimplify_omp_ctx* %58, null
  br i1 %59, label %14, label %60

60:                                               ; preds = %12, %40, %57
  ret void
}

declare dso_local i32 @DECL_P(i32*) #1

declare dso_local %struct.TYPE_3__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @omp_add_variable(%struct.gimplify_omp_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
