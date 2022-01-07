; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_list_idx_to_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_list_idx_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dlm_lock_resource = type { %struct.list_head, %struct.list_head, %struct.list_head }

@DLM_GRANTED_LIST = common dso_local global i32 0, align 4
@DLM_CONVERTING_LIST = common dso_local global i32 0, align 4
@DLM_BLOCKED_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.dlm_lock_resource*, i32)* @dlm_list_idx_to_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @dlm_list_idx_to_ptr(%struct.dlm_lock_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_lock_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.list_head* null, %struct.list_head** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DLM_GRANTED_LIST, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %10, i32 0, i32 2
  store %struct.list_head* %11, %struct.list_head** %5, align 8
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DLM_CONVERTING_LIST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 1
  store %struct.list_head* %18, %struct.list_head** %5, align 8
  br label %29

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DLM_BLOCKED_LIST, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 0
  store %struct.list_head* %25, %struct.list_head** %5, align 8
  br label %28

26:                                               ; preds = %19
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29, %9
  %31 = load %struct.list_head*, %struct.list_head** %5, align 8
  ret %struct.list_head* %31
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
