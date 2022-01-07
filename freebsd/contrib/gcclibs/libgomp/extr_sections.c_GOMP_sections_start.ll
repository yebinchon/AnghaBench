; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_sections.c_GOMP_sections_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_sections.c_GOMP_sections_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GOMP_sections_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gomp_thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %7, %struct.gomp_thread** %3, align 8
  %8 = call i64 @gomp_work_share_start(i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.gomp_thread*, %struct.gomp_thread** %3, align 8
  %12 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @gomp_sections_init(%struct.TYPE_4__* %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = call i64 @gomp_iter_dynamic_next_locked(i64* %4, i64* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %6, align 8
  br label %23

22:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %22, %20
  %24 = load %struct.gomp_thread*, %struct.gomp_thread** %3, align 8
  %25 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @gomp_mutex_unlock(i32* %28)
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i64 @gomp_work_share_start(i32) #1

declare dso_local i32 @gomp_sections_init(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @gomp_iter_dynamic_next_locked(i64*, i64*) #1

declare dso_local i32 @gomp_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
