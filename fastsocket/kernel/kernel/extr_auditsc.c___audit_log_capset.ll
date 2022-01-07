; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_log_capset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_log_capset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cred = type { i32, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@AUDIT_CAPSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_log_capset(i32 %0, %struct.cred* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cred* %1, %struct.cred** %5, align 8
  store %struct.cred* %2, %struct.cred** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  store %struct.audit_context* %10, %struct.audit_context** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %13 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.cred*, %struct.cred** %5, align 8
  %16 = getelementptr inbounds %struct.cred, %struct.cred* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %19 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 4
  %22 = load %struct.cred*, %struct.cred** %5, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %26 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.cred*, %struct.cred** %5, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %33 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @AUDIT_CAPSET, align 4
  %37 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %38 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
