; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_idletimer_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_idletimer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32, i64, i32 }
%struct.nr_sock = type { i32, i64 }

@NR_DISCREQ = common dso_local global i32 0, align 4
@NR_STATE_2 = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nr_idletimer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_idletimer_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.nr_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.nr_sock* @nr_sk(%struct.sock* %7)
  store %struct.nr_sock* %8, %struct.nr_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @nr_clear_queues(%struct.sock* %11)
  %13 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %14 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load i32, i32* @NR_DISCREQ, align 4
  %17 = call i32 @nr_write_internal(%struct.sock* %15, i32 %16)
  %18 = load i32, i32* @NR_STATE_2, align 4
  %19 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %20 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call i32 @nr_start_t1timer(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @nr_stop_t2timer(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @nr_stop_t4timer(%struct.sock* %25)
  %27 = load i32, i32* @TCP_CLOSE, align 4
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @SEND_SHUTDOWN, align 4
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = load i32, i32* @SOCK_DEAD, align 4
  %39 = call i32 @sock_flag(%struct.sock* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %1
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %43, align 8
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 %44(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load i32, i32* @SOCK_DEAD, align 4
  %49 = call i32 @sock_set_flag(%struct.sock* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %1
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @bh_unlock_sock(%struct.sock* %51)
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @nr_clear_queues(%struct.sock*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t2timer(%struct.sock*) #1

declare dso_local i32 @nr_stop_t4timer(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
