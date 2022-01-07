; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_sigqueue_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_sigqueue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigqueue = type { i32 }

@current = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIGQUEUE_PREALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sigqueue* @sigqueue_alloc() #0 {
  %1 = alloca %struct.sigqueue*, align 8
  %2 = load i32, i32* @current, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.sigqueue* @__sigqueue_alloc(i32 %2, i32 %3, i32 0)
  store %struct.sigqueue* %4, %struct.sigqueue** %1, align 8
  %5 = icmp ne %struct.sigqueue* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @SIGQUEUE_PREALLOC, align 4
  %8 = load %struct.sigqueue*, %struct.sigqueue** %1, align 8
  %9 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %6, %0
  %13 = load %struct.sigqueue*, %struct.sigqueue** %1, align 8
  ret %struct.sigqueue* %13
}

declare dso_local %struct.sigqueue* @__sigqueue_alloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
