; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_idletimer_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_idletimer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ROSE_CLEAR_REQUEST = common dso_local global i32 0, align 4
@ROSE_STATE_2 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rose_idletimer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_idletimer_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.sock*
  store %struct.sock* %5, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call i32 @bh_lock_sock(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @rose_clear_queues(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = load i32, i32* @ROSE_CLEAR_REQUEST, align 4
  %12 = call i32 @rose_write_internal(%struct.sock* %10, i32 %11)
  %13 = load i32, i32* @ROSE_STATE_2, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.TYPE_2__* @rose_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @rose_start_t3timer(%struct.sock* %17)
  %19 = load i32, i32* @TCP_CLOSE, align 4
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @SEND_SHUTDOWN, align 4
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load i32, i32* @SOCK_DEAD, align 4
  %31 = call i32 @sock_flag(%struct.sock* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %1
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 %36(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = load i32, i32* @SOCK_DEAD, align 4
  %41 = call i32 @sock_set_flag(%struct.sock* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %1
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @bh_unlock_sock(%struct.sock* %43)
  ret void
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @rose_clear_queues(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_start_t3timer(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
