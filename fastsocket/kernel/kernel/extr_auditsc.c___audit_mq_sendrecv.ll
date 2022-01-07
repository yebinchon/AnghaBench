; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_mq_sendrecv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_mq_sendrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, %struct.timespec }
%struct.timespec = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@AUDIT_MQ_SENDRECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_mq_sendrecv(i32 %0, i64 %1, i32 %2, %struct.timespec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.audit_context*, align 8
  %10 = alloca %struct.timespec*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.timespec* %3, %struct.timespec** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.audit_context*, %struct.audit_context** %12, align 8
  store %struct.audit_context* %13, %struct.audit_context** %9, align 8
  %14 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store %struct.timespec* %16, %struct.timespec** %10, align 8
  %17 = load %struct.timespec*, %struct.timespec** %8, align 8
  %18 = icmp ne %struct.timespec* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.timespec*, %struct.timespec** %10, align 8
  %21 = load %struct.timespec*, %struct.timespec** %8, align 8
  %22 = call i32 @memcpy(%struct.timespec* %20, %struct.timespec* %21, i32 4)
  br label %26

23:                                               ; preds = %4
  %24 = load %struct.timespec*, %struct.timespec** %10, align 8
  %25 = call i32 @memset(%struct.timespec* %24, i32 0, i32 4)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %29 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %33 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %37 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @AUDIT_MQ_SENDRECV, align 4
  %40 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %41 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.timespec*, %struct.timespec*, i32) #1

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
