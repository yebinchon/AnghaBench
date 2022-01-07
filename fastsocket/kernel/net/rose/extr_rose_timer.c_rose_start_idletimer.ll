; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_start_idletimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_start_idletimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rose_sock = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32* }

@rose_idletimer_expiry = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_start_idletimer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.rose_sock* @rose_sk(%struct.sock* %4)
  store %struct.rose_sock* %5, %struct.rose_sock** %3, align 8
  %6 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %7 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %6, i32 0, i32 1
  %8 = call i32 @del_timer(%struct.TYPE_3__* %7)
  %9 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %10 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = ptrtoint %struct.sock* %14 to i64
  %16 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %17 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %20 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32* @rose_idletimer_expiry, i32** %21, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %24 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %28 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 %26, i64* %29, align 8
  %30 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %31 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %30, i32 0, i32 1
  %32 = call i32 @add_timer(%struct.TYPE_3__* %31)
  br label %33

33:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
