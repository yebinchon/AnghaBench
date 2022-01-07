; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmpd_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmpd_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.snmp_pdu*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i32)* }
%struct.snmp_pdu = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.tport*, %struct.port_input*)*, i32 (%struct.tport*, i32*, i64, %struct.TYPE_13__*, i32)*, i32 (%struct.tport*, i32*, i64, %struct.port_input*)* }
%struct.tport = type { %struct.TYPE_14__*, i32 }
%struct.port_input = type { i64, i32, %struct.TYPE_13__*, i32, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.snmp_value = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"SNMP\00", align 1
@SNMPD_INPUT_TRUNC = common dso_local global i32 0, align 4
@snmpd_stats = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@SNMPD_INPUT_FAILED = common dso_local global i32 0, align 4
@SNMPD_INPUT_BAD_COMM = common dso_local global i32 0, align 4
@comm = common dso_local global %struct.TYPE_17__* null, align 8
@snmpd = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@oid_authenticationFailure = common dso_local global i32 0, align 4
@SNMP_PDU_RESPONSE = common dso_local global i64 0, align 8
@SNMP_PDU_TRAP = common dso_local global i64 0, align 8
@SNMP_PDU_TRAP2 = common dso_local global i64 0, align 8
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_PDU_SET = common dso_local global i64 0, align 8
@COMM_WRITE = common dso_local global i64 0, align 8
@COMM_READ = common dso_local global i64 0, align 8
@SNMPD_INPUT_OK = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"send*: %m\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"send*: short write %zu/%zu\00", align 1
@AF_LOCAL = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@RQ_CLIENT_ADDR = common dso_local global i32 0, align 4
@req = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmpd_input(%struct.port_input* %0, %struct.tport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_input*, align 8
  %5 = alloca %struct.tport*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snmp_pdu, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.port_input* %0, %struct.port_input** %4, align 8
  store %struct.tport* %1, %struct.tport** %5, align 8
  %15 = load %struct.tport*, %struct.tport** %5, align 8
  %16 = getelementptr inbounds %struct.tport, %struct.tport* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32 (%struct.tport*, %struct.port_input*)*, i32 (%struct.tport*, %struct.port_input*)** %20, align 8
  %22 = load %struct.tport*, %struct.tport** %5, align 8
  %23 = load %struct.port_input*, %struct.port_input** %4, align 8
  %24 = call i32 %21(%struct.tport* %22, %struct.port_input* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %326

28:                                               ; preds = %2
  %29 = load %struct.port_input*, %struct.port_input** %4, align 8
  %30 = getelementptr inbounds %struct.port_input, %struct.port_input* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.port_input*, %struct.port_input** %4, align 8
  %33 = getelementptr inbounds %struct.port_input, %struct.port_input* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.port_input*, %struct.port_input** %4, align 8
  %36 = getelementptr inbounds %struct.port_input, %struct.port_input* %35, i32 0, i32 7
  %37 = call i32 @snmp_input_start(i32 %31, i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.snmp_pdu* %8, i32* %14, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SNMPD_INPUT_TRUNC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %28
  %42 = load %struct.port_input*, %struct.port_input** %4, align 8
  %43 = getelementptr inbounds %struct.port_input, %struct.port_input* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.port_input*, %struct.port_input** %4, align 8
  %48 = getelementptr inbounds %struct.port_input, %struct.port_input* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @buf_size(i32 0)
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  store i32 -1, i32* %3, align 4
  br label %326

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %326

56:                                               ; preds = %41
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  store i32 -1, i32* %3, align 4
  br label %326

59:                                               ; preds = %28
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SNMPD_INPUT_FAILED, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.port_input*, %struct.port_input** %4, align 8
  %65 = getelementptr inbounds %struct.port_input, %struct.port_input* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %326

69:                                               ; preds = %63
  %70 = load %struct.port_input*, %struct.port_input** %4, align 8
  %71 = call i32 @snmp_input_consume(%struct.port_input* %70)
  store i32 0, i32* %3, align 4
  br label %326

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SNMPD_INPUT_BAD_COMM, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.port_input*, %struct.port_input** %4, align 8
  %78 = call i32 @snmp_input_consume(%struct.port_input* %77)
  store i32 0, i32* %3, align 4
  br label %326

79:                                               ; preds = %72
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %81 = icmp ne %struct.TYPE_17__* %80, null
  br i1 %81, label %82, label %164

82:                                               ; preds = %79
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %164

87:                                               ; preds = %82
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32 (%struct.snmp_pdu*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.snmp_pdu*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i32)** %93, align 8
  %95 = icmp ne i32 (%struct.snmp_pdu*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i32)* %94, null
  br i1 %95, label %96, label %164

96:                                               ; preds = %87
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32 (%struct.snmp_pdu*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.snmp_pdu*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i32)** %102, align 8
  %104 = load %struct.tport*, %struct.tport** %5, align 8
  %105 = getelementptr inbounds %struct.tport, %struct.tport* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load %struct.tport*, %struct.tport** %5, align 8
  %108 = getelementptr inbounds %struct.tport, %struct.tport* %107, i32 0, i32 1
  %109 = load %struct.port_input*, %struct.port_input** %4, align 8
  %110 = getelementptr inbounds %struct.port_input, %struct.port_input* %109, i32 0, i32 2
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load %struct.port_input*, %struct.port_input** %4, align 8
  %113 = getelementptr inbounds %struct.port_input, %struct.port_input* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.port_input*, %struct.port_input** %4, align 8
  %118 = getelementptr inbounds %struct.port_input, %struct.port_input* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %96
  %122 = load %struct.port_input*, %struct.port_input** %4, align 8
  %123 = getelementptr inbounds %struct.port_input, %struct.port_input* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %121, %96
  %127 = phi i1 [ true, %96 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 %103(%struct.snmp_pdu* %8, %struct.TYPE_14__* %106, i32* %108, %struct.TYPE_13__* %111, i32 %114, i32 %115, i32 %116, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  switch i32 %130, label %163 [
    i32 129, label %131
    i32 128, label %134
    i32 130, label %135
    i32 132, label %141
    i32 131, label %152
  ]

131:                                              ; preds = %126
  %132 = load %struct.port_input*, %struct.port_input** %4, align 8
  %133 = call i32 @snmp_input_consume(%struct.port_input* %132)
  store i32 0, i32* %3, align 4
  br label %326

134:                                              ; preds = %126
  br label %163

135:                                              ; preds = %126
  %136 = load %struct.port_input*, %struct.port_input** %4, align 8
  %137 = call i32 @snmp_input_consume(%struct.port_input* %136)
  %138 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 4), align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 4), align 4
  store i32 0, i32* %3, align 4
  br label %326

141:                                              ; preds = %126
  %142 = load %struct.port_input*, %struct.port_input** %4, align 8
  %143 = call i32 @snmp_input_consume(%struct.port_input* %142)
  %144 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 3), align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 3), align 4
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @snmpd, i32 0, i32 0), align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 @snmp_send_trap(i32* @oid_authenticationFailure, %struct.snmp_value* null)
  br label %151

151:                                              ; preds = %149, %141
  store i32 0, i32* %3, align 4
  br label %326

152:                                              ; preds = %126
  %153 = load %struct.port_input*, %struct.port_input** %4, align 8
  %154 = call i32 @snmp_input_consume(%struct.port_input* %153)
  %155 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 1), align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 1), align 4
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @snmpd, i32 0, i32 0), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = call i32 @snmp_send_trap(i32* @oid_authenticationFailure, %struct.snmp_value* null)
  br label %162

162:                                              ; preds = %160, %152
  store i32 0, i32* %3, align 4
  br label %326

163:                                              ; preds = %126, %134
  br label %164

164:                                              ; preds = %163, %87, %82, %79
  %165 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SNMP_PDU_RESPONSE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %179, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SNMP_PDU_TRAP, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SNMP_PDU_TRAP2, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %174, %169, %164
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 2), align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 2), align 4
  %184 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %185 = load %struct.port_input*, %struct.port_input** %4, align 8
  %186 = call i32 @snmp_input_consume(%struct.port_input* %185)
  store i32 0, i32* %3, align 4
  br label %326

187:                                              ; preds = %174
  %188 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SNMP_V3, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %238

192:                                              ; preds = %187
  %193 = load %struct.port_input*, %struct.port_input** %4, align 8
  %194 = getelementptr inbounds %struct.port_input, %struct.port_input* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.port_input*, %struct.port_input** %4, align 8
  %199 = getelementptr inbounds %struct.port_input, %struct.port_input* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @SNMP_PDU_SET, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %227, label %207

207:                                              ; preds = %202, %197, %192
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %209 = icmp ne %struct.TYPE_17__* %208, null
  br i1 %209, label %210, label %238

210:                                              ; preds = %207
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @COMM_WRITE, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @SNMP_PDU_SET, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** @comm, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @COMM_READ, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %221, %216, %202
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 1), align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 1), align 4
  %230 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %231 = load %struct.port_input*, %struct.port_input** %4, align 8
  %232 = call i32 @snmp_input_consume(%struct.port_input* %231)
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @snmpd, i32 0, i32 0), align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = call i32 @snmp_send_trap(i32* @oid_authenticationFailure, %struct.snmp_value* null)
  br label %237

237:                                              ; preds = %235, %227
  store i32 0, i32* %3, align 4
  br label %326

238:                                              ; preds = %221, %210, %207, %187
  %239 = call i32* @buf_alloc(i32 1)
  store i32* %239, i32** %6, align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @snmpd_stats, i32 0, i32 0), align 4
  %244 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %245 = load %struct.port_input*, %struct.port_input** %4, align 8
  %246 = call i32 @snmp_input_consume(%struct.port_input* %245)
  store i32 0, i32* %3, align 4
  br label %326

247:                                              ; preds = %238
  %248 = load %struct.port_input*, %struct.port_input** %4, align 8
  %249 = getelementptr inbounds %struct.port_input, %struct.port_input* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.port_input*, %struct.port_input** %4, align 8
  %252 = getelementptr inbounds %struct.port_input, %struct.port_input* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %14, align 4
  %257 = call i32 @snmp_input_finish(%struct.snmp_pdu* %8, i32 %250, i64 %253, i32* %254, i64* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %255, i32 %256, i32* null)
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* @SNMPD_INPUT_OK, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %320

261:                                              ; preds = %247
  %262 = load %struct.tport*, %struct.tport** %5, align 8
  %263 = getelementptr inbounds %struct.tport, %struct.tport* %262, i32 0, i32 0
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i32 (%struct.tport*, i32*, i64, %struct.TYPE_13__*, i32)*, i32 (%struct.tport*, i32*, i64, %struct.TYPE_13__*, i32)** %267, align 8
  %269 = icmp ne i32 (%struct.tport*, i32*, i64, %struct.TYPE_13__*, i32)* %268, null
  br i1 %269, label %270, label %288

270:                                              ; preds = %261
  %271 = load %struct.tport*, %struct.tport** %5, align 8
  %272 = getelementptr inbounds %struct.tport, %struct.tport* %271, i32 0, i32 0
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32 (%struct.tport*, i32*, i64, %struct.TYPE_13__*, i32)*, i32 (%struct.tport*, i32*, i64, %struct.TYPE_13__*, i32)** %276, align 8
  %278 = load %struct.tport*, %struct.tport** %5, align 8
  %279 = load i32*, i32** %6, align 8
  %280 = load i64, i64* %7, align 8
  %281 = load %struct.port_input*, %struct.port_input** %4, align 8
  %282 = getelementptr inbounds %struct.port_input, %struct.port_input* %281, i32 0, i32 2
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = load %struct.port_input*, %struct.port_input** %4, align 8
  %285 = getelementptr inbounds %struct.port_input, %struct.port_input* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 %277(%struct.tport* %278, i32* %279, i64 %280, %struct.TYPE_13__* %283, i32 %286)
  store i32 %287, i32* %13, align 4
  br label %301

288:                                              ; preds = %261
  %289 = load %struct.tport*, %struct.tport** %5, align 8
  %290 = getelementptr inbounds %struct.tport, %struct.tport* %289, i32 0, i32 0
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load i32 (%struct.tport*, i32*, i64, %struct.port_input*)*, i32 (%struct.tport*, i32*, i64, %struct.port_input*)** %294, align 8
  %296 = load %struct.tport*, %struct.tport** %5, align 8
  %297 = load i32*, i32** %6, align 8
  %298 = load i64, i64* %7, align 8
  %299 = load %struct.port_input*, %struct.port_input** %4, align 8
  %300 = call i32 %295(%struct.tport* %296, i32* %297, i64 %298, %struct.port_input* %299)
  store i32 %300, i32* %13, align 4
  br label %301

301:                                              ; preds = %288, %270
  %302 = load i32, i32* %13, align 4
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32, i32* @LOG_ERR, align 4
  %306 = call i32 (i32, i8*, ...) @syslog(i32 %305, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %319

307:                                              ; preds = %301
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = load i64, i64* %7, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = load i32, i32* @LOG_ERR, align 4
  %314 = load i64, i64* %7, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = call i32 (i32, i8*, ...) @syslog(i32 %313, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %314, i64 %316)
  br label %318

318:                                              ; preds = %312, %307
  br label %319

319:                                              ; preds = %318, %304
  br label %320

320:                                              ; preds = %319, %247
  %321 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %322 = load i32*, i32** %6, align 8
  %323 = call i32 @free(i32* %322)
  %324 = load %struct.port_input*, %struct.port_input** %4, align 8
  %325 = call i32 @snmp_input_consume(%struct.port_input* %324)
  store i32 0, i32* %3, align 4
  br label %326

326:                                              ; preds = %320, %241, %237, %179, %162, %151, %135, %131, %76, %69, %68, %56, %55, %52, %27
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32 @snmp_input_start(i32, i64, i8*, %struct.snmp_pdu*, i32*, i32*) #1

declare dso_local i64 @buf_size(i32) #1

declare dso_local i32 @snmp_input_consume(%struct.port_input*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_send_trap(i32*, %struct.snmp_value*) #1

declare dso_local i32* @buf_alloc(i32) #1

declare dso_local i32 @snmp_input_finish(%struct.snmp_pdu*, i32, i64, i32*, i64*, i8*, i32, i32, i32*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
