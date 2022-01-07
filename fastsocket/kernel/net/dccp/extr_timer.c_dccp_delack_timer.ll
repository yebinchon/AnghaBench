; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_delack_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_delack_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.inet_connection_sock = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }

@LINUX_MIB_DELAYEDACKLOCKED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCP_DELACK_MIN = common dso_local global i64 0, align 8
@DCCP_CLOSED = common dso_local global i64 0, align 8
@ICSK_ACK_TIMER = common dso_local global i32 0, align 4
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@LINUX_MIB_DELAYEDACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dccp_delack_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_delack_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i64 @sock_owned_by_user(%struct.sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @sock_net(%struct.sock* %18)
  %20 = load i32, i32* @LINUX_MIB_DELAYEDACKLOCKED, align 4
  %21 = call i32 @NET_INC_STATS_BH(i32 %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %24 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %23, i32 0, i32 2
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @TCP_DELACK_MIN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @sk_reset_timer(%struct.sock* %22, i32* %24, i64 %27)
  br label %107

29:                                               ; preds = %1
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DCCP_CLOSED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %37 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35, %29
  br label %107

44:                                               ; preds = %35
  %45 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %46 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = call i64 @time_after(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %55 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %54, i32 0, i32 2
  %56 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %57 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @sk_reset_timer(%struct.sock* %53, i32* %55, i64 %59)
  br label %107

61:                                               ; preds = %44
  %62 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %65 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = call i64 @inet_csk_ack_scheduled(%struct.sock* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %61
  %73 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %74 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %72
  %79 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %80 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 1
  %84 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %85 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @min(i32 %83, i32 %86)
  %88 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %89 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  br label %99

91:                                               ; preds = %72
  %92 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %93 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @TCP_ATO_MIN, align 4
  %96 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %97 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  br label %99

99:                                               ; preds = %91, %78
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call i32 @dccp_send_ack(%struct.sock* %100)
  %102 = load %struct.sock*, %struct.sock** %3, align 8
  %103 = call i32 @sock_net(%struct.sock* %102)
  %104 = load i32, i32* @LINUX_MIB_DELAYEDACKS, align 4
  %105 = call i32 @NET_INC_STATS_BH(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %61
  br label %107

107:                                              ; preds = %106, %52, %43, %14
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = call i32 @bh_unlock_sock(%struct.sock* %108)
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = call i32 @sock_put(%struct.sock* %110)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @inet_csk_ack_scheduled(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
