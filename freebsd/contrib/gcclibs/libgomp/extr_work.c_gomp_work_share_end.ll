; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_work.c_gomp_work_share_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_work.c_gomp_work_share_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i32 }
%struct.gomp_team = type { i32, i32, i64, i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_work_share_end() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = alloca %struct.gomp_work_share*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %6, %struct.gomp_thread** %1, align 8
  %7 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %8 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.gomp_team*, %struct.gomp_team** %9, align 8
  store %struct.gomp_team* %10, %struct.gomp_team** %2, align 8
  %11 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %12 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.gomp_work_share*, %struct.gomp_work_share** %13, align 8
  store %struct.gomp_work_share* %14, %struct.gomp_work_share** %3, align 8
  %15 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %16 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.gomp_work_share* null, %struct.gomp_work_share** %17, align 8
  %18 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %19 = icmp eq %struct.gomp_team* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %22 = call i32 @free_work_share(%struct.gomp_work_share* %21)
  br label %57

23:                                               ; preds = %0
  %24 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %25 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %24, i32 0, i32 1
  %26 = call i32 @gomp_barrier_wait_start(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %31 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %35 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %39 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %38, i32 0, i32 4
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %45 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %49 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %51 = call i32 @free_work_share(%struct.gomp_work_share* %50)
  br label %52

52:                                               ; preds = %29, %23
  %53 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %54 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %53, i32 0, i32 1
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @gomp_barrier_wait_end(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %20
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @free_work_share(%struct.gomp_work_share*) #1

declare dso_local i32 @gomp_barrier_wait_start(i32*) #1

declare dso_local i32 @gomp_barrier_wait_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
