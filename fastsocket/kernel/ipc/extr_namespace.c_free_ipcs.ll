; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_namespace.c_free_ipcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_namespace.c_free_ipcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.ipc_ids = type { i32, i32, i32 }
%struct.kern_ipc_perm = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_ipcs(%struct.ipc_namespace* %0, %struct.ipc_ids* %1, void (%struct.ipc_namespace*, %struct.kern_ipc_perm*)* %2) #0 {
  %4 = alloca %struct.ipc_namespace*, align 8
  %5 = alloca %struct.ipc_ids*, align 8
  %6 = alloca void (%struct.ipc_namespace*, %struct.kern_ipc_perm*)*, align 8
  %7 = alloca %struct.kern_ipc_perm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %4, align 8
  store %struct.ipc_ids* %1, %struct.ipc_ids** %5, align 8
  store void (%struct.ipc_namespace*, %struct.kern_ipc_perm*)* %2, void (%struct.ipc_namespace*, %struct.kern_ipc_perm*)** %6, align 8
  %11 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %12 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %11, i32 0, i32 1
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %15 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %37, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %23 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %22, i32 0, i32 2
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.kern_ipc_perm* @idr_find(i32* %23, i32 %24)
  store %struct.kern_ipc_perm* %25, %struct.kern_ipc_perm** %7, align 8
  %26 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %7, align 8
  %27 = icmp eq %struct.kern_ipc_perm* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %37

29:                                               ; preds = %21
  %30 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %7, align 8
  %31 = call i32 @ipc_lock_by_ptr(%struct.kern_ipc_perm* %30)
  %32 = load void (%struct.ipc_namespace*, %struct.kern_ipc_perm*)*, void (%struct.ipc_namespace*, %struct.kern_ipc_perm*)** %6, align 8
  %33 = load %struct.ipc_namespace*, %struct.ipc_namespace** %4, align 8
  %34 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %7, align 8
  call void %32(%struct.ipc_namespace* %33, %struct.kern_ipc_perm* %34)
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %42 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %41, i32 0, i32 1
  %43 = call i32 @up_write(i32* %42)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.kern_ipc_perm* @idr_find(i32*, i32) #1

declare dso_local i32 @ipc_lock_by_ptr(%struct.kern_ipc_perm*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
