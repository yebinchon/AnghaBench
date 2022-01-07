; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_init_metrics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_init_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_2__ = type { i8* }

@RTAX_CWND = common dso_local global i32 0, align 4
@RTAX_SSTHRESH = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i64 0, align 8
@RTAX_REORDERING = common dso_local global i32 0, align 4
@RTAX_RTT = common dso_local global i32 0, align 4
@RTAX_RTTVAR = common dso_local global i32 0, align 4
@TCP_TIMEOUT_FALLBACK = common dso_local global i8* null, align 8
@tcp_time_stamp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_init_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_init_metrics(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %7)
  store %struct.dst_entry* %8, %struct.dst_entry** %4, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %10 = icmp eq %struct.dst_entry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %132

12:                                               ; preds = %1
  %13 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %14 = call i32 @dst_confirm(%struct.dst_entry* %13)
  %15 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %16 = load i32, i32* @RTAX_CWND, align 4
  %17 = call i64 @dst_metric_locked(%struct.dst_entry* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %21 = load i32, i32* @RTAX_CWND, align 4
  %22 = call i64 @dst_metric(%struct.dst_entry* %20, i32 %21)
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %12
  %26 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %27 = load i32, i32* @RTAX_SSTHRESH, align 4
  %28 = call i64 @dst_metric(%struct.dst_entry* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %32 = load i32, i32* @RTAX_SSTHRESH, align 4
  %33 = call i64 @dst_metric(%struct.dst_entry* %31, i32 %32)
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %30
  br label %54

50:                                               ; preds = %25
  %51 = load i64, i64* @TCP_INFINITE_SSTHRESH, align 8
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %56 = load i32, i32* @RTAX_REORDERING, align 4
  %57 = call i64 @dst_metric(%struct.dst_entry* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %64 = load i32, i32* @RTAX_REORDERING, align 4
  %65 = call i64 @dst_metric(%struct.dst_entry* %63, i32 %64)
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %69 = call i32 @tcp_disable_fack(%struct.tcp_sock* %68)
  %70 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %71 = load i32, i32* @RTAX_REORDERING, align 4
  %72 = call i64 @dst_metric(%struct.dst_entry* %70, i32 %71)
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %59, %54
  %76 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %77 = load i32, i32* @RTAX_RTT, align 4
  %78 = call i64 @dst_metric(%struct.dst_entry* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75
  br label %132

86:                                               ; preds = %80
  %87 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %88 = load i32, i32* @RTAX_RTT, align 4
  %89 = call i64 @dst_metric_rtt(%struct.dst_entry* %87, i32 %88)
  %90 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %91 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %96 = load i32, i32* @RTAX_RTT, align 4
  %97 = call i64 @dst_metric_rtt(%struct.dst_entry* %95, i32 %96)
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %101 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %104 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %94, %86
  %106 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %107 = load i32, i32* @RTAX_RTTVAR, align 4
  %108 = call i64 @dst_metric_rtt(%struct.dst_entry* %106, i32 %107)
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %108, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %105
  %114 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %115 = load i32, i32* @RTAX_RTTVAR, align 4
  %116 = call i64 @dst_metric_rtt(%struct.dst_entry* %114, i32 %115)
  %117 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %118 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.sock*, %struct.sock** %2, align 8
  %123 = call i32 @tcp_rto_min(%struct.sock* %122)
  %124 = call i64 @max(i64 %121, i32 %123)
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %126 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %125, i32 0, i32 6
  store i64 %124, i64* %126, align 8
  %127 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %128 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %127, i32 0, i32 5
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %113, %105
  %130 = load %struct.sock*, %struct.sock** %2, align 8
  %131 = call i32 @tcp_set_rto(%struct.sock* %130)
  br label %132

132:                                              ; preds = %129, %85, %11
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %134 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load i8*, i8** @TCP_TIMEOUT_FALLBACK, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 6
  store i64 %139, i64* %141, align 8
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 5
  store i64 %139, i64* %143, align 8
  %144 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %145 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %144, i32 0, i32 4
  store i64 %139, i64* %145, align 8
  %146 = load i8*, i8** @TCP_TIMEOUT_FALLBACK, align 8
  %147 = load %struct.sock*, %struct.sock** %2, align 8
  %148 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %147)
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i8* %146, i8** %149, align 8
  br label %150

150:                                              ; preds = %137, %132
  %151 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %152 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %157 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %156, i32 0, i32 8
  store i32 1, i32* %157, align 4
  br label %164

158:                                              ; preds = %150
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %160 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %161 = call i32 @tcp_init_cwnd(%struct.tcp_sock* %159, %struct.dst_entry* %160)
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i32, i32* @tcp_time_stamp, align 4
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 8
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @dst_confirm(%struct.dst_entry*) #1

declare dso_local i64 @dst_metric_locked(%struct.dst_entry*, i32) #1

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_disable_fack(%struct.tcp_sock*) #1

declare dso_local i64 @dst_metric_rtt(%struct.dst_entry*, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @tcp_rto_min(%struct.sock*) #1

declare dso_local i32 @tcp_set_rto(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_init_cwnd(%struct.tcp_sock*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
