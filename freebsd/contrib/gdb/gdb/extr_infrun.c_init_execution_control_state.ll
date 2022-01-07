; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_init_execution_control_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_init_execution_control_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i32, i32*, i32, i32, %struct.TYPE_2__, i32, i32, i64, i64, i32*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@prev_pc = common dso_local global i32 0, align 4
@infwait_normal_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_execution_control_state(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %4 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %5 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %4, i32 0, i32 14
  store i64 0, i64* %5, align 8
  %6 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %7 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %6, i32 0, i32 13
  store i64 0, i64* %7, align 8
  %8 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %9 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %8, i32 0, i32 12
  store i64 0, i64* %9, align 8
  %10 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %11 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %10, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %13 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %15 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %14, i32 0, i32 9
  store i32* null, i32** %15, align 8
  %16 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %17 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %19 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %21 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %20, i32 0, i32 4
  %22 = load i32, i32* @prev_pc, align 4
  %23 = call i64 @find_pc_line(i32 %22, i32 0)
  %24 = bitcast %struct.TYPE_2__* %3 to i64*
  store i64 %23, i64* %24, align 4
  %25 = bitcast %struct.TYPE_2__* %21 to i8*
  %26 = bitcast %struct.TYPE_2__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %28 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %32 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %34 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %38 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @infwait_normal_state, align 4
  %40 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %41 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = call i32 @pid_to_ptid(i32 -1)
  %43 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %44 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %46 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %45, i32 0, i32 0
  %47 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %48 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  ret void
}

declare dso_local i64 @find_pc_line(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pid_to_ptid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
