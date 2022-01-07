; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_snmp_create_v1_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_snmp_create_v1_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snmp_pdu = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.asn_oid = type { i32, i64* }

@SNMP_V1 = common dso_local global i32 0, align 4
@SNMP_PDU_TRAP = common dso_local global i32 0, align 4
@systemg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@snmpd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@start_tick = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_pdu*, i8*, %struct.asn_oid*)* @snmp_create_v1_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_create_v1_trap(%struct.snmp_pdu* %0, i8* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %6, align 8
  %7 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %8 = call i32 @memset(%struct.snmp_pdu* %7, i32 0, i32 56)
  %9 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %10 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlcpy(i32 %11, i8* %12, i32 4)
  %14 = load i32, i32* @SNMP_V1, align 4
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %16 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @SNMP_PDU_TRAP, align 4
  %18 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %19 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @systemg, i32 0, i32 0), align 4
  %21 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %22 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %24 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd, i32 0, i32 0), align 4
  %27 = call i32 @memcpy(i32 %25, i32 %26, i32 4)
  %28 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %29 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %32 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %40 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %42 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = call i64 (...) @get_ticks()
  %44 = load i64, i64* @start_tick, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %47 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %49 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i32 @memset(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @get_ticks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
