; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_new_team.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_new_team.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_team = type { i32, i32, i32, i32**, i32, %struct.gomp_work_share**, i32, i32, i32 }
%struct.gomp_work_share = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gomp_team* (i32, %struct.gomp_work_share*)* @new_team to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gomp_team* @new_team(i32 %0, %struct.gomp_work_share* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gomp_work_share*, align 8
  %5 = alloca %struct.gomp_team*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gomp_work_share* %1, %struct.gomp_work_share** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = add i64 56, %9
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i8* @gomp_malloc(i32 %12)
  %14 = bitcast i8* %13 to %struct.gomp_team*
  store %struct.gomp_team* %14, %struct.gomp_team** %5, align 8
  %15 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %16 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %15, i32 0, i32 8
  %17 = call i32 @gomp_mutex_init(i32* %16)
  %18 = call i8* @gomp_malloc(i32 32)
  %19 = bitcast i8* %18 to %struct.gomp_work_share**
  %20 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %21 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %20, i32 0, i32 5
  store %struct.gomp_work_share** %19, %struct.gomp_work_share*** %21, align 8
  %22 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %23 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %22, i32 0, i32 0
  store i32 3, i32* %23, align 8
  %24 = load %struct.gomp_work_share*, %struct.gomp_work_share** %4, align 8
  %25 = icmp eq %struct.gomp_work_share* %24, null
  %26 = zext i1 %25 to i32
  %27 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %28 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.gomp_work_share*, %struct.gomp_work_share** %4, align 8
  %30 = icmp ne %struct.gomp_work_share* %29, null
  %31 = zext i1 %30 to i32
  %32 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %33 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.gomp_work_share*, %struct.gomp_work_share** %4, align 8
  %35 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %36 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %35, i32 0, i32 5
  %37 = load %struct.gomp_work_share**, %struct.gomp_work_share*** %36, align 8
  %38 = getelementptr inbounds %struct.gomp_work_share*, %struct.gomp_work_share** %37, i64 0
  store %struct.gomp_work_share* %34, %struct.gomp_work_share** %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %41 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %43 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %42, i32 0, i32 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @gomp_barrier_init(i32* %43, i32 %44)
  %46 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %47 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %46, i32 0, i32 2
  %48 = call i32 @gomp_sem_init(i32* %47, i32 0)
  %49 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %50 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %49, i32 0, i32 2
  %51 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  %52 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %51, i32 0, i32 3
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  store i32* %50, i32** %54, align 8
  %55 = load %struct.gomp_team*, %struct.gomp_team** %5, align 8
  ret %struct.gomp_team* %55
}

declare dso_local i8* @gomp_malloc(i32) #1

declare dso_local i32 @gomp_mutex_init(i32*) #1

declare dso_local i32 @gomp_barrier_init(i32*, i32) #1

declare dso_local i32 @gomp_sem_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
