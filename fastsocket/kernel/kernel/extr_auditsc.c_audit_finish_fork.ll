; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_finish_fork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_finish_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.audit_context* }
%struct.audit_context = type { i64, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.audit_context* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@AUDIT_RECORD_CONTEXT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_finish_fork(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.audit_context*, align 8
  %4 = alloca %struct.audit_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  store %struct.audit_context* %7, %struct.audit_context** %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  store %struct.audit_context* %10, %struct.audit_context** %4, align 8
  %11 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %12 = icmp ne %struct.audit_context* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %15 = icmp ne %struct.audit_context* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %84

17:                                               ; preds = %13
  %18 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %19 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %24 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AUDIT_RECORD_CONTEXT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %17
  br label %84

29:                                               ; preds = %22
  %30 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %31 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %34 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %36 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %39 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %41 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %44 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %42, i32 %45, i32 4)
  %47 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %48 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %51 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %53 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %56 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %58 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %61 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %63 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @kstrdup(i32 %64, i32 %65)
  %67 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %68 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %73 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %75 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %78 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %80 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %83 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %29, %28, %16
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
