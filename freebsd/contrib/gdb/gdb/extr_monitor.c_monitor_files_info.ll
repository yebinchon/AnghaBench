; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_files_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_files_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"\09Attached to %s at %d baud.\0A\00", align 1
@dev_name = common dso_local global i32 0, align 4
@baud_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_ops*)* @monitor_files_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_files_info(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  %3 = load i32, i32* @dev_name, align 4
  %4 = load i32, i32* @baud_rate, align 4
  %5 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
