; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_ipc_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_ipc_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }
%struct.kern_ipc_perm = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@AUDIT_IPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_ipc_obj(%struct.kern_ipc_perm* %0) #0 {
  %2 = alloca %struct.kern_ipc_perm*, align 8
  %3 = alloca %struct.audit_context*, align 8
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  store %struct.audit_context* %6, %struct.audit_context** %3, align 8
  %7 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %8 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %11 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 8
  %13 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %14 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %17 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %20 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %23 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %26 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %29 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %30 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @security_ipc_getsecid(%struct.kern_ipc_perm* %28, i32* %31)
  %33 = load i32, i32* @AUDIT_IPC, align 4
  %34 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %35 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local i32 @security_ipc_getsecid(%struct.kern_ipc_perm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
