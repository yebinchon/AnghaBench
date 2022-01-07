; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_oid_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_oid_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.asn_oid }
%struct.asn_oid = type { i32 }
%struct.snmp_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_save(%struct.snmp_value* %0, %struct.snmp_context* %1, %struct.asn_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_value*, align 8
  %6 = alloca %struct.snmp_context*, align 8
  %7 = alloca %struct.asn_oid*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %5, align 8
  store %struct.snmp_context* %1, %struct.snmp_context** %6, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %7, align 8
  %8 = call i32* @malloc(i32 4)
  %9 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %10 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %8, i32** %12, align 8
  %13 = icmp eq i32* %8, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %15, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %18 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to %struct.asn_oid*
  %23 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %24 = bitcast %struct.asn_oid* %22 to i8*
  %25 = bitcast %struct.asn_oid* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %27 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %28 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = bitcast %struct.asn_oid* %26 to i8*
  %31 = bitcast %struct.asn_oid* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
