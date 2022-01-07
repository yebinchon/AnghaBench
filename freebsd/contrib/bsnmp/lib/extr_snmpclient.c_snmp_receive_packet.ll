; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_receive_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_7__, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.snmp_pdu = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.asn_buf = type { i32, i32* }

@snmp_client = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"setsockopt: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"getsockopt: %s\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"fcntl: %s\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"recv: %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"recv: socket closed by peer\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@SNMP_SECMODEL_USM = common dso_local global i64 0, align 8
@SNMP_CODE_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"snmp_decode_pdu: failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*, %struct.timeval*)* @snmp_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_receive_packet(%struct.snmp_pdu* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.asn_buf, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 5), align 4
  %16 = call i32* @calloc(i32 1, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %3, align 4
  br label %213

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.timeval*, %struct.timeval** %5, align 8
  %24 = icmp ne %struct.timeval* %23, null
  br i1 %24, label %25, label %106

25:                                               ; preds = %22
  %26 = load %struct.timeval*, %struct.timeval** %5, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.timeval*, %struct.timeval** %5, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30, %25
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %37 = load i32, i32* @SOL_SOCKET, align 4
  %38 = load i32, i32* @SO_RCVTIMEO, align 4
  %39 = load %struct.timeval*, %struct.timeval** %5, align 8
  %40 = call i32 @setsockopt(i32 %36, i32 %37, i32 %38, %struct.timeval* %39, i32 16)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @free(i32* %46)
  store i32 -1, i32* %3, align 4
  br label %213

48:                                               ; preds = %35
  store i32 16, i32* %14, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %50 = load i32, i32* @SOL_SOCKET, align 4
  %51 = load i32, i32* @SO_RCVTIMEO, align 4
  %52 = load %struct.timeval*, %struct.timeval** %5, align 8
  %53 = call i32 @getsockopt(i32 %49, i32 %50, i32 %51, %struct.timeval* %52, i32* %14)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @free(i32* %59)
  store i32 -1, i32* %3, align 4
  br label %213

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.timeval*, %struct.timeval** %5, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load %struct.timeval*, %struct.timeval** %5, align 8
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %74 = load i32, i32* @F_GETFL, align 4
  %75 = call i32 @fcntl(i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %8, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @free(i32* %81)
  store i32 -1, i32* %3, align 4
  br label %213

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @O_NONBLOCK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  %89 = load i32, i32* @O_NONBLOCK, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %93 = load i32, i32* @F_SETFL, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @fcntl(i32 %92, i32 %93, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @strerror(i32 %98)
  %100 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @free(i32* %101)
  store i32 -1, i32* %3, align 4
  br label %213

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %67, %62
  br label %106

106:                                              ; preds = %105, %22
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 5), align 4
  %110 = call i32 @recv(i32 %107, i32* %108, i32 %109, i32 0)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* @errno, align 4
  store i32 %111, i32* %9, align 4
  %112 = load %struct.timeval*, %struct.timeval** %5, align 8
  %113 = icmp ne %struct.timeval* %112, null
  br i1 %113, label %114, label %141

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* @O_NONBLOCK, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %126 = load i32, i32* @F_SETFL, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @fcntl(i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %120, %117
  br label %140

130:                                              ; preds = %114
  %131 = load %struct.timeval*, %struct.timeval** %5, align 8
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.timeval*, %struct.timeval** %5, align 8
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), align 8
  %136 = load i32, i32* @SOL_SOCKET, align 4
  %137 = load i32, i32* @SO_RCVTIMEO, align 4
  %138 = load %struct.timeval*, %struct.timeval** %5, align 8
  %139 = call i32 @setsockopt(i32 %135, i32 %136, i32 %137, %struct.timeval* %138, i32 16)
  br label %140

140:                                              ; preds = %130, %129
  br label %141

141:                                              ; preds = %140, %106
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @free(i32* %145)
  %147 = load i32, i32* @errno, align 4
  %148 = load i32, i32* @EAGAIN, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @errno, align 4
  %152 = load i32, i32* @EWOULDBLOCK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %144
  store i32 0, i32* %3, align 4
  br label %213

155:                                              ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @strerror(i32 %156)
  %158 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  store i32 -1, i32* %3, align 4
  br label %213

159:                                              ; preds = %141
  %160 = load i32, i32* %11, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @free(i32* %163)
  %165 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i32, i32* @EPIPE, align 4
  store i32 %166, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %213

167:                                              ; preds = %159
  %168 = load i32*, i32** %10, align 8
  %169 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %12, i32 0, i32 1
  store i32* %168, i32** %169, align 8
  %170 = load i32, i32* %11, align 4
  %171 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %12, i32 0, i32 0
  store i32 %170, i32* %171, align 8
  %172 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %173 = call i32 @memset(%struct.snmp_pdu* %172, i32 0, i32 16)
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 0), align 8
  %175 = load i64, i64* @SNMP_SECMODEL_USM, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %179 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %178, i32 0, i32 0
  %180 = call i32 @memcpy(%struct.TYPE_6__* %179, %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1), i32 8)
  %181 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %182 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %181, i32 0, i32 1
  %183 = call i32 @memcpy(%struct.TYPE_6__* %182, %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 3), i32 8)
  %184 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %185 = call i32 @snmp_pdu_init_secparams(%struct.snmp_pdu* %184)
  br label %186

186:                                              ; preds = %177, %167
  %187 = load i32, i32* @SNMP_CODE_OK, align 4
  %188 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %189 = call i32 @snmp_pdu_decode(%struct.asn_buf* %12, %struct.snmp_pdu* %188, i32* %13)
  store i32 %189, i32* %11, align 4
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32, i32* %11, align 4
  %193 = call i32 (%struct.TYPE_5__*, i8*, ...) @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %10, align 8
  %195 = call i32 @free(i32* %194)
  store i32 -1, i32* %3, align 4
  br label %213

196:                                              ; preds = %186
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @free(i32* %197)
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 2), align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %203 = call i32 @snmp_pdu_dump(%struct.snmp_pdu* %202)
  br label %204

204:                                              ; preds = %201, %196
  %205 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %206 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 1), align 4
  %209 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %210 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* %3, align 4
  br label %213

213:                                              ; preds = %204, %191, %162, %155, %154, %97, %77, %55, %42, %18
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @seterr(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, %struct.timeval*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @snmp_pdu_init_secparams(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_decode(%struct.asn_buf*, %struct.snmp_pdu*, i32*) #1

declare dso_local i32 @snmp_pdu_dump(%struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
