; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_mq_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_mq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mq_attr = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@AUDIT_MQ_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_mq_open(i32 %0, i32 %1, %struct.mq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mq_attr*, align 8
  %7 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.mq_attr* %2, %struct.mq_attr** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  store %struct.audit_context* %10, %struct.audit_context** %7, align 8
  %11 = load %struct.mq_attr*, %struct.mq_attr** %6, align 8
  %12 = icmp ne %struct.mq_attr* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.mq_attr*, %struct.mq_attr** %6, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.mq_attr* %17, i32 4)
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %21 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %27 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %31 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @AUDIT_MQ_OPEN, align 4
  %34 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  %35 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.mq_attr*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
