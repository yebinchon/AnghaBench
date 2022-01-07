; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_posix_cpu_timers_init_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_posix_cpu_timers_init_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_struct = type { i32*, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i64, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@cputime_zero = common dso_local global i8* null, align 8
@CPUCLOCK_PROF = common dso_local global i64 0, align 8
@CPUCLOCK_VIRT = common dso_local global i64 0, align 8
@RLIMIT_CPU = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.signal_struct*)* @posix_cpu_timers_init_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posix_cpu_timers_init_group(%struct.signal_struct* %0) #0 {
  %2 = alloca %struct.signal_struct*, align 8
  store %struct.signal_struct* %0, %struct.signal_struct** %2, align 8
  %3 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %4 = call i32 @thread_group_cputime_init(%struct.signal_struct* %3)
  %5 = load i8*, i8** @cputime_zero, align 8
  %6 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %7 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i32 0, i32 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i64, i64* @CPUCLOCK_PROF, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %5, i8** %11, align 8
  %12 = load i8*, i8** @cputime_zero, align 8
  %13 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %14 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* @CPUCLOCK_PROF, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i8* %12, i8** %18, align 8
  %19 = load i8*, i8** @cputime_zero, align 8
  %20 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %21 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %20, i32 0, i32 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i64, i64* @CPUCLOCK_VIRT, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i8* %19, i8** %25, align 8
  %26 = load i8*, i8** @cputime_zero, align 8
  %27 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %28 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* @CPUCLOCK_VIRT, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* %26, i8** %32, align 8
  %33 = load i8*, i8** @cputime_zero, align 8
  %34 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %35 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i8*, i8** @cputime_zero, align 8
  %38 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %42 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %45 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i64, i64* @RLIMIT_CPU, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RLIM_INFINITY, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %1
  %54 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %55 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* @RLIMIT_CPU, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @secs_to_cputime(i64 %60)
  %62 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %63 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %66 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %53, %1
  %69 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %70 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %75 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %80 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  ret void
}

declare dso_local i32 @thread_group_cputime_init(%struct.signal_struct*) #1

declare dso_local i8* @secs_to_cputime(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
