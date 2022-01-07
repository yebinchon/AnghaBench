; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_sync_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_sync_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_conn_options = type { i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_protocol = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%union.nf_inet_addr = type { i32 }

@STYPE_F_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"BACKUP, IPv6 msg received, and IPVS is not compiled for IPv6\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@IPVS_OPT_F_PARAM = common dso_local global i32 0, align 4
@IP_VS_PEDATA_MAXLEN = common dso_local global i32 0, align 4
@IPVS_OPT_F_PE_DATA = common dso_local global i32 0, align 4
@IP_VS_PENAME_MAXLEN = common dso_local global i32 0, align 4
@IPVS_OPT_F_PE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BACKUP, Unknown mandatory param %d found\0A\00", align 1
@IP_VS_CONN_F_BACKUP_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SYNC = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"BACKUP, Unsupported protocol %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"BACKUP, Invalid %s state %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"BACKUP, Invalid template state %u\0A\00", align 1
@IPVS_OPT_F_SEQ_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"BACKUP, Single msg dropped err:%d\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ip_vs_proc_sync_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_proc_sync_conn(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ip_vs_sync_conn_options, align 4
  %7 = alloca %union.ip_vs_sync_conn*, align 8
  %8 = alloca %struct.ip_vs_protocol*, align 8
  %9 = alloca %struct.ip_vs_conn_param, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to %union.ip_vs_sync_conn*
  store %union.ip_vs_sync_conn* %22, %union.ip_vs_sync_conn** %7, align 8
  %23 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %24 = bitcast %union.ip_vs_sync_conn* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STYPE_F_INET6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* %18, align 4
  br label %229

32:                                               ; preds = %2
  %33 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %34 = bitcast %union.ip_vs_sync_conn* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @AF_INET, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %4, align 8
  br label %43

42:                                               ; preds = %32
  store i32 -10, i32* %3, align 4
  br label %233

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ugt i32* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -20, i32* %3, align 4
  br label %233

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %119, %49
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ult i32* %51, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ugt i32* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -30, i32* %3, align 4
  br label %233

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %4, align 8
  %63 = load i32, i32* %61, align 4
  store i32 %63, i32* %19, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %4, align 8
  %66 = load i32, i32* %64, align 4
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ugt i32* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %60
  store i32 -40, i32* %3, align 4
  br label %233

77:                                               ; preds = %69
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @IPVS_OPT_F_PARAM, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  switch i32 %81, label %107 [
    i32 128, label %82
    i32 130, label %89
    i32 129, label %98
  ]

82:                                               ; preds = %77
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @ip_vs_proc_seqopt(i32* %83, i32 %84, i32* %17, %struct.ip_vs_sync_conn_options* %6)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -50, i32* %3, align 4
  br label %233

88:                                               ; preds = %82
  br label %119

89:                                               ; preds = %77
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @IP_VS_PEDATA_MAXLEN, align 4
  %93 = load i32, i32* @IPVS_OPT_F_PE_DATA, align 4
  %94 = call i32 @ip_vs_proc_str(i32* %90, i32 %91, i32* %13, i32** %15, i32 %92, i32* %17, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 -60, i32* %3, align 4
  br label %233

97:                                               ; preds = %89
  br label %119

98:                                               ; preds = %77
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* @IP_VS_PENAME_MAXLEN, align 4
  %102 = load i32, i32* @IPVS_OPT_F_PE_NAME, align 4
  %103 = call i32 @ip_vs_proc_str(i32* %99, i32 %100, i32* %14, i32** %16, i32 %101, i32* %17, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 -70, i32* %3, align 4
  br label %233

106:                                              ; preds = %98
  br label %119

107:                                              ; preds = %77
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @IPVS_OPT_F_PARAM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @IPVS_OPT_F_PARAM, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  store i32 20, i32* %18, align 4
  br label %229

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %106, %97, %88
  %120 = load i32, i32* %20, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %4, align 8
  br label %50

124:                                              ; preds = %50
  %125 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %126 = bitcast %union.ip_vs_sync_conn* %125 to %struct.TYPE_3__*
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntohl(i32 %128)
  %130 = load i32, i32* @IP_VS_CONN_F_BACKUP_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* @IP_VS_CONN_F_SYNC, align 4
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %136 = bitcast %union.ip_vs_sync_conn* %135 to %struct.TYPE_3__*
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ntohs(i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %171, label %144

144:                                              ; preds = %124
  %145 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %146 = bitcast %union.ip_vs_sync_conn* %145 to %struct.TYPE_3__*
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %148)
  store %struct.ip_vs_protocol* %149, %struct.ip_vs_protocol** %8, align 8
  %150 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %151 = icmp ne %struct.ip_vs_protocol* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %144
  %153 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %154 = bitcast %union.ip_vs_sync_conn* %153 to %struct.TYPE_3__*
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  store i32 30, i32* %18, align 4
  br label %229

158:                                              ; preds = %144
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %161 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp uge i32 %159, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %166 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32 %168)
  store i32 40, i32* %18, align 4
  br label %229

170:                                              ; preds = %158
  br label %178

171:                                              ; preds = %124
  store %struct.ip_vs_protocol* null, %struct.ip_vs_protocol** %8, align 8
  %172 = load i32, i32* %12, align 4
  %173 = icmp ugt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %12, align 4
  %176 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %170
  %179 = load i32, i32* %11, align 4
  %180 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %181 = load i32*, i32** %15, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i64 @ip_vs_conn_fill_param_sync(i32 %179, %union.ip_vs_sync_conn* %180, %struct.ip_vs_conn_param* %9, i32* %181, i32 %182, i32* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  store i32 50, i32* %18, align 4
  br label %229

188:                                              ; preds = %178
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @AF_INET, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %228

192:                                              ; preds = %188
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %196 = bitcast %union.ip_vs_sync_conn* %195 to %struct.TYPE_3__*
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %201 = bitcast %union.ip_vs_sync_conn* %200 to %struct.TYPE_3__*
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  %203 = bitcast i32* %202 to %union.nf_inet_addr*
  %204 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %205 = bitcast %union.ip_vs_sync_conn* %204 to %struct.TYPE_3__*
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %209 = bitcast %union.ip_vs_sync_conn* %208 to %struct.TYPE_3__*
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ntohl(i32 %211)
  %213 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %7, align 8
  %214 = bitcast %union.ip_vs_sync_conn* %213 to %struct.TYPE_3__*
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ntohl(i32 %216)
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* @IPVS_OPT_F_SEQ_DATA, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %192
  br label %224

223:                                              ; preds = %192
  br label %224

224:                                              ; preds = %223, %222
  %225 = phi %struct.ip_vs_sync_conn_options* [ %6, %222 ], [ null, %223 ]
  %226 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %227 = call i32 @ip_vs_proc_conn(%struct.ip_vs_conn_param* %9, i32 %193, i32 %194, i32 %198, i32 %199, %union.nf_inet_addr* %203, i32 %207, i32 %212, i32 %217, %struct.ip_vs_sync_conn_options* %225, %struct.ip_vs_protocol* %226)
  br label %228

228:                                              ; preds = %224, %188
  store i32 0, i32* %3, align 4
  br label %233

229:                                              ; preds = %187, %164, %152, %112, %30
  %230 = load i32, i32* %18, align 4
  %231 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %229, %228, %105, %96, %87, %76, %59, %48, %42
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @IP_VS_DBG(i32, i8*, ...) #1

declare dso_local i32 @ip_vs_proc_seqopt(i32*, i32, i32*, %struct.ip_vs_sync_conn_options*) #1

declare dso_local i32 @ip_vs_proc_str(i32*, i32, i32*, i32**, i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i64 @ip_vs_conn_fill_param_sync(i32, %union.ip_vs_sync_conn*, %struct.ip_vs_conn_param*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ip_vs_proc_conn(%struct.ip_vs_conn_param*, i32, i32, i32, i32, %union.nf_inet_addr*, i32, i32, i32, %struct.ip_vs_sync_conn_options*, %struct.ip_vs_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
