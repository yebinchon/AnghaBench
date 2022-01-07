; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_lock_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_lock_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.ipc_ids = type { i32 }

@EIDRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kern_ipc_perm* @ipc_lock_check(%struct.ipc_ids* %0, i32 %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca %struct.ipc_ids*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.ipc_ids* %0, %struct.ipc_ids** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ipc_ids*, %struct.ipc_ids** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.kern_ipc_perm* @ipc_lock(%struct.ipc_ids* %7, i32 %8)
  store %struct.kern_ipc_perm* %9, %struct.kern_ipc_perm** %6, align 8
  %10 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %11 = call i64 @IS_ERR(%struct.kern_ipc_perm* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  store %struct.kern_ipc_perm* %14, %struct.kern_ipc_perm** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @ipc_checkid(%struct.kern_ipc_perm* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %22 = call i32 @ipc_unlock(%struct.kern_ipc_perm* %21)
  %23 = load i32, i32* @EIDRM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.kern_ipc_perm* @ERR_PTR(i32 %24)
  store %struct.kern_ipc_perm* %25, %struct.kern_ipc_perm** %3, align 8
  br label %28

26:                                               ; preds = %15
  %27 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  store %struct.kern_ipc_perm* %27, %struct.kern_ipc_perm** %3, align 8
  br label %28

28:                                               ; preds = %26, %20, %13
  %29 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  ret %struct.kern_ipc_perm* %29
}

declare dso_local %struct.kern_ipc_perm* @ipc_lock(%struct.ipc_ids*, i32) #1

declare dso_local i64 @IS_ERR(%struct.kern_ipc_perm*) #1

declare dso_local i64 @ipc_checkid(%struct.kern_ipc_perm*, i32) #1

declare dso_local i32 @ipc_unlock(%struct.kern_ipc_perm*) #1

declare dso_local %struct.kern_ipc_perm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
