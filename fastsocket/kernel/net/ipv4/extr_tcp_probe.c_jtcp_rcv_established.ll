; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_probe.c_jtcp_rcv_established.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_probe.c_jtcp_rcv_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, %struct.tcp_log* }
%struct.tcp_log = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcp_sock = type { i64, i32, i32, i32, i32 }
%struct.inet_sock = type { i32, i32, i32, i32 }

@port = common dso_local global i64 0, align 8
@full = common dso_local global i64 0, align 8
@tcp_probe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bufsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32)* @jtcp_rcv_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jtcp_rcv_established(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.tcp_log*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %10, align 8
  %16 = load i64, i64* @port, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %4
  %19 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %20 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  %23 = load i64, i64* @port, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %27 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohs(i32 %28)
  %30 = load i64, i64* @port, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %118

32:                                               ; preds = %25, %18, %4
  %33 = load i64, i64* @full, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 0), align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %118

41:                                               ; preds = %35, %32
  %42 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 3))
  %43 = call i32 (...) @tcp_probe_avail()
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %112

45:                                               ; preds = %41
  %46 = load %struct.tcp_log*, %struct.tcp_log** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 4), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 1), align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %46, i64 %48
  store %struct.tcp_log* %49, %struct.tcp_log** %11, align 8
  %50 = call i32 (...) @ktime_get()
  %51 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %52 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %54 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %57 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %59 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %62 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %64 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %67 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %69 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %72 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %77 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %82 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %87 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %92 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %94 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %97 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = call i32 @tcp_current_ssthresh(%struct.sock* %98)
  %100 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %101 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 3
  %106 = load %struct.tcp_log*, %struct.tcp_log** %11, align 8
  %107 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 1), align 8
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @bufsize, align 4
  %111 = srem i32 %109, %110
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 1), align 8
  br label %112

112:                                              ; preds = %45, %41
  %113 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %114 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 0), align 8
  %116 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 3))
  %117 = call i32 @wake_up(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 2))
  br label %118

118:                                              ; preds = %112, %35, %25
  %119 = call i32 (...) @jprobe_return()
  ret i32 0
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tcp_probe_avail(...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @tcp_current_ssthresh(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @jprobe_return(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
