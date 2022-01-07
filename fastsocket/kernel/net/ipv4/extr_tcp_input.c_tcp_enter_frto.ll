; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_enter_frto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_enter_frto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.sock*)* }
%struct.tcp_sock = type { i32, i64, i64, i32, i64, i64, i64, i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TCP_CA_Disorder = common dso_local global i32 0, align 4
@TCP_CA_Loss = common dso_local global i32 0, align 4
@CA_EVENT_FRTO = common dso_local global i32 0, align 4
@TCPCB_RETRANS = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@TCPF_CA_Recovery = common dso_local global i32 0, align 4
@TCPF_CA_Loss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_enter_frto(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %4, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TCP_CA_Disorder, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %21
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TCP_CA_Loss, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %35, %29
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %86, label %45

45:                                               ; preds = %40, %21, %15
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 @tcp_current_ssthresh(%struct.sock* %46)
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 3
  store i32 2, i32* %59, align 8
  %60 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %61 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %63, align 8
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = call i32 %64(%struct.sock* %65)
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  br label %82

72:                                               ; preds = %45
  %73 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %74 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %76, align 8
  %78 = load %struct.sock*, %struct.sock** %2, align 8
  %79 = call i32 %77(%struct.sock* %78)
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %72, %54
  %83 = load %struct.sock*, %struct.sock** %2, align 8
  %84 = load i32, i32* @CA_EVENT_FRTO, align 4
  %85 = call i32 @tcp_ca_event(%struct.sock* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %40, %35
  %87 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %91 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.sock*, %struct.sock** %2, align 8
  %95 = call %struct.sk_buff* @tcp_write_queue_head(%struct.sock* %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %5, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TCPCB_RETRANS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %86
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %106
  %115 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i64 @tcp_skb_pcount(%struct.sk_buff* %122)
  %124 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %125 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 8
  br label %130

130:                                              ; preds = %114, %106
  %131 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %132 = call i32 @tcp_verify_left_out(%struct.tcp_sock* %131)
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %134 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %137 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %136)
  %138 = add nsw i64 %137, 1
  %139 = call i32 @min(i32 %135, i64 %138)
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %143 = call i64 @tcp_is_sackfrto(%struct.tcp_sock* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %130
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %152 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = shl i32 1, %153
  %155 = load i32, i32* @TCPF_CA_Recovery, align 4
  %156 = load i32, i32* @TCPF_CA_Loss, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %150, %145
  %161 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %162 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @after(i64 %163, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %171 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %174 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %173, i32 0, i32 5
  store i64 %172, i64* %174, align 8
  br label %181

175:                                              ; preds = %160, %150, %130
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %180 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %179, i32 0, i32 5
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %169
  %182 = load %struct.sock*, %struct.sock** %2, align 8
  %183 = load i32, i32* @TCP_CA_Disorder, align 4
  %184 = call i32 @tcp_set_ca_state(%struct.sock* %182, i32 %183)
  %185 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %186 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %189 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %191 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_current_ssthresh(%struct.sock*) #1

declare dso_local i32 @tcp_ca_event(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_head(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_verify_left_out(%struct.tcp_sock*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_is_sackfrto(%struct.tcp_sock*) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
