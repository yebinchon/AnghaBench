; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_single.c_GOMP_single_copy_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_single.c_GOMP_single_copy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GOMP_single_copy_start() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %4, %struct.gomp_thread** %1, align 8
  %5 = call i32 @gomp_work_share_start(i32 0)
  store i32 %5, i32* %2, align 4
  %6 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %7 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = call i32 @gomp_mutex_unlock(i32* %10)
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i8* null, i8** %3, align 8
  br label %29

15:                                               ; preds = %0
  %16 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %17 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @gomp_barrier_wait(i32* %20)
  %22 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %23 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  %28 = call i32 (...) @gomp_work_share_end_nowait()
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_work_share_start(i32) #1

declare dso_local i32 @gomp_mutex_unlock(i32*) #1

declare dso_local i32 @gomp_barrier_wait(i32*) #1

declare dso_local i32 @gomp_work_share_end_nowait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
