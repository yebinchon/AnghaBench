; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_measure_rcv_mss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_measure_rcv_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.inet_connection_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@TCP_MIN_RCVMSS = common dso_local global i32 0, align 4
@TCP_MIN_MSS = common dso_local global i32 0, align 4
@TCP_REMNANT = common dso_local global i32 0, align 4
@ICSK_ACK_PUSHED = common dso_local global i32 0, align 4
@ICSK_ACK_PUSHED2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_measure_rcv_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_measure_rcv_mss(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %5, align 8
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %15 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ %20, %22 ], [ %27, %23 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %33 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp uge i32 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %40 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %117

42:                                               ; preds = %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i64 @skb_transport_header(%struct.sk_buff* %46)
  %48 = sub nsw i64 %45, %47
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = load i32, i32* @TCP_MIN_RCVMSS, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = icmp uge i64 %54, %57
  br i1 %58, label %73, label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = load i32, i32* @TCP_MIN_MSS, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = icmp uge i64 %61, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @tcp_hdr(%struct.sk_buff* %67)
  %69 = call i32 @tcp_flag_word(i32 %68)
  %70 = load i32, i32* @TCP_REMNANT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %66, %42
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %84 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %73
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %92 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  br label %117

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %66, %59
  %96 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %97 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ICSK_ACK_PUSHED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load i32, i32* @ICSK_ACK_PUSHED2, align 4
  %105 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %106 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %95
  %111 = load i32, i32* @ICSK_ACK_PUSHED, align 4
  %112 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %113 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %89, %110, %37
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_flag_word(i32) #1

declare dso_local i32 @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
