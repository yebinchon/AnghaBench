; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_killed_trees.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_killed_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.audit_context* }
%struct.audit_context = type { %struct.list_head, i32 }
%struct.list_head = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_head* @audit_killed_trees() #0 {
  %1 = alloca %struct.list_head*, align 8
  %2 = alloca %struct.audit_context*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  store %struct.audit_context* %5, %struct.audit_context** %2, align 8
  %6 = load %struct.audit_context*, %struct.audit_context** %2, align 8
  %7 = icmp ne %struct.audit_context* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load %struct.audit_context*, %struct.audit_context** %2, align 8
  %10 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %0
  %15 = phi i1 [ true, %0 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.list_head* null, %struct.list_head** %1, align 8
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.audit_context*, %struct.audit_context** %2, align 8
  %22 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %21, i32 0, i32 0
  store %struct.list_head* %22, %struct.list_head** %1, align 8
  br label %23

23:                                               ; preds = %20, %19
  %24 = load %struct.list_head*, %struct.list_head** %1, align 8
  ret %struct.list_head* %24
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
