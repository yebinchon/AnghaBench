; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_init_monitor_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_init_monitor_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.target_ops = type { i32 }

@monitor_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@OPS_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_monitor_ops(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @monitor_ops, i32 0, i32 0), align 8
  %4 = load i64, i64* @OPS_MAGIC, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @init_base_monitor_ops()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %10 = call i32 @memcpy(%struct.target_ops* %9, %struct.TYPE_3__* @monitor_ops, i32 8)
  ret void
}

declare dso_local i32 @init_base_monitor_ops(...) #1

declare dso_local i32 @memcpy(%struct.target_ops*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
