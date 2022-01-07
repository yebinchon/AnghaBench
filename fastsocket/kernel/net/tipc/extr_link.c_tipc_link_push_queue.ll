; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_push_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_push_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32 }

@PUSH_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_push_queue(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca i64, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %4 = load %struct.link*, %struct.link** %2, align 8
  %5 = getelementptr inbounds %struct.link, %struct.link* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.link*, %struct.link** %2, align 8
  %8 = call i64 @tipc_bearer_congested(i32 %6, %struct.link* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %15, %11
  %13 = load %struct.link*, %struct.link** %2, align 8
  %14 = call i64 @tipc_link_push_packet(%struct.link* %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %12, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @PUSH_FAILED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.link*, %struct.link** %2, align 8
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.link*, %struct.link** %2, align 8
  %28 = call i32 @tipc_bearer_schedule(i32 %26, %struct.link* %27)
  br label %29

29:                                               ; preds = %10, %23, %19
  ret void
}

declare dso_local i64 @tipc_bearer_congested(i32, %struct.link*) #1

declare dso_local i64 @tipc_link_push_packet(%struct.link*) #1

declare dso_local i32 @tipc_bearer_schedule(i32, %struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
