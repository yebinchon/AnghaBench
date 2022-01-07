; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bcbearer_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bcbearer_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_18__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.bearer*, %struct.bearer* }
%struct.bearer = type { %struct.TYPE_15__*, %struct.TYPE_21__, i32 }
%struct.TYPE_15__ = type { i32, i64 (%struct.sk_buff*, %struct.TYPE_21__*, i32*)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.tipc_media_addr = type { i32 }
%struct.tipc_msg = type { i32 }

@tipc_bcbearer_send.send_count = internal global i32 0, align 4
@tipc_cltr_bcast_nodes = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@tipc_net_id = common dso_local global i32 0, align 4
@bcbearer = common dso_local global %struct.TYPE_14__* null, align 8
@MAX_BEARERS = common dso_local global i32 0, align 4
@bcl = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_bearer*, %struct.tipc_media_addr*)* @tipc_bcbearer_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bcbearer_send(%struct.sk_buff* %0, %struct.tipc_bearer* %1, %struct.tipc_media_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_bearer*, align 8
  %7 = alloca %struct.tipc_media_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca %struct.bearer*, align 8
  %12 = alloca %struct.bearer*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %6, align 8
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %13)
  %15 = call i32 @msg_non_seq(%struct.tipc_msg* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @tipc_cltr_bcast_nodes, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @tipc_cltr_bcast_nodes, i32 0, i32 0), align 8
  %28 = call i32 @bcbuf_set_acks(%struct.sk_buff* %26, i64 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %29)
  store %struct.tipc_msg* %30, %struct.tipc_msg** %10, align 8
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %32 = call i32 @msg_set_non_seq(%struct.tipc_msg* %31, i32 1)
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %34 = load i32, i32* @tipc_net_id, align 4
  %35 = call i32 @msg_set_mc_netid(%struct.tipc_msg* %33, i32 %34)
  br label %36

36:                                               ; preds = %21, %3
  %37 = load i32, i32* @tipc_bcbearer_send.send_count, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @tipc_bcbearer_send.send_count, align 4
  %39 = icmp sge i32 %38, 10
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  br i1 %39, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* @tipc_bcbearer_send.send_count, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = bitcast %struct.TYPE_20__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 bitcast (%struct.TYPE_20__* @tipc_cltr_bcast_nodes to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %180, %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MAX_BEARERS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %183

50:                                               ; preds = %46
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.bearer*, %struct.bearer** %57, align 8
  store %struct.bearer* %58, %struct.bearer** %11, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.bearer*, %struct.bearer** %65, align 8
  store %struct.bearer* %66, %struct.bearer** %12, align 8
  %67 = load %struct.bearer*, %struct.bearer** %11, align 8
  %68 = icmp ne %struct.bearer* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %50
  br label %183

70:                                               ; preds = %50
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load %struct.bearer*, %struct.bearer** %11, align 8
  %74 = getelementptr inbounds %struct.bearer, %struct.bearer* %73, i32 0, i32 2
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = call i32 @tipc_nmap_diff(%struct.TYPE_20__* %72, i32* %74, %struct.TYPE_20__* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %180

88:                                               ; preds = %70
  %89 = load %struct.bearer*, %struct.bearer** %11, align 8
  %90 = getelementptr inbounds %struct.bearer, %struct.bearer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %123, label %94

94:                                               ; preds = %88
  %95 = load %struct.bearer*, %struct.bearer** %11, align 8
  %96 = getelementptr inbounds %struct.bearer, %struct.bearer* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i64 (%struct.sk_buff*, %struct.TYPE_21__*, i32*)*, i64 (%struct.sk_buff*, %struct.TYPE_21__*, i32*)** %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load %struct.bearer*, %struct.bearer** %11, align 8
  %102 = getelementptr inbounds %struct.bearer, %struct.bearer* %101, i32 0, i32 1
  %103 = load %struct.bearer*, %struct.bearer** %11, align 8
  %104 = getelementptr inbounds %struct.bearer, %struct.bearer* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = call i64 %99(%struct.sk_buff* %100, %struct.TYPE_21__* %102, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.bearer*, %struct.bearer** %12, align 8
  %114 = icmp ne %struct.bearer* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.bearer*, %struct.bearer** %12, align 8
  %117 = getelementptr inbounds %struct.bearer, %struct.bearer* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %149

122:                                              ; preds = %115, %112, %109
  br label %166

123:                                              ; preds = %94, %88
  %124 = load %struct.bearer*, %struct.bearer** %12, align 8
  %125 = icmp ne %struct.bearer* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load %struct.bearer*, %struct.bearer** %12, align 8
  %128 = getelementptr inbounds %struct.bearer, %struct.bearer* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %126
  %133 = load %struct.bearer*, %struct.bearer** %12, align 8
  %134 = getelementptr inbounds %struct.bearer, %struct.bearer* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i64 (%struct.sk_buff*, %struct.TYPE_21__*, i32*)*, i64 (%struct.sk_buff*, %struct.TYPE_21__*, i32*)** %136, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load %struct.bearer*, %struct.bearer** %12, align 8
  %140 = getelementptr inbounds %struct.bearer, %struct.bearer* %139, i32 0, i32 1
  %141 = load %struct.bearer*, %struct.bearer** %12, align 8
  %142 = getelementptr inbounds %struct.bearer, %struct.bearer* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = call i64 %137(%struct.sk_buff* %138, %struct.TYPE_21__* %140, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132, %126, %123
  br label %180

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %121
  %150 = load %struct.bearer*, %struct.bearer** %12, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  store %struct.bearer* %150, %struct.bearer** %157, align 8
  %158 = load %struct.bearer*, %struct.bearer** %11, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store %struct.bearer* %158, %struct.bearer** %165, align 8
  br label %166

166:                                              ; preds = %149, %122
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %193

173:                                              ; preds = %166
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = bitcast %struct.TYPE_20__* %175 to i8*
  %179 = bitcast %struct.TYPE_20__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 8, i1 false)
  br label %180

180:                                              ; preds = %173, %147, %87
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %46

183:                                              ; preds = %69, %46
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bcbearer, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bcl, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  store i32 1, i32* %4, align 4
  br label %193

193:                                              ; preds = %183, %172
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_non_seq(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcbuf_set_acks(%struct.sk_buff*, i64) #1

declare dso_local i32 @msg_set_non_seq(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_mc_netid(%struct.tipc_msg*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tipc_nmap_diff(%struct.TYPE_20__*, i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
