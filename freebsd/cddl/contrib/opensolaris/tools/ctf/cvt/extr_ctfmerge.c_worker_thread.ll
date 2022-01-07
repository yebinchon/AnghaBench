; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfmerge.c_worker_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfmerge.c_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"%d: entering first barrier\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%d: doing work in first barrier\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%d: ninqueue is %d, %d on queue\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%d: entering second barrier\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%d: phase 1 complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @worker_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_thread(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @worker_runphase1(%struct.TYPE_7__* %3)
  %5 = call i32 (...) @pthread_self()
  %6 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = call i64 @barrier_wait(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = call i32 (...) @pthread_self()
  %13 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @finalize_phase_one(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @init_phase_two(%struct.TYPE_7__* %16)
  %18 = call i32 (...) @pthread_self()
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fifo_len(i32 %24)
  %26 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %11, %1
  %28 = call i32 (...) @pthread_self()
  %29 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i64 @barrier_wait(i32* %31)
  %33 = call i32 (...) @pthread_self()
  %34 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 @worker_runphase2(%struct.TYPE_7__* %35)
  ret void
}

declare dso_local i32 @worker_runphase1(%struct.TYPE_7__*) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i64 @barrier_wait(i32*) #1

declare dso_local i32 @finalize_phase_one(%struct.TYPE_7__*) #1

declare dso_local i32 @init_phase_two(%struct.TYPE_7__*) #1

declare dso_local i32 @fifo_len(i32) #1

declare dso_local i32 @worker_runphase2(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
