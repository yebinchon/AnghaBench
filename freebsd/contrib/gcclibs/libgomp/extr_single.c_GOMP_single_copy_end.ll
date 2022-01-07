; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_single.c_GOMP_single_copy_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_single.c_GOMP_single_copy_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.gomp_team* }
%struct.TYPE_3__ = type { i8* }
%struct.gomp_team = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GOMP_single_copy_end(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gomp_thread*, align 8
  %4 = alloca %struct.gomp_team*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %5, %struct.gomp_thread** %3, align 8
  %6 = load %struct.gomp_thread*, %struct.gomp_thread** %3, align 8
  %7 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.gomp_team*, %struct.gomp_team** %8, align 8
  store %struct.gomp_team* %9, %struct.gomp_team** %4, align 8
  %10 = load %struct.gomp_team*, %struct.gomp_team** %4, align 8
  %11 = icmp ne %struct.gomp_team* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.gomp_thread*, %struct.gomp_thread** %3, align 8
  %15 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* %13, i8** %18, align 8
  %19 = load %struct.gomp_team*, %struct.gomp_team** %4, align 8
  %20 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %19, i32 0, i32 0
  %21 = call i32 @gomp_barrier_wait(i32* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = call i32 (...) @gomp_work_share_end_nowait()
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_barrier_wait(i32*) #1

declare dso_local i32 @gomp_work_share_end_nowait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
