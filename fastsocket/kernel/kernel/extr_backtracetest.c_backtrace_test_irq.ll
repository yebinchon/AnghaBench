; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_backtracetest.c_backtrace_test_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_backtracetest.c_backtrace_test_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Testing a backtrace from irq context.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"The following trace is a kernel self test and not a bug!\0A\00", align 1
@backtrace_work = common dso_local global i32 0, align 4
@backtrace_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backtrace_test_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backtrace_test_irq() #0 {
  %1 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @init_completion(i32* @backtrace_work)
  %4 = call i32 @tasklet_schedule(i32* @backtrace_tasklet)
  %5 = call i32 @wait_for_completion(i32* @backtrace_work)
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
