; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_mq_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_mq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sigevent = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@AUDIT_MQ_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_mq_notify(i32 %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent*, align 8
  %5 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sigevent* %1, %struct.sigevent** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  store %struct.audit_context* %8, %struct.audit_context** %5, align 8
  %9 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %10 = icmp ne %struct.sigevent* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %13 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %16 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 %14, i64* %17, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %20 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %25 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @AUDIT_MQ_NOTIFY, align 4
  %28 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %29 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
