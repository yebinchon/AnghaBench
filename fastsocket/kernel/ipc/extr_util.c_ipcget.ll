; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipcget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipcget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.ipc_ids = type { i32 }
%struct.ipc_ops = type { i32 }
%struct.ipc_params = type { i64 }

@IPC_PRIVATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcget(%struct.ipc_namespace* %0, %struct.ipc_ids* %1, %struct.ipc_ops* %2, %struct.ipc_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_namespace*, align 8
  %7 = alloca %struct.ipc_ids*, align 8
  %8 = alloca %struct.ipc_ops*, align 8
  %9 = alloca %struct.ipc_params*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %6, align 8
  store %struct.ipc_ids* %1, %struct.ipc_ids** %7, align 8
  store %struct.ipc_ops* %2, %struct.ipc_ops** %8, align 8
  store %struct.ipc_params* %3, %struct.ipc_params** %9, align 8
  %10 = load %struct.ipc_params*, %struct.ipc_params** %9, align 8
  %11 = getelementptr inbounds %struct.ipc_params, %struct.ipc_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPC_PRIVATE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %17 = load %struct.ipc_ids*, %struct.ipc_ids** %7, align 8
  %18 = load %struct.ipc_ops*, %struct.ipc_ops** %8, align 8
  %19 = load %struct.ipc_params*, %struct.ipc_params** %9, align 8
  %20 = call i32 @ipcget_new(%struct.ipc_namespace* %16, %struct.ipc_ids* %17, %struct.ipc_ops* %18, %struct.ipc_params* %19)
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.ipc_namespace*, %struct.ipc_namespace** %6, align 8
  %23 = load %struct.ipc_ids*, %struct.ipc_ids** %7, align 8
  %24 = load %struct.ipc_ops*, %struct.ipc_ops** %8, align 8
  %25 = load %struct.ipc_params*, %struct.ipc_params** %9, align 8
  %26 = call i32 @ipcget_public(%struct.ipc_namespace* %22, %struct.ipc_ids* %23, %struct.ipc_ops* %24, %struct.ipc_params* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @ipcget_new(%struct.ipc_namespace*, %struct.ipc_ids*, %struct.ipc_ops*, %struct.ipc_params*) #1

declare dso_local i32 @ipcget_public(%struct.ipc_namespace*, %struct.ipc_ids*, %struct.ipc_ops*, %struct.ipc_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
