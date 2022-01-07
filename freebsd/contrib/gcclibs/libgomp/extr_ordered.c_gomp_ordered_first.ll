; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i32, i32, i64* }
%struct.gomp_team = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_ordered_first() #0 {
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
  %14 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %15 = icmp eq %struct.gomp_team* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %0
  %17 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %18 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %0
  br label %68

22:                                               ; preds = %16
  %23 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %24 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %27 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %32 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %37 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %22
  %42 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %43 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %47 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %45, i64* %51, align 8
  %52 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %53 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %41
  %58 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %59 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %62 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gomp_sem_post(i32 %66)
  br label %68

68:                                               ; preds = %21, %57, %41
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
