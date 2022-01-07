; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_threads_continue_one_with_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_threads_continue_one_with_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Internal error: continuing unhandled thread.\00", align 1
@TT_LWP_CONTINUE = common dso_local global i32 0, align 4
@TT_USE_CURRENT_PC = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @threads_continue_one_with_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threads_continue_one_with_signal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @map_from_gdb_tid(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @get_pid_for(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.TYPE_3__* @find_thread_info(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = icmp eq %struct.TYPE_3__* null, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @add_tthread(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @TT_LWP_CONTINUE, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TT_USE_CURRENT_PC, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @target_signal_to_host(i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @TT_NIL, align 4
  %37 = call i32 @call_ttrace(i32 %30, i32 %31, i32 %32, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @map_from_gdb_tid(i32) #1

declare dso_local i32 @get_pid_for(i32) #1

declare dso_local %struct.TYPE_3__* @find_thread_info(i32) #1

declare dso_local i32 @add_tthread(i32, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @call_ttrace(i32, i32, i32, i32, i32) #1

declare dso_local i64 @target_signal_to_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
