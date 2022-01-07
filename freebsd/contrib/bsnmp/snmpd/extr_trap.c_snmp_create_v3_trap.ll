; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_snmp_create_v3_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_snmp_create_v3_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.snmp_pdu = type { i32, i64, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__*, i32, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_15__ }
%struct.TYPE_9__ = type { %struct.asn_oid, i64 }
%struct.asn_oid = type { i32 }
%struct.target_param = type { i64, i64, i32 }
%struct.usm_user = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@SNMP_V3 = common dso_local global i32 0, align 4
@SNMP_PDU_TRAP2 = common dso_local global i32 0, align 4
@trap_reqid = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@oid_sysUpTime = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@SNMP_SYNTAX_TIMETICKS = common dso_local global i32 0, align 4
@start_tick = common dso_local global i64 0, align 8
@oid_snmpTrapOID = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@SNMP_SYNTAX_OID = common dso_local global i32 0, align 4
@snmpd_engine = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@SNMP_SECMODEL_USM = common dso_local global i64 0, align 8
@SNMP_noAuthNoPriv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_pdu*, %struct.target_param*, %struct.asn_oid*)* @snmp_create_v3_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_create_v3_trap(%struct.snmp_pdu* %0, %struct.target_param* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.target_param*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca %struct.usm_user*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.target_param* %1, %struct.target_param** %5, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %6, align 8
  %8 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %9 = call i32 @memset(%struct.snmp_pdu* %8, i32 0, i32 104)
  %10 = load i32, i32* @SNMP_V3, align 4
  %11 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %12 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @SNMP_PDU_TRAP2, align 4
  %14 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %15 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @trap_reqid, align 4
  %17 = call i32 @reqid_next(i32 %16)
  %18 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %19 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %21 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %24 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %26 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %25, i32 0, i32 6
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = bitcast %struct.TYPE_15__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_15__* @oid_sysUpTime to i8*), i64 16, i1 false)
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %32 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %31, i32 0, i32 6
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %38, i32 0, i32 6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i64, i64* %37, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @SNMP_SYNTAX_TIMETICKS, align 4
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 6
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 8
  %54 = call i64 (...) @get_ticks()
  %55 = load i64, i64* @start_tick, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %58 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %57, i32 0, i32 6
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 %56, i64* %62, align 8
  %63 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %64 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %63, i32 0, i32 6
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = bitcast %struct.TYPE_15__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 bitcast (%struct.TYPE_15__* @oid_snmpTrapOID to i8*), i64 16, i1 false)
  %69 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %70 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %69, i32 0, i32 6
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %77 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %76, i32 0, i32 6
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %75, i64 %84
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @SNMP_SYNTAX_OID, align 4
  %87 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %88 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %87, i32 0, i32 6
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %86, i32* %91, align 8
  %92 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %93 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %92, i32 0, i32 6
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %99 = bitcast %struct.asn_oid* %97 to i8*
  %100 = bitcast %struct.asn_oid* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %102 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %101, i32 0, i32 0
  store i32 2, i32* %102, align 8
  %103 = call i32 (...) @update_snmpd_engine_time()
  %104 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %105 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 1), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 0), align 4
  %110 = call i32 @memcpy(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 0), align 4
  %112 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %113 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 4), align 4
  %116 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %117 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 3), align 4
  %120 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %121 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 2), align 4
  %124 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %125 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %128 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.target_param*, %struct.target_param** %5, align 8
  %132 = getelementptr inbounds %struct.target_param, %struct.target_param* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @strlcpy(i32 %130, i32 %133, i32 4)
  %135 = load %struct.target_param*, %struct.target_param** %5, align 8
  %136 = getelementptr inbounds %struct.target_param, %struct.target_param* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %139 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 0), align 4
  %141 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %142 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %144 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 1), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @snmpd_engine, i32 0, i32 0), align 4
  %148 = call i32 @memcpy(i32 %145, i32 %146, i32 %147)
  %149 = load %struct.target_param*, %struct.target_param** %5, align 8
  %150 = getelementptr inbounds %struct.target_param, %struct.target_param* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SNMP_SECMODEL_USM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %212

154:                                              ; preds = %3
  %155 = load %struct.target_param*, %struct.target_param** %5, align 8
  %156 = getelementptr inbounds %struct.target_param, %struct.target_param* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SNMP_noAuthNoPriv, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %212

160:                                              ; preds = %154
  %161 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %162 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %166 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %170 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call %struct.usm_user* @usm_find_user(i32 %164, i32 %168, i32 %172)
  store %struct.usm_user* %173, %struct.usm_user** %7, align 8
  %174 = load %struct.usm_user*, %struct.usm_user** %7, align 8
  %175 = icmp ne %struct.usm_user* %174, null
  br i1 %175, label %176, label %209

176:                                              ; preds = %160
  %177 = load %struct.usm_user*, %struct.usm_user** %7, align 8
  %178 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %182 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 4
  %184 = load %struct.usm_user*, %struct.usm_user** %7, align 8
  %185 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %189 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 4
  %191 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %192 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.usm_user*, %struct.usm_user** %7, align 8
  %196 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @memcpy(i32 %194, i32 %198, i32 4)
  %200 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %201 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.usm_user*, %struct.usm_user** %7, align 8
  %205 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @memcpy(i32 %203, i32 %207, i32 4)
  br label %209

209:                                              ; preds = %176, %160
  %210 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %211 = call i32 @snmp_pdu_init_secparams(%struct.snmp_pdu* %210)
  br label %212

212:                                              ; preds = %209, %154, %3
  ret void
}

declare dso_local i32 @memset(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @reqid_next(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_ticks(...) #1

declare dso_local i32 @update_snmpd_engine_time(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.usm_user* @usm_find_user(i32, i32, i32) #1

declare dso_local i32 @snmp_pdu_init_secparams(%struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
