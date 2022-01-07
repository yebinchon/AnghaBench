; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_thread_pool.c_thread_pool_add_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_thread_pool.c_thread_pool_add_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_pool = type { i32, i32, i32 }
%struct.thread_pool_worker = type { void (i8*)*, i32, i8*, i32, i8*, i32, %struct.thread_pool* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@thread_pool_worker_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_pool_add_worker(%struct.thread_pool* %0, i8* %1, i32 %2, i8* (i8*)* %3, void (i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread_pool*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8* (i8*)*, align 8
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.thread_pool_worker*, align 8
  %15 = alloca i32, align 4
  store %struct.thread_pool* %0, %struct.thread_pool** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* (i8*)* %3, i8* (i8*)** %11, align 8
  store void (i8*)* %4, void (i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.thread_pool_worker* @kzalloc(i32 56, i32 %18)
  store %struct.thread_pool_worker* %19, %struct.thread_pool_worker** %14, align 8
  %20 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %21 = icmp ne %struct.thread_pool_worker* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %92

23:                                               ; preds = %6
  %24 = load %struct.thread_pool*, %struct.thread_pool** %8, align 8
  %25 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %26 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %25, i32 0, i32 6
  store %struct.thread_pool* %24, %struct.thread_pool** %26, align 8
  %27 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %28 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %27, i32 0, i32 5
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load void (i8*)*, void (i8*)** %12, align 8
  %31 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %32 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %31, i32 0, i32 0
  store void (i8*)* %30, void (i8*)** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %35 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @thread_pool_worker_func, align 4
  %37 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @kthread_run(i32 %36, %struct.thread_pool_worker* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %41 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %43 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %23
  %48 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %49 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %15, align 4
  br label %89

52:                                               ; preds = %23
  %53 = load i8* (i8*)*, i8* (i8*)** %11, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i8* %53(i8* %54)
  %56 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %57 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %59 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %65 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %15, align 4
  br label %84

68:                                               ; preds = %52
  %69 = load %struct.thread_pool*, %struct.thread_pool** %8, align 8
  %70 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %73 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %72, i32 0, i32 3
  %74 = load %struct.thread_pool*, %struct.thread_pool** %8, align 8
  %75 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %74, i32 0, i32 2
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.thread_pool*, %struct.thread_pool** %8, align 8
  %78 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.thread_pool*, %struct.thread_pool** %8, align 8
  %82 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  store i32 0, i32* %7, align 4
  br label %94

84:                                               ; preds = %63
  %85 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %86 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @kthread_stop(i8* %87)
  br label %89

89:                                               ; preds = %84, %47
  %90 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %14, align 8
  %91 = call i32 @kfree(%struct.thread_pool_worker* %90)
  br label %92

92:                                               ; preds = %89, %22
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %68
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.thread_pool_worker* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @kthread_run(i32, %struct.thread_pool_worker*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kthread_stop(i8*) #1

declare dso_local i32 @kfree(%struct.thread_pool_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
