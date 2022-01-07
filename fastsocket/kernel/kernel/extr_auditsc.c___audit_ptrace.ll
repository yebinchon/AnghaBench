; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_ptrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_COMM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_ptrace(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.audit_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  store %struct.audit_context* %6, %struct.audit_context** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %11 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = call i32 @audit_get_loginuid(%struct.task_struct* %12)
  %14 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = call i32 @task_uid(%struct.task_struct* %16)
  %18 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %19 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = call i32 @audit_get_sessionid(%struct.task_struct* %20)
  %22 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %23 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %26 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %25, i32 0, i32 1
  %27 = call i32 @security_task_getsecid(%struct.task_struct* %24, i32* %26)
  %28 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %29 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TASK_COMM_LEN, align 4
  %35 = call i32 @memcpy(i32 %30, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @audit_get_loginuid(%struct.task_struct*) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @audit_get_sessionid(%struct.task_struct*) #1

declare dso_local i32 @security_task_getsecid(%struct.task_struct*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
