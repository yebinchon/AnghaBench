; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_security.c_security_ipc_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_security.c_security_ipc_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kern_ipc_perm*, i16)* }
%struct.kern_ipc_perm = type { i32 }

@security_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_ipc_permission(%struct.kern_ipc_perm* %0, i16 signext %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca i16, align 2
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @security_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.kern_ipc_perm*, i16)*, i32 (%struct.kern_ipc_perm*, i16)** %6, align 8
  %8 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %9 = load i16, i16* %4, align 2
  %10 = call i32 %7(%struct.kern_ipc_perm* %8, i16 signext %9)
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
