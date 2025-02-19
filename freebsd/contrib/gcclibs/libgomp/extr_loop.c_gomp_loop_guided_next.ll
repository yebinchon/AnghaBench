; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_guided_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_guided_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @gomp_loop_guided_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gomp_loop_guided_next(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gomp_thread*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %7, %struct.gomp_thread** %6, align 8
  %8 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %9 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @gomp_mutex_lock(i32* %12)
  %14 = load i64*, i64** %3, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = call i32 @gomp_iter_guided_next_locked(i64* %14, i64* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %18 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @gomp_mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_mutex_lock(i32*) #1

declare dso_local i32 @gomp_iter_guided_next_locked(i64*, i64*) #1

declare dso_local i32 @gomp_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
