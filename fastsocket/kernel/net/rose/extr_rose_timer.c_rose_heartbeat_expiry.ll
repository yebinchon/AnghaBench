; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.rose_sock = type { i32, i32, i32, i32 }

@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@ROSE_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@ROSE_COND_ACK_PENDING = common dso_local global i32 0, align 4
@ROSE_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rose_heartbeat_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_heartbeat_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rose_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.rose_sock* @rose_sk(%struct.sock* %7)
  store %struct.rose_sock* %8, %struct.rose_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %12 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %76 [
    i32 129, label %14
    i32 128, label %36
  ]

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load i32, i32* @SOCK_DESTROY, align 4
  %17 = call i32 @sock_flag(%struct.sock* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TCP_LISTEN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = load i32, i32* @SOCK_DEAD, align 4
  %28 = call i32 @sock_flag(%struct.sock* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %14
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @bh_unlock_sock(%struct.sock* %31)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @rose_destroy_socket(%struct.sock* %33)
  br label %81

35:                                               ; preds = %25, %19
  br label %76

36:                                               ; preds = %1
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = call i32 @atomic_read(i32* %38)
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 2
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %36
  %46 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %47 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ROSE_COND_OWN_RX_BUSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load i32, i32* @ROSE_COND_OWN_RX_BUSY, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %56 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %62 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %66 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %69 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = load i32, i32* @ROSE_RR, align 4
  %72 = call i32 @rose_write_internal(%struct.sock* %70, i32 %71)
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = call i32 @rose_stop_timer(%struct.sock* %73)
  br label %76

75:                                               ; preds = %45, %36
  br label %76

76:                                               ; preds = %1, %75, %52, %35
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = call i32 @rose_start_heartbeat(%struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = call i32 @bh_unlock_sock(%struct.sock* %79)
  br label %81

81:                                               ; preds = %76, %30
  ret void
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @rose_destroy_socket(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
