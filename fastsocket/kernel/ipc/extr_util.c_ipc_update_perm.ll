; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_update_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_update_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc64_perm = type { i32, i32, i32 }
%struct.kern_ipc_perm = type { i32, i32, i32 }

@S_IRWXUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_update_perm(%struct.ipc64_perm* %0, %struct.kern_ipc_perm* %1) #0 {
  %3 = alloca %struct.ipc64_perm*, align 8
  %4 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.ipc64_perm* %0, %struct.ipc64_perm** %3, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %4, align 8
  %5 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %6 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %9 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %11 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %14 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %16 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S_IRWXUGO, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.ipc64_perm*, %struct.ipc64_perm** %3, align 8
  %22 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IRWXUGO, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %20, %25
  %27 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %28 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
