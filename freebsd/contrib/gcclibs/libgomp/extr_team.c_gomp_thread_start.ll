; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_gomp_thread_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_gomp_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { void (i8*)*, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32*, %struct.gomp_team* }
%struct.gomp_team = type { i32, i32** }
%struct.gomp_thread_start_data = type { void (i8*)*, i64, %struct.TYPE_2__, i8* }

@gomp_tls_key = common dso_local global i32 0, align 4
@gomp_threads = common dso_local global %struct.gomp_thread** null, align 8
@gomp_threads_dock = common dso_local global i32 0, align 4
@gomp_tls_data = common dso_local global %struct.gomp_thread zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @gomp_thread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gomp_thread_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gomp_thread_start_data*, align 8
  %4 = alloca %struct.gomp_thread*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gomp_thread, align 8
  %8 = alloca %struct.gomp_team*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.gomp_thread_start_data*
  store %struct.gomp_thread_start_data* %10, %struct.gomp_thread_start_data** %3, align 8
  store %struct.gomp_thread* %7, %struct.gomp_thread** %4, align 8
  %11 = load i32, i32* @gomp_tls_key, align 4
  %12 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %13 = call i32 @pthread_setspecific(i32 %11, %struct.gomp_thread* %12)
  %14 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %15 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %14, i32 0, i32 3
  %16 = call i32 @gomp_sem_init(i32* %15, i32 0)
  %17 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %3, align 8
  %18 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %17, i32 0, i32 0
  %19 = load void (i8*)*, void (i8*)** %18, align 8
  store void (i8*)* %19, void (i8*)** %5, align 8
  %20 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %3, align 8
  %21 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %24 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %23, i32 0, i32 2
  %25 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %3, align 8
  %26 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %25, i32 0, i32 2
  %27 = bitcast %struct.TYPE_2__* %24 to i8*
  %28 = bitcast %struct.TYPE_2__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 40, i1 false)
  %29 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %30 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %29, i32 0, i32 3
  %31 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %32 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load %struct.gomp_team*, %struct.gomp_team** %33, align 8
  %35 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %38 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32*, i32** %36, i64 %40
  store i32* %30, i32** %41, align 8
  %42 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %3, align 8
  %43 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %1
  %47 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %48 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load %struct.gomp_team*, %struct.gomp_team** %49, align 8
  %51 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %50, i32 0, i32 0
  %52 = call i32 @gomp_barrier_wait(i32* %51)
  %53 = load void (i8*)*, void (i8*)** %5, align 8
  %54 = load i8*, i8** %6, align 8
  call void %53(i8* %54)
  %55 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %56 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load %struct.gomp_team*, %struct.gomp_team** %57, align 8
  %59 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %58, i32 0, i32 0
  %60 = call i32 @gomp_barrier_wait(i32* %59)
  br label %111

61:                                               ; preds = %1
  %62 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %63 = load %struct.gomp_thread**, %struct.gomp_thread*** @gomp_threads, align 8
  %64 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %65 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.gomp_thread*, %struct.gomp_thread** %63, i64 %67
  store %struct.gomp_thread* %62, %struct.gomp_thread** %68, align 8
  %69 = call i32 @gomp_barrier_wait(i32* @gomp_threads_dock)
  br label %70

70:                                               ; preds = %107, %61
  %71 = load void (i8*)*, void (i8*)** %5, align 8
  %72 = load i8*, i8** %6, align 8
  call void %71(i8* %72)
  %73 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %74 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load %struct.gomp_team*, %struct.gomp_team** %75, align 8
  store %struct.gomp_team* %76, %struct.gomp_team** %8, align 8
  %77 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %78 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %77, i32 0, i32 0
  store void (i8*)* null, void (i8*)** %78, align 8
  %79 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %80 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %82 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store %struct.gomp_team* null, %struct.gomp_team** %83, align 8
  %84 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %85 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32* null, i32** %86, align 8
  %87 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %88 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %91 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %94 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.gomp_team*, %struct.gomp_team** %8, align 8
  %97 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %96, i32 0, i32 0
  %98 = call i32 @gomp_barrier_wait(i32* %97)
  %99 = call i32 @gomp_barrier_wait(i32* @gomp_threads_dock)
  %100 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %101 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %100, i32 0, i32 0
  %102 = load void (i8*)*, void (i8*)** %101, align 8
  store void (i8*)* %102, void (i8*)** %5, align 8
  %103 = load %struct.gomp_thread*, %struct.gomp_thread** %4, align 8
  %104 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to i8*
  store i8* %106, i8** %6, align 8
  br label %107

107:                                              ; preds = %70
  %108 = load void (i8*)*, void (i8*)** %5, align 8
  %109 = icmp ne void (i8*)* %108, null
  br i1 %109, label %70, label %110

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %46
  ret i8* null
}

declare dso_local i32 @pthread_setspecific(i32, %struct.gomp_thread*) #1

declare dso_local i32 @gomp_sem_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gomp_barrier_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
