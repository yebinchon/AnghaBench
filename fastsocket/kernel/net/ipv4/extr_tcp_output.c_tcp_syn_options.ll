; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_syn_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_syn_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_out_options = type { i32, i32, i32, i32, i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.tcp_md5sig_key* (%struct.sock*, %struct.sock*)* }
%struct.TYPE_6__ = type { i32 }

@TCPOLEN_MSS_ALIGNED = common dso_local global i64 0, align 8
@sysctl_tcp_timestamps = common dso_local global i64 0, align 8
@OPTION_TS = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@sysctl_tcp_window_scaling = common dso_local global i32 0, align 4
@OPTION_WSCALE = common dso_local global i32 0, align 4
@TCPOLEN_WSCALE_ALIGNED = common dso_local global i64 0, align 8
@sysctl_tcp_sack = common dso_local global i32 0, align 4
@OPTION_SACK_ADVERTISE = common dso_local global i32 0, align 4
@TCPOLEN_SACKPERM_ALIGNED = common dso_local global i64 0, align 8
@OPTION_MD5 = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.tcp_out_options*, %struct.tcp_md5sig_key**)* @tcp_syn_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_syn_options(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcp_out_options* %2, %struct.tcp_md5sig_key** %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcp_out_options*, align 8
  %8 = alloca %struct.tcp_md5sig_key**, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcp_out_options* %2, %struct.tcp_out_options** %7, align 8
  store %struct.tcp_md5sig_key** %3, %struct.tcp_md5sig_key*** %8, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.tcp_md5sig_key**, %struct.tcp_md5sig_key*** %8, align 8
  store %struct.tcp_md5sig_key* null, %struct.tcp_md5sig_key** %13, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call i32 @tcp_advertise_mss(%struct.sock* %14)
  %16 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %17 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* @TCPOLEN_MSS_ALIGNED, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* @sysctl_tcp_timestamps, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.tcp_md5sig_key**, %struct.tcp_md5sig_key*** %8, align 8
  %27 = load %struct.tcp_md5sig_key*, %struct.tcp_md5sig_key** %26, align 8
  %28 = icmp eq %struct.tcp_md5sig_key* %27, null
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i1 [ false, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, i32* @OPTION_TS, align 4
  %36 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %45 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %51 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %34, %29
  %58 = load i32, i32* @sysctl_tcp_window_scaling, align 4
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @OPTION_WSCALE, align 4
  %69 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %70 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i64, i64* @TCPOLEN_WSCALE_ALIGNED, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %61, %57
  %79 = load i32, i32* @sysctl_tcp_sack, align 4
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %84 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %85 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @OPTION_TS, align 4
  %89 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %90 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %82
  %99 = load i64, i64* @TCPOLEN_SACKPERM_ALIGNED, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %82
  br label %105

105:                                              ; preds = %104, %78
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_advertise_mss(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
