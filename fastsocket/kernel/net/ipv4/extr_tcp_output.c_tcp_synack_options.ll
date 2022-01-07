; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_synack_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_synack_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_out_options = type { i32, i32, i32, i32, i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.inet_request_sock = type { i8, i8, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@TCPOLEN_MSS_ALIGNED = common dso_local global i64 0, align 8
@OPTION_WSCALE = common dso_local global i32 0, align 4
@TCPOLEN_WSCALE_ALIGNED = common dso_local global i64 0, align 8
@OPTION_TS = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@OPTION_SACK_ADVERTISE = common dso_local global i32 0, align 4
@TCPOLEN_SACKPERM_ALIGNED = common dso_local global i64 0, align 8
@OPTION_MD5 = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*, i32, %struct.sk_buff*, %struct.tcp_out_options*, %struct.tcp_md5sig_key**)* @tcp_synack_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_synack_options(%struct.sock* %0, %struct.request_sock* %1, i32 %2, %struct.sk_buff* %3, %struct.tcp_out_options* %4, %struct.tcp_md5sig_key** %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.tcp_out_options*, align 8
  %12 = alloca %struct.tcp_md5sig_key**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inet_request_sock*, align 8
  %15 = alloca i8, align 1
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.request_sock* %1, %struct.request_sock** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store %struct.tcp_out_options* %4, %struct.tcp_out_options** %11, align 8
  store %struct.tcp_md5sig_key** %5, %struct.tcp_md5sig_key*** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %17 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %16)
  store %struct.inet_request_sock* %17, %struct.inet_request_sock** %14, align 8
  %18 = load %struct.tcp_md5sig_key**, %struct.tcp_md5sig_key*** %12, align 8
  store %struct.tcp_md5sig_key* null, %struct.tcp_md5sig_key** %18, align 8
  %19 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %20 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %6
  %24 = load %struct.tcp_md5sig_key**, %struct.tcp_md5sig_key*** %12, align 8
  %25 = load %struct.tcp_md5sig_key*, %struct.tcp_md5sig_key** %24, align 8
  %26 = icmp ne %struct.tcp_md5sig_key* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %29 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i1 [ false, %23 ], [ %32, %27 ]
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %33, %6
  %37 = phi i1 [ false, %6 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %15, align 1
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %42 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* @TCPOLEN_MSS_ALIGNED, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %49 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @likely(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %36
  %54 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %55 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %58 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @OPTION_WSCALE, align 4
  %60 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %61 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* @TCPOLEN_WSCALE_ALIGNED, align 8
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %53, %36
  %70 = load i8, i8* %15, align 1
  %71 = call i64 @likely(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load i32, i32* @OPTION_TS, align 4
  %75 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %76 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %84 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %86 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %89 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %73, %69
  %96 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %97 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 8
  %99 = call i64 @likely(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %103 = load %struct.tcp_out_options*, %struct.tcp_out_options** %11, align 8
  %104 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i8, i8* %15, align 1
  %108 = icmp ne i8 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  %114 = load i64, i64* @TCPOLEN_SACKPERM_ALIGNED, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %113, %101
  br label %120

120:                                              ; preds = %119, %95
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @likely(i8 signext) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
