; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i64 }

@SNMP_CODE_OK = common dso_local global i32 0, align 4
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_SECMODEL_USM = common dso_local global i64 0, align 8
@SNMP_Verr = common dso_local global i64 0, align 8
@SNMP_CODE_BADVERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_pdu_decode(%struct.asn_buf* %0, %struct.snmp_pdu* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %10 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %11 = call i32 @snmp_pdu_decode_header(%struct.asn_buf* %9, %struct.snmp_pdu* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SNMP_CODE_OK, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNMP_V3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %24 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNMP_SECMODEL_USM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 128, i32* %4, align 4
  br label %59

29:                                               ; preds = %22
  %30 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %32 = call i32 @snmp_pdu_decode_secmode(%struct.asn_buf* %30, %struct.snmp_pdu* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SNMP_CODE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @snmp_pdu_decode_scoped(%struct.asn_buf* %39, %struct.snmp_pdu* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %56 [
    i32 128, label %44
    i32 129, label %47
  ]

44:                                               ; preds = %38
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %46 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %45)
  br label %57

47:                                               ; preds = %38
  %48 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %49 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SNMP_Verr, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SNMP_CODE_BADVERS, align 4
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %38, %55
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %53, %35, %28, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @snmp_pdu_decode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_decode_secmode(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_decode_scoped(%struct.asn_buf*, %struct.snmp_pdu*, i32*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
