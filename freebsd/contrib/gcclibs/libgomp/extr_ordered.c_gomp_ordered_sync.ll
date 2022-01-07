; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i64 }
%struct.gomp_team = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_ordered_sync() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = alloca %struct.gomp_work_share*, align 8
  %4 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %4, %struct.gomp_thread** %1, align 8
  %5 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %6 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load %struct.gomp_team*, %struct.gomp_team** %7, align 8
  store %struct.gomp_team* %8, %struct.gomp_team** %2, align 8
  %9 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %10 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.gomp_work_share*, %struct.gomp_work_share** %11, align 8
  store %struct.gomp_work_share* %12, %struct.gomp_work_share** %3, align 8
  %13 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %14 = icmp eq %struct.gomp_team* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %0
  %16 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %17 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %0
  br label %47

21:                                               ; preds = %15
  %22 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %23 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %26 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %21
  %31 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %32 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %35 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gomp_sem_wait(i32 %39)
  %41 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %42 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %46 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %20, %30, %21
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_sem_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
