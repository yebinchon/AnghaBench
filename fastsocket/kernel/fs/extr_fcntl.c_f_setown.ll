; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_f_setown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_f_setown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pid = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_setown(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @PIDTYPE_PID, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @PIDTYPE_PGID, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.pid* @find_vpid(i32 %22)
  store %struct.pid* %23, %struct.pid** %8, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = load %struct.pid*, %struct.pid** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @__f_setown(%struct.file* %24, %struct.pid* %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @find_vpid(i32) #1

declare dso_local i32 @__f_setown(%struct.file*, %struct.pid*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
