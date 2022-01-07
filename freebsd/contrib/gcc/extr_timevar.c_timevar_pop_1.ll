; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_pop_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_pop_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timevar_stack_def = type { %struct.timevar_stack_def*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timevar_time_def = type { i32 }

@stack = common dso_local global %struct.timevar_stack_def* null, align 8
@timevars = common dso_local global %struct.TYPE_2__* null, align 8
@start_time = common dso_local global %struct.timevar_time_def zeroinitializer, align 4
@unused_stack_instances = common dso_local global %struct.timevar_stack_def* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timevar_pop_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timevar_time_def, align 4
  %4 = alloca %struct.timevar_stack_def*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  store %struct.timevar_stack_def* %5, %struct.timevar_stack_def** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timevars, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %10 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = call i32 @get_time(%struct.timevar_time_def* %3)
  %16 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %4, align 8
  %17 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @timevar_accumulate(i32* %19, %struct.timevar_time_def* @start_time, %struct.timevar_time_def* %3)
  %21 = bitcast %struct.timevar_time_def* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timevar_time_def* @start_time to i8*), i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %23 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %22, i32 0, i32 0
  %24 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %23, align 8
  store %struct.timevar_stack_def* %24, %struct.timevar_stack_def** @stack, align 8
  %25 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @unused_stack_instances, align 8
  %26 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %4, align 8
  %27 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %26, i32 0, i32 0
  store %struct.timevar_stack_def* %25, %struct.timevar_stack_def** %27, align 8
  %28 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %4, align 8
  store %struct.timevar_stack_def* %28, %struct.timevar_stack_def** @unused_stack_instances, align 8
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @get_time(%struct.timevar_time_def*) #1

declare dso_local i32 @timevar_accumulate(i32*, %struct.timevar_time_def*, %struct.timevar_time_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
