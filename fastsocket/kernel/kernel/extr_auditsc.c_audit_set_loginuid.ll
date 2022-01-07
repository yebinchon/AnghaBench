; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_set_loginuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_set_loginuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, %struct.audit_context* }
%struct.audit_context = type { i64 }
%struct.audit_buffer = type { i32 }

@session_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_LOGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pid=%d uid=%u\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c" old auid=%u new auid=%u old ses=%u new ses=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_set_loginuid(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.audit_context*, align 8
  %7 = alloca %struct.audit_buffer*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @atomic_inc_return(i32* @session_id)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 3
  %11 = load %struct.audit_context*, %struct.audit_context** %10, align 8
  store %struct.audit_context* %11, %struct.audit_context** %6, align 8
  %12 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %13 = icmp ne %struct.audit_context* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %2
  %15 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %16 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @AUDIT_LOGIN, align 4
  %22 = call %struct.audit_buffer* @audit_log_start(i32* null, i32 %20, i32 %21)
  store %struct.audit_buffer* %22, %struct.audit_buffer** %7, align 8
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %24 = icmp ne %struct.audit_buffer* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i32 @task_uid(%struct.task_struct* %30)
  %32 = call i32 (%struct.audit_buffer*, i8*, i32, i32, ...) @audit_log_format(%struct.audit_buffer* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %34 = call i32 @audit_log_task_context(%struct.audit_buffer* %33)
  %35 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (%struct.audit_buffer*, i8*, i32, i32, ...) @audit_log_format(%struct.audit_buffer* %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %46 = call i32 @audit_log_end(%struct.audit_buffer* %45)
  br label %47

47:                                               ; preds = %25, %19
  br label %48

48:                                               ; preds = %47, %14, %2
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  ret i32 0
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32*, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32, ...) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @audit_log_task_context(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
