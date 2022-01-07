; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_next_tgid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_next_tgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32 }
%struct.tgid_iter = type { i32, i32* }
%struct.pid = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i32* } (%struct.pid_namespace*, i32, i32*)* @next_tgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i32* } @next_tgid(%struct.pid_namespace* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tgid_iter, align 8
  %5 = alloca %struct.tgid_iter, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = bitcast %struct.tgid_iter* %5 to { i32, i32* }*
  %9 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %8, i32 0, i32 0
  store i32 %1, i32* %9, align 8
  %10 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %8, i32 0, i32 1
  store i32* %2, i32** %10, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %6, align 8
  %11 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @put_task_struct(i32* %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = call i32 (...) @rcu_read_lock()
  br label %20

20:                                               ; preds = %45, %18
  %21 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %25 = call %struct.pid* @find_ge_pid(i32 %23, %struct.pid_namespace* %24)
  store %struct.pid* %25, %struct.pid** %7, align 8
  %26 = load %struct.pid*, %struct.pid** %7, align 8
  %27 = icmp ne %struct.pid* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load %struct.pid*, %struct.pid** %7, align 8
  %30 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %31 = call i32 @pid_nr_ns(%struct.pid* %29, %struct.pid_namespace* %30)
  %32 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.pid*, %struct.pid** %7, align 8
  %34 = load i32, i32* @PIDTYPE_PID, align 4
  %35 = call i32* @pid_task(%struct.pid* %33, i32 %34)
  %36 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  store i32* %35, i32** %36, align 8
  %37 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @has_group_leader_pid(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %28
  %46 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %20

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.tgid_iter, %struct.tgid_iter* %5, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @get_task_struct(i32* %51)
  br label %53

53:                                               ; preds = %49, %20
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = bitcast %struct.tgid_iter* %4 to i8*
  %56 = bitcast %struct.tgid_iter* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = bitcast %struct.tgid_iter* %4 to { i32, i32* }*
  %58 = load { i32, i32* }, { i32, i32* }* %57, align 8
  ret { i32, i32* } %58
}

declare dso_local i32 @put_task_struct(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @find_ge_pid(i32, %struct.pid_namespace*) #1

declare dso_local i32 @pid_nr_ns(%struct.pid*, %struct.pid_namespace*) #1

declare dso_local i32* @pid_task(%struct.pid*, i32) #1

declare dso_local i32 @has_group_leader_pid(i32*) #1

declare dso_local i32 @get_task_struct(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
