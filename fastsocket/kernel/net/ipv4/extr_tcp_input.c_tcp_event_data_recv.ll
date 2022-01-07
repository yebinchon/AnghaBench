; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_event_data_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_event_data_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@tcp_time_stamp = common dso_local global i8* null, align 8
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_event_data_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_event_data_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @inet_csk_schedule_ack(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @tcp_measure_rcv_mss(%struct.sock* %15, %struct.sk_buff* %16)
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %19 = call i32 @tcp_rcv_rtt_measure(%struct.tcp_sock* %18)
  %20 = load i8*, i8** @tcp_time_stamp, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @tcp_incr_quickack(%struct.sock* %27)
  %29 = load i32, i32* @TCP_ATO_MIN, align 4
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %107

33:                                               ; preds = %2
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %36 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %34 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TCP_ATO_MIN, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %33
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 1
  %53 = load i32, i32* @TCP_ATO_MIN, align 4
  %54 = sdiv i32 %53, 2
  %55 = add nsw i32 %52, %54
  %56 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %57 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %106

59:                                               ; preds = %33
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %62 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %59
  %67 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %68 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 1
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %75 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %78 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %82 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %66
  %86 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %87 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %90 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %85, %66
  br label %105

93:                                               ; preds = %59
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %96 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call i32 @tcp_incr_quickack(%struct.sock* %100)
  %102 = load %struct.sock*, %struct.sock** %3, align 8
  %103 = call i32 @sk_mem_reclaim(%struct.sock* %102)
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %92
  br label %106

106:                                              ; preds = %105, %47
  br label %107

107:                                              ; preds = %106, %26
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %110 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @TCP_ECN_check_ce(%struct.tcp_sock* %112, %struct.sk_buff* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 128
  br i1 %118, label %119, label %123

119:                                              ; preds = %107
  %120 = load %struct.sock*, %struct.sock** %3, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @tcp_grow_window(%struct.sock* %120, %struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %119, %107
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local i32 @tcp_measure_rcv_mss(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_rcv_rtt_measure(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_incr_quickack(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @TCP_ECN_check_ce(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_grow_window(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
