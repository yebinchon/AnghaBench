; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i32, i64, i32, i32* }
%struct.gomp_team = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_ordered_last() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = alloca %struct.gomp_work_share*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %6, %struct.gomp_thread** %1, align 8
  %7 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %8 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.gomp_team*, %struct.gomp_team** %9, align 8
  store %struct.gomp_team* %10, %struct.gomp_team** %2, align 8
  %11 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %12 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.gomp_work_share*, %struct.gomp_work_share** %13, align 8
  store %struct.gomp_work_share* %14, %struct.gomp_work_share** %3, align 8
  %15 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %16 = icmp eq %struct.gomp_team* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %0
  %18 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %19 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %0
  br label %61

23:                                               ; preds = %17
  %24 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %25 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %27 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %23
  %32 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %33 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %38 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %45 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %47 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %54 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gomp_sem_post(i32 %59)
  br label %61

61:                                               ; preds = %22, %42, %23
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
