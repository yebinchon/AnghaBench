; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_sigusr1_respond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_sigusr1_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@__mf_sigusr1_respond.handler_installed = internal global i32 0, align 4
@__mf_sigusr1_received = common dso_local global i64 0, align 8
@__mf_sigusr1_handled = common dso_local global i64 0, align 8
@reentrant = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@__mf_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@__mf_sigusr1_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mf_sigusr1_respond() #0 {
  %1 = load i64, i64* @__mf_sigusr1_received, align 8
  %2 = load i64, i64* @__mf_sigusr1_handled, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @__mf_sigusr1_handled, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* @__mf_sigusr1_handled, align 8
  %7 = call i64 (...) @__mf_get_state()
  %8 = load i64, i64* @reentrant, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 (...) @__mfu_report()
  store i32 0, i32* @__mf_sigusr1_respond.handler_installed, align 4
  br label %13

13:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @__mf_get_state(...) #1

declare dso_local i32 @__mfu_report(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
