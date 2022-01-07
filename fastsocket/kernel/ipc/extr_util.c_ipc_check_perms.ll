; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_check_perms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_check_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32 }
%struct.ipc_ops = type { i32 (%struct.kern_ipc_perm*, i32)* }
%struct.ipc_params = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kern_ipc_perm*, %struct.ipc_ops*, %struct.ipc_params*)* @ipc_check_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_check_perms(%struct.kern_ipc_perm* %0, %struct.ipc_ops* %1, %struct.ipc_params* %2) #0 {
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca %struct.ipc_ops*, align 8
  %6 = alloca %struct.ipc_params*, align 8
  %7 = alloca i32, align 4
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %4, align 8
  store %struct.ipc_ops* %1, %struct.ipc_ops** %5, align 8
  store %struct.ipc_params* %2, %struct.ipc_params** %6, align 8
  %8 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %9 = load %struct.ipc_params*, %struct.ipc_params** %6, align 8
  %10 = getelementptr inbounds %struct.ipc_params, %struct.ipc_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ipcperms(%struct.kern_ipc_perm* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EACCES, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.ipc_ops*, %struct.ipc_ops** %5, align 8
  %19 = getelementptr inbounds %struct.ipc_ops, %struct.ipc_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.kern_ipc_perm*, i32)*, i32 (%struct.kern_ipc_perm*, i32)** %19, align 8
  %21 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %22 = load %struct.ipc_params*, %struct.ipc_params** %6, align 8
  %23 = getelementptr inbounds %struct.ipc_params, %struct.ipc_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %20(%struct.kern_ipc_perm* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %30 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %17
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i64 @ipcperms(%struct.kern_ipc_perm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
