; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_static_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_static_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i32, i32* }
%struct.gomp_team = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_ordered_static_next() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = alloca %struct.gomp_work_share*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %5, %struct.gomp_thread** %1, align 8
  %6 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %7 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load %struct.gomp_team*, %struct.gomp_team** %8, align 8
  store %struct.gomp_team* %9, %struct.gomp_team** %2, align 8
  %10 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %11 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.gomp_work_share*, %struct.gomp_work_share** %12, align 8
  store %struct.gomp_work_share* %13, %struct.gomp_work_share** %3, align 8
  %14 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %15 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %19 = icmp eq %struct.gomp_team* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %0
  %21 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %22 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %0
  br label %50

26:                                               ; preds = %20
  %27 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %28 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %32 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %39 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %43 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gomp_sem_post(i32 %48)
  br label %50

50:                                               ; preds = %36, %25
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_sem_post(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
