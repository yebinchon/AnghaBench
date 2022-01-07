; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_timer.c_x25_display_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_timer.c_x25_display_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.x25_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @x25_display_timer(%struct.sock* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.x25_sock* @x25_sk(%struct.sock* %5)
  store %struct.x25_sock* %6, %struct.x25_sock** %4, align 8
  %7 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %8 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %7, i32 0, i32 0
  %9 = call i32 @timer_pending(%struct.TYPE_2__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %14 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
