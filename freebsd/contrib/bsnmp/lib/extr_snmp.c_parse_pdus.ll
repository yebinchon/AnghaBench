; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_parse_pdus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_parse_pdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64 }
%struct.snmp_pdu = type { i64, %struct.snmp_value* }
%struct.snmp_value = type { i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@SNMP_MAX_BINDINGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"too many bindings (> %u) in PDU\00", align 1
@ASN_ERR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_buf*, %struct.snmp_pdu*, i64*)* @parse_pdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pdus(%struct.asn_buf* %0, %struct.snmp_pdu* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snmp_value*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %14 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %15 = call i32 @snmp_parse_pdus_hdr(%struct.asn_buf* %13, %struct.snmp_pdu* %14, i64* %8)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @ASN_ERR_STOPPED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %23 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %27, i32 0, i32 1
  %29 = load %struct.snmp_value*, %struct.snmp_value** %28, align 8
  store %struct.snmp_value* %29, %struct.snmp_value** %10, align 8
  %30 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %70, %21
  %32 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %33 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %31
  %37 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %38 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SNMP_MAX_BINDINGS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @SNMP_MAX_BINDINGS, align 8
  %44 = call i32 @snmp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %45, i32* %4, align 4
  br label %82

46:                                               ; preds = %36
  %47 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %48 = load %struct.snmp_value*, %struct.snmp_value** %10, align 8
  %49 = call i32 @get_var_binding(%struct.asn_buf* %47, %struct.snmp_value* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @ASN_ERR_STOPPED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %54, i32* %4, align 4
  br label %82

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ASN_ERR_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ASN_ERR_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %66 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %59, %55
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %72 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.snmp_value*, %struct.snmp_value** %10, align 8
  %76 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %75, i32 1
  store %struct.snmp_value* %76, %struct.snmp_value** %10, align 8
  br label %31

77:                                               ; preds = %31
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %80 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %53, %42, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @snmp_parse_pdus_hdr(%struct.asn_buf*, %struct.snmp_pdu*, i64*) #1

declare dso_local i64 @ASN_ERR_STOPPED(i32) #1

declare dso_local i32 @snmp_error(i8*, i64) #1

declare dso_local i32 @get_var_binding(%struct.asn_buf*, %struct.snmp_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
