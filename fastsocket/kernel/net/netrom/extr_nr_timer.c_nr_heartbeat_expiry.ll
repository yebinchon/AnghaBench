; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.nr_sock = type { i32, i32, i32, i32 }

@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@NR_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@NR_COND_ACK_PENDING = common dso_local global i32 0, align 4
@NR_INFOACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nr_heartbeat_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_heartbeat_expiry(i64 %0) #0 {
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
  %11 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %12 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %78 [
    i32 129, label %14
    i32 128, label %40
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
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = load i32, i32* @SOCK_DEAD, align 4
  %28 = call i32 @sock_flag(%struct.sock* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25, %14
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @sock_hold(%struct.sock* %31)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @bh_unlock_sock(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @nr_destroy_socket(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @sock_put(%struct.sock* %37)
  br label %83

39:                                               ; preds = %25, %19
  br label %78

40:                                               ; preds = %1
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = call i32 @atomic_read(i32* %42)
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 2
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %40
  %50 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %51 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %60 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %66 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %70 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %73 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = load i32, i32* @NR_INFOACK, align 4
  %76 = call i32 @nr_write_internal(%struct.sock* %74, i32 %75)
  br label %78

77:                                               ; preds = %49, %40
  br label %78

78:                                               ; preds = %1, %77, %56, %39
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = call i32 @nr_start_heartbeat(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @bh_unlock_sock(%struct.sock* %81)
  br label %83

83:                                               ; preds = %78, %30
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @nr_destroy_socket(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_start_heartbeat(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
