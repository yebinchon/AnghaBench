; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_thread_pool.c_tpool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_thread_pool.c_tpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @tpool_create(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %56

20:                                               ; preds = %15
  %21 = call %struct.TYPE_4__* @calloc(i32 1, i32 32)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = call i32 @pthread_mutex_init(i32* %28, i32* null)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  %32 = call i32 @pthread_cond_init(i32* %31, i32* null)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = call i32 @pthread_cond_init(i32* %34, i32* null)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = call i32 @pthread_cond_init(i32* %37, i32* null)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = call i32 @pthread_attr_init(i32* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %54 = call i32 @pthread_attr_setdetachstate(i32* %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %5, align 8
  br label %56

56:                                               ; preds = %26, %24, %18
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %57
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
