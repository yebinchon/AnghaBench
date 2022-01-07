; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_free_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_free_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32, i32, %struct.upid* }
%struct.upid = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@pidmap_lock = common dso_local global i32 0, align 4
@delayed_put_pid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pid(%struct.pid* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.upid*, align 8
  store %struct.pid* %0, %struct.pid** %2, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @pidmap_lock, i64 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pid*, %struct.pid** %2, align 8
  %11 = getelementptr inbounds %struct.pid, %struct.pid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.pid*, %struct.pid** %2, align 8
  %16 = getelementptr inbounds %struct.pid, %struct.pid* %15, i32 0, i32 2
  %17 = load %struct.upid*, %struct.upid** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.upid, %struct.upid* %17, i64 %19
  store %struct.upid* %20, %struct.upid** %5, align 8
  %21 = load %struct.upid*, %struct.upid** %5, align 8
  %22 = getelementptr inbounds %struct.upid, %struct.upid* %21, i32 0, i32 1
  %23 = call i32 @hlist_del_rcu(i32* %22)
  %24 = load %struct.upid*, %struct.upid** %5, align 8
  %25 = getelementptr inbounds %struct.upid, %struct.upid* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = load %struct.upid*, %struct.upid** %5, align 8
  %33 = getelementptr inbounds %struct.upid, %struct.upid* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @schedule_work(i32* %35)
  br label %37

37:                                               ; preds = %31, %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @pidmap_lock, i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %58, %41
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.pid*, %struct.pid** %2, align 8
  %47 = getelementptr inbounds %struct.pid, %struct.pid* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.pid*, %struct.pid** %2, align 8
  %52 = getelementptr inbounds %struct.pid, %struct.pid* %51, i32 0, i32 2
  %53 = load %struct.upid*, %struct.upid** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.upid, %struct.upid* %53, i64 %55
  %57 = call i32 @free_pidmap(%struct.upid* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load %struct.pid*, %struct.pid** %2, align 8
  %63 = getelementptr inbounds %struct.pid, %struct.pid* %62, i32 0, i32 1
  %64 = load i32, i32* @delayed_put_pid, align 4
  %65 = call i32 @call_rcu(i32* %63, i32 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_pidmap(%struct.upid*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
