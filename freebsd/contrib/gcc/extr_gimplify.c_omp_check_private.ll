; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_check_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_check_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (i64)* }
%struct.gimplify_omp_ctx = type { i32, %struct.gimplify_omp_ctx*, i32 }
%struct.TYPE_6__ = type { i32 }

@lang_hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GOVD_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gimplify_omp_ctx*, i64)* @omp_check_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omp_check_private(%struct.gimplify_omp_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gimplify_omp_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.gimplify_omp_ctx* %0, %struct.gimplify_omp_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %44, %2
  %8 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %8, i32 0, i32 1
  %10 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %9, align 8
  store %struct.gimplify_omp_ctx* %10, %struct.gimplify_omp_ctx** %4, align 8
  %11 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %12 = icmp eq %struct.gimplify_omp_ctx* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @is_global_var(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 %18(i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i1 [ true, %13 ], [ %21, %17 ]
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %7
  %27 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_6__* @splay_tree_lookup(i32 %29, i32 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GOVD_SHARED, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %7, label %50

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %35, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @is_global_var(i64) #1

declare dso_local %struct.TYPE_6__* @splay_tree_lookup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
