; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_static_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_static_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gomp_team* }
%struct.gomp_team = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_ordered_static_init() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %3, %struct.gomp_thread** %1, align 8
  %4 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %5 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.gomp_team*, %struct.gomp_team** %6, align 8
  store %struct.gomp_team* %7, %struct.gomp_team** %2, align 8
  %8 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %9 = icmp eq %struct.gomp_team* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  %11 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %12 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %0
  br label %23

16:                                               ; preds = %10
  %17 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %18 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gomp_sem_post(i32 %21)
  br label %23

23:                                               ; preds = %16, %15
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
