; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_start_t1timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_start_t1timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rose_sock = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i32* }

@rose_timer_expiry = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_start_t1timer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.rose_sock* @rose_sk(%struct.sock* %4)
  store %struct.rose_sock* %5, %struct.rose_sock** %3, align 8
  %6 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %7 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %6, i32 0, i32 0
  %8 = call i32 @del_timer(%struct.TYPE_3__* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = ptrtoint %struct.sock* %9 to i64
  %11 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %12 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %15 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32* @rose_timer_expiry, i32** %16, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %19 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %23 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i64 %21, i64* %24, align 8
  %25 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %26 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %25, i32 0, i32 0
  %27 = call i32 @add_timer(%struct.TYPE_3__* %26)
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
