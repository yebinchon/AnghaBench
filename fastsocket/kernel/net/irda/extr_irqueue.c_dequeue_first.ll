; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irqueue.c_dequeue_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irqueue.c_dequeue_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [17 x i8] c"dequeue_first()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__**)* @dequeue_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @dequeue_first(%struct.TYPE_6__** %0) #0 {
  %2 = alloca %struct.TYPE_6__**, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %2, align 8
  %4 = call i32 @IRDA_DEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %20, align 8
  br label %45

21:                                               ; preds = %11
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %39, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %44, align 8
  br label %45

45:                                               ; preds = %21, %19
  br label %46

46:                                               ; preds = %45, %10
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %47
}

declare dso_local i32 @IRDA_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
