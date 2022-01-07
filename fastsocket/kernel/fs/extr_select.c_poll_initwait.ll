; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_initwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_initwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll_wqueues = type { i64, i32*, i64, i64, i32, i32 }

@__pollwait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poll_initwait(%struct.poll_wqueues* %0) #0 {
  %2 = alloca %struct.poll_wqueues*, align 8
  store %struct.poll_wqueues* %0, %struct.poll_wqueues** %2, align 8
  %3 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %4 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %3, i32 0, i32 5
  %5 = load i32, i32* @__pollwait, align 4
  %6 = call i32 @init_poll_funcptr(i32* %4, i32 %5)
  %7 = load i32, i32* @current, align 4
  %8 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %9 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %11 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %13 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %15 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %17 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
