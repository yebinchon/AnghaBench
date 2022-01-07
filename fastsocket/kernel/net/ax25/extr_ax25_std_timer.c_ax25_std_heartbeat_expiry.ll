; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_timer.c_ax25_std_heartbeat_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_timer.c_ax25_std_heartbeat_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.sock* }
%struct.sock = type { i32, i32, i32 }

@SOCK_DESTROY = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@AX25_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@AX25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@AX25_RR = common dso_local global i32 0, align 4
@AX25_POLLOFF = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_std_heartbeat_expiry(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = icmp ne %struct.sock* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call i32 @bh_lock_sock(%struct.sock* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %91 [
    i32 130, label %16
    i32 129, label %52
    i32 128, label %52
  ]

16:                                               ; preds = %12
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = icmp ne %struct.sock* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i32, i32* @SOCK_DESTROY, align 4
  %22 = call i32 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TCP_LISTEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = load i32, i32* @SOCK_DEAD, align 4
  %33 = call i32 @sock_flag(%struct.sock* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30, %19, %16
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = icmp ne %struct.sock* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call i32 @sock_hold(%struct.sock* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = call i32 @ax25_destroy_socket(%struct.TYPE_6__* %41)
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @bh_unlock_sock(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 @sock_put(%struct.sock* %45)
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = call i32 @ax25_destroy_socket(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %47, %38
  br label %100

51:                                               ; preds = %30, %24
  br label %91

52:                                               ; preds = %12, %12
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = icmp ne %struct.sock* %53, null
  br i1 %54, label %55, label %90

55:                                               ; preds = %52
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = call i32 @atomic_read(i32* %57)
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 1
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %55
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %64
  %72 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = load i32, i32* @AX25_RR, align 4
  %86 = load i32, i32* @AX25_POLLOFF, align 4
  %87 = load i32, i32* @AX25_RESPONSE, align 4
  %88 = call i32 @ax25_send_control(%struct.TYPE_6__* %84, i32 %85, i32 %86, i32 %87)
  br label %91

89:                                               ; preds = %64, %55
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %90, %12, %71, %51
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = icmp ne %struct.sock* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = call i32 @bh_unlock_sock(%struct.sock* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = call i32 @ax25_start_heartbeat(%struct.TYPE_6__* %98)
  br label %100

100:                                              ; preds = %97, %50
  ret void
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @ax25_destroy_socket(%struct.TYPE_6__*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ax25_send_control(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ax25_start_heartbeat(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
