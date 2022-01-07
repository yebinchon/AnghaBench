; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.audit_context = type { i64, i32, i64 }

@AUDIT_RECORD_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_free(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.audit_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call %struct.audit_context* @audit_get_context(%struct.task_struct* %4, i32 0, i32 0)
  store %struct.audit_context* %5, %struct.audit_context** %3, align 8
  %6 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %7 = icmp ne %struct.audit_context* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %20 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AUDIT_RECORD_CONTEXT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = call i32 @audit_log_exit(%struct.audit_context* %25, %struct.task_struct* %26)
  br label %28

28:                                               ; preds = %24, %18, %13
  %29 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %30 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %29, i32 0, i32 1
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %35 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %34, i32 0, i32 1
  %36 = call i32 @audit_kill_trees(i32* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %39 = call i32 @audit_free_context(%struct.audit_context* %38)
  br label %40

40:                                               ; preds = %37, %12
  ret void
}

declare dso_local %struct.audit_context* @audit_get_context(%struct.task_struct*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @audit_log_exit(%struct.audit_context*, %struct.task_struct*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @audit_kill_trees(i32*) #1

declare dso_local i32 @audit_free_context(%struct.audit_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
