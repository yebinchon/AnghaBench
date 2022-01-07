; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@tipc_bearers = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_BEARERS = common dso_local global i64 0, align 8
@media_list = common dso_local global %struct.TYPE_6__* null, align 8
@media_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bearer_stop() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tipc_bearers, align 8
  %3 = icmp ne %struct.TYPE_6__* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %56

5:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %24, %5
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MAX_BEARERS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tipc_bearers, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tipc_bearers, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %17, %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %1, align 8
  br label %6

27:                                               ; preds = %6
  store i64 0, i64* %1, align 8
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @MAX_BEARERS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tipc_bearers, align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tipc_bearers, align 8
  %41 = load i64, i64* %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bearer_disable(i32 %45)
  br label %47

47:                                               ; preds = %39, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %1, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %1, align 8
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tipc_bearers, align 8
  %53 = call i32 @kfree(%struct.TYPE_6__* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @media_list, align 8
  %55 = call i32 @kfree(%struct.TYPE_6__* %54)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @tipc_bearers, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @media_list, align 8
  store i64 0, i64* @media_count, align 8
  br label %56

56:                                               ; preds = %51, %4
  ret void
}

declare dso_local i32 @bearer_disable(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
