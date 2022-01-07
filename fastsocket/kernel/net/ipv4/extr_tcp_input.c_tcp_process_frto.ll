; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_process_frto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_process_frto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@FLAG_DATA_ACKED = common dso_local global i32 0, align 4
@FLAG_NONHEAD_RETRANS_ACKED = common dso_local global i32 0, align 4
@FLAG_RETRANS_DATA_ACKED = common dso_local global i32 0, align 4
@FLAG_ANY_PROGRESS = common dso_local global i32 0, align 4
@FLAG_NOT_DUP = common dso_local global i32 0, align 4
@FLAG_FORWARD_PROGRESS = common dso_local global i32 0, align 4
@FLAG_DATA_SACKED = common dso_local global i32 0, align 4
@FLAG_ONLY_ORIG_SACKED = common dso_local global i32 0, align 4
@sysctl_tcp_frto_response = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSPURIOUSRTOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_process_frto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_process_frto(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %6, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %10 = call i32 @tcp_verify_left_out(%struct.tcp_sock* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FLAG_NONHEAD_RETRANS_ACKED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FLAG_RETRANS_DATA_ACKED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %19
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %29, %24
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @before(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %37
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 2, i32 3
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @tcp_enter_frto_loss(%struct.sock* %47, i32 %53, i32 %54)
  store i32 1, i32* %3, align 4
  br label %193

56:                                               ; preds = %37
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %58 = call i32 @tcp_is_sackfrto(%struct.tcp_sock* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @FLAG_ANY_PROGRESS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @FLAG_NOT_DUP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %193

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 0, i32 3
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @tcp_enter_frto_loss(%struct.sock* %77, i32 %83, i32 %84)
  store i32 1, i32* %3, align 4
  br label %193

86:                                               ; preds = %71
  br label %150

87:                                               ; preds = %56
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %87
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %94 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %99 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @tcp_enter_frto_loss(%struct.sock* %102, i32 2, i32 %103)
  store i32 1, i32* %3, align 4
  br label %193

105:                                              ; preds = %97
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %110 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %109)
  %111 = call i64 @min(i64 %108, i64 %110)
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  store i32 1, i32* %3, align 4
  br label %193

114:                                              ; preds = %92, %87
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 2
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @FLAG_FORWARD_PROGRESS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @FLAG_DATA_SACKED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @FLAG_ONLY_ORIG_SACKED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %129, %119
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @FLAG_FORWARD_PROGRESS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @FLAG_NOT_DUP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 1, i32* %3, align 4
  br label %193

145:                                              ; preds = %139, %134
  %146 = load %struct.sock*, %struct.sock** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @tcp_enter_frto_loss(%struct.sock* %146, i32 3, i32 %147)
  store i32 1, i32* %3, align 4
  br label %193

149:                                              ; preds = %129, %124, %114
  br label %150

150:                                              ; preds = %149, %86
  %151 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %152 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %157 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %156)
  %158 = add nsw i64 %157, 2
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %160 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %162 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %161, i32 0, i32 0
  store i32 2, i32* %162, align 8
  %163 = load %struct.sock*, %struct.sock** %4, align 8
  %164 = call i32 @tcp_may_send_now(%struct.sock* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %155
  %167 = load %struct.sock*, %struct.sock** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @tcp_enter_frto_loss(%struct.sock* %167, i32 2, i32 %168)
  br label %170

170:                                              ; preds = %166, %155
  store i32 1, i32* %3, align 4
  br label %193

171:                                              ; preds = %150
  %172 = load i32, i32* @sysctl_tcp_frto_response, align 4
  switch i32 %172, label %180 [
    i32 2, label %173
    i32 1, label %177
  ]

173:                                              ; preds = %171
  %174 = load %struct.sock*, %struct.sock** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @tcp_undo_spur_to_response(%struct.sock* %174, i32 %175)
  br label %183

177:                                              ; preds = %171
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %179 = call i32 @tcp_conservative_spur_to_response(%struct.tcp_sock* %178)
  br label %183

180:                                              ; preds = %171
  %181 = load %struct.sock*, %struct.sock** %4, align 8
  %182 = call i32 @tcp_ratehalving_spur_to_response(%struct.sock* %181)
  br label %183

183:                                              ; preds = %180, %177, %173
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  %186 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %187 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %186, i32 0, i32 1
  store i64 0, i64* %187, align 8
  %188 = load %struct.sock*, %struct.sock** %4, align 8
  %189 = call i32 @sock_net(%struct.sock* %188)
  %190 = load i32, i32* @LINUX_MIB_TCPSPURIOUSRTOS, align 4
  %191 = call i32 @NET_INC_STATS_BH(i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %183
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %170, %145, %144, %105, %101, %76, %70, %46
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_verify_left_out(%struct.tcp_sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @tcp_enter_frto_loss(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_is_sackfrto(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @tcp_may_send_now(%struct.sock*) #1

declare dso_local i32 @tcp_undo_spur_to_response(%struct.sock*, i32) #1

declare dso_local i32 @tcp_conservative_spur_to_response(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_ratehalving_spur_to_response(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
