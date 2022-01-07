; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_free_team.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_free_team.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_team = type { i32, i32, i32, %struct.gomp_team* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gomp_team*)* @free_team to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_team(%struct.gomp_team* %0) #0 {
  %2 = alloca %struct.gomp_team*, align 8
  store %struct.gomp_team* %0, %struct.gomp_team** %2, align 8
  %3 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %4 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %3, i32 0, i32 3
  %5 = load %struct.gomp_team*, %struct.gomp_team** %4, align 8
  %6 = call i32 @free(%struct.gomp_team* %5)
  %7 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %8 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %7, i32 0, i32 2
  %9 = call i32 @gomp_mutex_destroy(i32* %8)
  %10 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %11 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %10, i32 0, i32 1
  %12 = call i32 @gomp_barrier_destroy(i32* %11)
  %13 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %14 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %13, i32 0, i32 0
  %15 = call i32 @gomp_sem_destroy(i32* %14)
  %16 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %17 = call i32 @free(%struct.gomp_team* %16)
  ret void
}

declare dso_local i32 @free(%struct.gomp_team*) #1

declare dso_local i32 @gomp_mutex_destroy(i32*) #1

declare dso_local i32 @gomp_barrier_destroy(i32*) #1

declare dso_local i32 @gomp_sem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
