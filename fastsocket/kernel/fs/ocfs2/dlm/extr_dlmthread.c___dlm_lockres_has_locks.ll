; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_lockres_has_locks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_lockres_has_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dlm_lockres_has_locks(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %3, align 8
  %4 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %5 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %4, i32 0, i32 2
  %6 = call i64 @list_empty(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 1
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %13, %8, %1
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
