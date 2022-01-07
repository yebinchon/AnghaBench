; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_parse_pdus_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_parse_pdus_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SNMP_PDU_TRAP = common dso_local global i64 0, align 8
@ASN_ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"cannot parse trap enterprise\00", align 1
@ASN_ERR_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot parse trap agent address\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot parse 'generic-trap'\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot parse 'specific-trap'\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot parse trap 'time-stamp'\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"cannot parse 'request-id'\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot parse 'error_status'\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"cannot parse 'error_index'\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"cannot get varlist header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_parse_pdus_hdr(%struct.asn_buf* %0, %struct.snmp_pdu* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca i32*, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %9 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNMP_PDU_TRAP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %16 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %15, i32 0, i32 8
  %17 = call i64 @asn_get_objid(%struct.asn_buf* %14, i32* %16)
  %18 = load i64, i64* @ASN_ERR_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 @snmp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %22, i32* %4, align 4
  br label %108

23:                                               ; preds = %13
  %24 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %25 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %26 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @asn_get_ipaddress(%struct.asn_buf* %24, i32 %27)
  %29 = load i64, i64* @ASN_ERR_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = call i32 @snmp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %33, i32* %4, align 4
  br label %108

34:                                               ; preds = %23
  %35 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %36 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %37 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %36, i32 0, i32 6
  %38 = call i64 @asn_get_integer(%struct.asn_buf* %35, i32* %37)
  %39 = load i64, i64* @ASN_ERR_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @snmp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %43, i32* %4, align 4
  br label %108

44:                                               ; preds = %34
  %45 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %46 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %47 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %46, i32 0, i32 5
  %48 = call i64 @asn_get_integer(%struct.asn_buf* %45, i32* %47)
  %49 = load i64, i64* @ASN_ERR_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = call i32 @snmp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %53, i32* %4, align 4
  br label %108

54:                                               ; preds = %44
  %55 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %56 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %56, i32 0, i32 4
  %58 = call i64 @asn_get_timeticks(%struct.asn_buf* %55, i32* %57)
  %59 = load i64, i64* @ASN_ERR_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = call i32 @snmp_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %63, i32* %4, align 4
  br label %108

64:                                               ; preds = %54
  br label %96

65:                                               ; preds = %3
  %66 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %67 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %68 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %67, i32 0, i32 3
  %69 = call i64 @asn_get_integer(%struct.asn_buf* %66, i32* %68)
  %70 = load i64, i64* @ASN_ERR_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = call i32 @snmp_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %74, i32* %4, align 4
  br label %108

75:                                               ; preds = %65
  %76 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %77 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %78 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %77, i32 0, i32 2
  %79 = call i64 @asn_get_integer(%struct.asn_buf* %76, i32* %78)
  %80 = load i64, i64* @ASN_ERR_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = call i32 @snmp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %84, i32* %4, align 4
  br label %108

85:                                               ; preds = %75
  %86 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %87 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %88 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %87, i32 0, i32 1
  %89 = call i64 @asn_get_integer(%struct.asn_buf* %86, i32* %88)
  %90 = load i64, i64* @ASN_ERR_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = call i32 @snmp_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %94 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %94, i32* %4, align 4
  br label %108

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @asn_get_sequence(%struct.asn_buf* %97, i32* %98)
  %100 = load i64, i64* @ASN_ERR_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = call i32 @snmp_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %104, i32* %4, align 4
  br label %108

105:                                              ; preds = %96
  %106 = load i64, i64* @ASN_ERR_OK, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %102, %92, %82, %72, %61, %51, %41, %31, %20
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @asn_get_objid(%struct.asn_buf*, i32*) #1

declare dso_local i32 @snmp_error(i8*) #1

declare dso_local i64 @asn_get_ipaddress(%struct.asn_buf*, i32) #1

declare dso_local i64 @asn_get_integer(%struct.asn_buf*, i32*) #1

declare dso_local i64 @asn_get_timeticks(%struct.asn_buf*, i32*) #1

declare dso_local i64 @asn_get_sequence(%struct.asn_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
