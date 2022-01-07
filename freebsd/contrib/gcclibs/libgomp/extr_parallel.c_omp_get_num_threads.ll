; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_parallel.c_omp_get_num_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_parallel.c_omp_get_num_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_team = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gomp_team* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omp_get_num_threads() #0 {
  %1 = alloca %struct.gomp_team*, align 8
  %2 = call %struct.TYPE_4__* (...) @gomp_thread()
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load %struct.gomp_team*, %struct.gomp_team** %4, align 8
  store %struct.gomp_team* %5, %struct.gomp_team** %1, align 8
  %6 = load %struct.gomp_team*, %struct.gomp_team** %1, align 8
  %7 = icmp ne %struct.gomp_team* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load %struct.gomp_team*, %struct.gomp_team** %1, align 8
  %10 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  br label %13

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ %11, %8 ], [ 1, %12 ]
  ret i32 %14
}

declare dso_local %struct.TYPE_4__* @gomp_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
