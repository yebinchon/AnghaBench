; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_ipc_alloc_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_ipc_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kern_ipc_perm = type { %struct.ipc_security_struct* }
%struct.ipc_security_struct = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.kern_ipc_perm*, i32)* @ipc_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_alloc_security(%struct.task_struct* %0, %struct.kern_ipc_perm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipc_security_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipc_security_struct* @kzalloc(i32 8, i32 %10)
  store %struct.ipc_security_struct* %11, %struct.ipc_security_struct** %8, align 8
  %12 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %13 = icmp ne %struct.ipc_security_struct* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = call i32 @task_sid(%struct.task_struct* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %22 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %25 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %27 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %28 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %27, i32 0, i32 0
  store %struct.ipc_security_struct* %26, %struct.ipc_security_struct** %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.ipc_security_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @task_sid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
