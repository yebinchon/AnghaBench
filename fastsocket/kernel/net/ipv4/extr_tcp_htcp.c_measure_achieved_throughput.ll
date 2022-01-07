; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_measure_achieved_throughput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_measure_achieved_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.htcp = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@tcp_time_stamp = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@use_bandwidth_switch = common dso_local global i32 0, align 4
@TCPF_CA_Open = common dso_local global i32 0, align 4
@TCPF_CA_Disorder = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i64)* @measure_achieved_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_achieved_throughput(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca %struct.htcp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.htcp* @inet_csk_ca(%struct.sock* %16)
  store %struct.htcp* %17, %struct.htcp** %9, align 8
  %18 = load i32, i32* @tcp_time_stamp, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %20 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TCP_CA_Open, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.htcp*, %struct.htcp** %9, align 8
  %27 = getelementptr inbounds %struct.htcp, %struct.htcp* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @usecs_to_jiffies(i64 %33)
  %35 = call i32 @measure_rtt(%struct.sock* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @use_bandwidth_switch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %161

40:                                               ; preds = %36
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @TCPF_CA_Open, align 4
  %46 = load i32, i32* @TCPF_CA_Disorder, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.htcp*, %struct.htcp** %9, align 8
  %52 = getelementptr inbounds %struct.htcp, %struct.htcp* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.htcp*, %struct.htcp** %9, align 8
  %55 = getelementptr inbounds %struct.htcp, %struct.htcp* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %161

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.htcp*, %struct.htcp** %9, align 8
  %59 = getelementptr inbounds %struct.htcp, %struct.htcp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.htcp*, %struct.htcp** %9, align 8
  %63 = getelementptr inbounds %struct.htcp, %struct.htcp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.htcp*, %struct.htcp** %9, align 8
  %69 = getelementptr inbounds %struct.htcp, %struct.htcp* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %75

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %73
  %76 = phi i32 [ %71, %73 ], [ 1, %74 ]
  %77 = sub nsw i32 %67, %76
  %78 = icmp sge i32 %64, %77
  br i1 %78, label %79, label %161

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.htcp*, %struct.htcp** %9, align 8
  %82 = getelementptr inbounds %struct.htcp, %struct.htcp* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = load %struct.htcp*, %struct.htcp** %9, align 8
  %86 = getelementptr inbounds %struct.htcp, %struct.htcp* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %161

89:                                               ; preds = %79
  %90 = load %struct.htcp*, %struct.htcp** %9, align 8
  %91 = getelementptr inbounds %struct.htcp, %struct.htcp* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %161

94:                                               ; preds = %89
  %95 = load %struct.htcp*, %struct.htcp** %9, align 8
  %96 = getelementptr inbounds %struct.htcp, %struct.htcp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.htcp*, %struct.htcp** %9, align 8
  %102 = getelementptr inbounds %struct.htcp, %struct.htcp* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = sdiv i32 %99, %104
  store i32 %105, i32* %11, align 4
  %106 = load %struct.htcp*, %struct.htcp** %9, align 8
  %107 = call i32 @htcp_ccount(%struct.htcp* %106)
  %108 = icmp sle i32 %107, 3
  br i1 %108, label %109, label %117

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.htcp*, %struct.htcp** %9, align 8
  %112 = getelementptr inbounds %struct.htcp, %struct.htcp* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  %113 = load %struct.htcp*, %struct.htcp** %9, align 8
  %114 = getelementptr inbounds %struct.htcp, %struct.htcp* %113, i32 0, i32 6
  store i32 %110, i32* %114, align 4
  %115 = load %struct.htcp*, %struct.htcp** %9, align 8
  %116 = getelementptr inbounds %struct.htcp, %struct.htcp* %115, i32 0, i32 5
  store i32 %110, i32* %116, align 4
  br label %155

117:                                              ; preds = %94
  %118 = load %struct.htcp*, %struct.htcp** %9, align 8
  %119 = getelementptr inbounds %struct.htcp, %struct.htcp* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 3, %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %121, %122
  %124 = sdiv i32 %123, 4
  %125 = load %struct.htcp*, %struct.htcp** %9, align 8
  %126 = getelementptr inbounds %struct.htcp, %struct.htcp* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load %struct.htcp*, %struct.htcp** %9, align 8
  %128 = getelementptr inbounds %struct.htcp, %struct.htcp* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.htcp*, %struct.htcp** %9, align 8
  %131 = getelementptr inbounds %struct.htcp, %struct.htcp* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %117
  %135 = load %struct.htcp*, %struct.htcp** %9, align 8
  %136 = getelementptr inbounds %struct.htcp, %struct.htcp* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.htcp*, %struct.htcp** %9, align 8
  %139 = getelementptr inbounds %struct.htcp, %struct.htcp* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %134, %117
  %141 = load %struct.htcp*, %struct.htcp** %9, align 8
  %142 = getelementptr inbounds %struct.htcp, %struct.htcp* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.htcp*, %struct.htcp** %9, align 8
  %145 = getelementptr inbounds %struct.htcp, %struct.htcp* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.htcp*, %struct.htcp** %9, align 8
  %150 = getelementptr inbounds %struct.htcp, %struct.htcp* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.htcp*, %struct.htcp** %9, align 8
  %153 = getelementptr inbounds %struct.htcp, %struct.htcp* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %148, %140
  br label %155

155:                                              ; preds = %154, %109
  %156 = load %struct.htcp*, %struct.htcp** %9, align 8
  %157 = getelementptr inbounds %struct.htcp, %struct.htcp* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.htcp*, %struct.htcp** %9, align 8
  %160 = getelementptr inbounds %struct.htcp, %struct.htcp* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %39, %50, %155, %89, %79, %75
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.htcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @measure_rtt(%struct.sock*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local i32 @htcp_ccount(%struct.htcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
