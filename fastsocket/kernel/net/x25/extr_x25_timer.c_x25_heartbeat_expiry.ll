; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_timer.c_x25_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_timer.c_x25_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @x25_heartbeat_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_heartbeat_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.sock*
  store %struct.sock* %5, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call i32 @bh_lock_sock(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i64 @sock_owned_by_user(%struct.sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_2__* @x25_sk(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %42 [
    i32 129, label %17
    i32 128, label %39
  ]

17:                                               ; preds = %12
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load i32, i32* @SOCK_DESTROY, align 4
  %20 = call i32 @sock_flag(%struct.sock* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TCP_LISTEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load i32, i32* @SOCK_DEAD, align 4
  %31 = call i32 @sock_flag(%struct.sock* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %17
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @bh_unlock_sock(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @x25_destroy_socket_from_timer(%struct.sock* %36)
  br label %48

38:                                               ; preds = %28, %22
  br label %42

39:                                               ; preds = %12
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 @x25_check_rbuf(%struct.sock* %40)
  br label %42

42:                                               ; preds = %12, %39, %38
  br label %43

43:                                               ; preds = %42, %11
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = call i32 @x25_start_heartbeat(%struct.sock* %44)
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = call i32 @bh_unlock_sock(%struct.sock* %46)
  br label %48

48:                                               ; preds = %43, %33
  ret void
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @x25_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @x25_destroy_socket_from_timer(%struct.sock*) #1

declare dso_local i32 @x25_check_rbuf(%struct.sock*) #1

declare dso_local i32 @x25_start_heartbeat(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
