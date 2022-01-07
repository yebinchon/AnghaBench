; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i64, i32, i32, i8* }
%struct.inet_sock = type { i64, i64 }
%struct.inet_connection_sock = type { i32, i64, i64 }
%struct.tcp_sock = type { i32, i32, i64, i32, i32, i64, i64, i32, i64, i64, i32 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSING = common dso_local global i32 0, align 4
@TCPF_LAST_ACK = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i8* null, align 8
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @TCP_CLOSE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load i32, i32* @TCP_CLOSE, align 4
  %25 = call i32 @tcp_set_state(%struct.sock* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TCP_LISTEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @inet_csk_listen_stop(%struct.sock* %31)
  br label %70

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @tcp_need_reset(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @TCPF_CLOSING, align 4
  %49 = load i32, i32* @TCPF_LAST_ACK, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45, %33
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 (...) @gfp_any()
  %56 = call i32 @tcp_send_active_reset(%struct.sock* %54, i32 %55)
  %57 = load i8*, i8** @ECONNRESET, align 8
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  br label %69

60:                                               ; preds = %45, %37
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TCP_SYN_SENT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** @ECONNRESET, align 8
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = call i32 @tcp_clear_xmit_timers(%struct.sock* %71)
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 5
  %75 = call i32 @__skb_queue_purge(i32* %74)
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = call i32 @tcp_write_queue_purge(%struct.sock* %76)
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 10
  %80 = call i32 @__skb_queue_purge(i32* %79)
  %81 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %82 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %70
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = call i32 @inet_reset_saddr(%struct.sock* %90)
  br label %92

92:                                               ; preds = %89, %70
  %93 = load %struct.sock*, %struct.sock** %3, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = load i32, i32* @SOCK_DONE, align 4
  %97 = call i32 @sock_reset_flag(%struct.sock* %95, i32 %96)
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 9
  store i64 0, i64* %99, align 8
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %101 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 2
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %92
  %115 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %116 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %118 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %117, i32 0, i32 3
  store i32 2, i32* %118, align 8
  %119 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %120 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %122 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %121, i32 0, i32 8
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %124 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %125 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 8
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  %128 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %129 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = load i32, i32* @TCP_CA_Open, align 4
  %132 = call i32 @tcp_set_ca_state(%struct.sock* %130, i32 %131)
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %134 = call i32 @tcp_clear_retrans(%struct.tcp_sock* %133)
  %135 = load %struct.sock*, %struct.sock** %3, align 8
  %136 = call i32 @inet_csk_delack_init(%struct.sock* %135)
  %137 = load %struct.sock*, %struct.sock** %3, align 8
  %138 = call i32 @tcp_init_send_head(%struct.sock* %137)
  %139 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %140 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %139, i32 0, i32 4
  %141 = call i32 @memset(i32* %140, i32 0, i32 4)
  %142 = load %struct.sock*, %struct.sock** %3, align 8
  %143 = call i32 @__sk_dst_reset(%struct.sock* %142)
  %144 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %145 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %114
  %149 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %150 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %148, %114
  %155 = phi i1 [ false, %114 ], [ %153, %148 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @WARN_ON(i32 %156)
  %158 = load %struct.sock*, %struct.sock** %3, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 2
  %160 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %159, align 8
  %161 = load %struct.sock*, %struct.sock** %3, align 8
  %162 = call i32 %160(%struct.sock* %161)
  %163 = load i32, i32* %8, align 4
  ret i32 %163
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i64 @tcp_need_reset(i32) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @tcp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_clear_retrans(%struct.tcp_sock*) #1

declare dso_local i32 @inet_csk_delack_init(%struct.sock*) #1

declare dso_local i32 @tcp_init_send_head(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
