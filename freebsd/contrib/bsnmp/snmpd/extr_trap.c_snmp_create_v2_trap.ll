; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_snmp_create_v2_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_snmp_create_v2_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64* }
%struct.snmp_pdu = type { i32, %struct.TYPE_6__*, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.asn_oid, i64 }
%struct.asn_oid = type { i32 }

@SNMP_V2c = common dso_local global i32 0, align 4
@SNMP_PDU_TRAP2 = common dso_local global i32 0, align 4
@trap_reqid = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@oid_sysUpTime = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SNMP_SYNTAX_TIMETICKS = common dso_local global i32 0, align 4
@start_tick = common dso_local global i64 0, align 8
@oid_snmpTrapOID = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SNMP_SYNTAX_OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_pdu*, i8*, %struct.asn_oid*)* @snmp_create_v2_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_create_v2_trap(%struct.snmp_pdu* %0, i8* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %6, align 8
  %7 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %8 = call i32 @memset(%struct.snmp_pdu* %7, i32 0, i32 48)
  %9 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %10 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlcpy(i32 %11, i8* %12, i32 4)
  %14 = load i32, i32* @SNMP_V2c, align 4
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %16 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @SNMP_PDU_TRAP2, align 4
  %18 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %19 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @trap_reqid, align 4
  %21 = call i32 @reqid_next(i32 %20)
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %23 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %30 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = bitcast %struct.TYPE_7__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_7__* @oid_sysUpTime to i8*), i64 16, i1 false)
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, i64* %41, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @SNMP_SYNTAX_TIMETICKS, align 4
  %53 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %54 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 8
  %58 = call i64 (...) @get_ticks()
  %59 = load i64, i64* @start_tick, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %62 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %60, i64* %66, align 8
  %67 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %68 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = bitcast %struct.TYPE_7__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 bitcast (%struct.TYPE_7__* @oid_snmpTrapOID to i8*), i64 16, i1 false)
  %73 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %74 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %81 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i64, i64* %79, i64 %88
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @SNMP_SYNTAX_OID, align 4
  %91 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %92 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 8
  %96 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %97 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %103 = bitcast %struct.asn_oid* %101 to i8*
  %104 = bitcast %struct.asn_oid* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %106 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %105, i32 0, i32 0
  store i32 2, i32* %106, align 8
  ret void
}

declare dso_local i32 @memset(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @reqid_next(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_ticks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
