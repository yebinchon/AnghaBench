; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_dynamic_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_dynamic_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFS_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64*, i64*)* @gomp_loop_dynamic_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gomp_loop_dynamic_start(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.gomp_thread*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %15, %struct.gomp_thread** %13, align 8
  %16 = call i64 @gomp_work_share_start(i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %6
  %19 = load %struct.gomp_thread*, %struct.gomp_thread** %13, align 8
  %20 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @GFS_DYNAMIC, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @gomp_loop_init(%struct.TYPE_4__* %22, i64 %23, i64 %24, i64 %25, i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %18, %6
  %30 = load i64*, i64** %11, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = call i32 @gomp_iter_dynamic_next_locked(i64* %30, i64* %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.gomp_thread*, %struct.gomp_thread** %13, align 8
  %34 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @gomp_mutex_unlock(i32* %37)
  %39 = load i32, i32* %14, align 4
  ret i32 %39
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i64 @gomp_work_share_start(i32) #1

declare dso_local i32 @gomp_loop_init(%struct.TYPE_4__*, i64, i64, i64, i32, i64) #1

declare dso_local i32 @gomp_iter_dynamic_next_locked(i64*, i64*) #1

declare dso_local i32 @gomp_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
