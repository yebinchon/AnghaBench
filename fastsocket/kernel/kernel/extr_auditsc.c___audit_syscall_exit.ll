; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_syscall_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_syscall_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.audit_context* }
%struct.audit_context = type { i64, i64, i64, i32*, i32*, i64, i64, i64, i64, i32*, i32*, %struct.audit_context*, i32, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@AUDITSC_SUCCESS = common dso_local global i32 0, align 4
@AUDITSC_FAILURE = common dso_local global i32 0, align 4
@AUDIT_RECORD_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_syscall_exit(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.audit_context*, align 8
  %7 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @AUDITSC_SUCCESS, align 4
  store i32 %12, i32* %3, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AUDITSC_FAILURE, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call %struct.audit_context* @audit_get_context(%struct.task_struct* %16, i32 %17, i64 %18)
  store %struct.audit_context* %19, %struct.audit_context** %6, align 8
  %20 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %21 = icmp ne %struct.audit_context* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %117

27:                                               ; preds = %15
  %28 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %29 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %34 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AUDIT_RECORD_CONTEXT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = call i32 @audit_log_exit(%struct.audit_context* %39, %struct.task_struct* %40)
  br label %42

42:                                               ; preds = %38, %32, %27
  %43 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %44 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %43, i32 0, i32 13
  store i64 0, i64* %44, align 8
  %45 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %46 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUDIT_RECORD_CONTEXT, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i64 -1, i64 0
  %52 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %53 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %55 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %54, i32 0, i32 12
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %42
  %59 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %60 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %59, i32 0, i32 12
  %61 = call i32 @audit_kill_trees(i32* %60)
  br label %62

62:                                               ; preds = %58, %42
  %63 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %64 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %63, i32 0, i32 11
  %65 = load %struct.audit_context*, %struct.audit_context** %64, align 8
  %66 = icmp ne %struct.audit_context* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %69 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %68, i32 0, i32 11
  %70 = load %struct.audit_context*, %struct.audit_context** %69, align 8
  store %struct.audit_context* %70, %struct.audit_context** %7, align 8
  %71 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %72 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %71, i32 0, i32 11
  store %struct.audit_context* null, %struct.audit_context** %72, align 8
  %73 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %74 = call i32 @audit_free_context(%struct.audit_context* %73)
  %75 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %76 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 0
  store %struct.audit_context* %75, %struct.audit_context** %77, align 8
  br label %117

78:                                               ; preds = %62
  %79 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %80 = call i32 @audit_free_names(%struct.audit_context* %79)
  %81 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %82 = call i32 @unroll_tree_refs(%struct.audit_context* %81, i32* null, i32 0)
  %83 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %84 = call i32 @audit_free_aux(%struct.audit_context* %83)
  %85 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %86 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %85, i32 0, i32 10
  store i32* null, i32** %86, align 8
  %87 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %88 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %87, i32 0, i32 9
  store i32* null, i32** %88, align 8
  %89 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %90 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  %91 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %92 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %91, i32 0, i32 7
  store i64 0, i64* %92, align 8
  %93 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %94 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %93, i32 0, i32 6
  store i64 0, i64* %94, align 8
  %95 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %96 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %95, i32 0, i32 5
  store i64 0, i64* %96, align 8
  %97 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %98 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 -1, i32* %100, align 4
  %101 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %102 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AUDIT_RECORD_CONTEXT, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %78
  %107 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %108 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %112 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %111, i32 0, i32 4
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %106, %78
  %114 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %115 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %116 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %115, i32 0, i32 0
  store %struct.audit_context* %114, %struct.audit_context** %116, align 8
  br label %117

117:                                              ; preds = %26, %113, %67
  ret void
}

declare dso_local %struct.audit_context* @audit_get_context(%struct.task_struct*, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @audit_log_exit(%struct.audit_context*, %struct.task_struct*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @audit_kill_trees(i32*) #1

declare dso_local i32 @audit_free_context(%struct.audit_context*) #1

declare dso_local i32 @audit_free_names(%struct.audit_context*) #1

declare dso_local i32 @unroll_tree_refs(%struct.audit_context*, i32*, i32) #1

declare dso_local i32 @audit_free_aux(%struct.audit_context*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
