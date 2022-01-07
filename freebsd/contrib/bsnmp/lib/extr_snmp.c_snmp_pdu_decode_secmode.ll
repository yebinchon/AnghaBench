; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode_secmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode_secmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@SNMP_USM_AUTH_SIZE = common dso_local global i32 0, align 4
@SNMP_AUTH_NOAUTH = common dso_local global i64 0, align 8
@SNMP_MSG_AUTH_FLAG = common dso_local global i32 0, align 4
@SNMP_CODE_BADSECLEVEL = common dso_local global i32 0, align 4
@SNMP_CODE_OK = common dso_local global i32 0, align 4
@SNMP_CODE_FAILED = common dso_local global i32 0, align 4
@SNMP_CODE_BADDIGEST = common dso_local global i32 0, align 4
@SNMP_PRIV_NOPRIV = common dso_local global i64 0, align 8
@ASN_ERR_OK = common dso_local global i64 0, align 8
@ASN_TYPE_OCTETSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"cannot decode encrypted pdu\00", align 1
@SNMP_MSG_PRIV_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_pdu_decode_secmode(%struct.asn_buf* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %11 = load i32, i32* @SNMP_USM_AUTH_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %16 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %23 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @SNMP_CODE_BADSECLEVEL, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

30:                                               ; preds = %21, %2
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %32 = call i32 @snmp_pdu_calc_digest(%struct.snmp_pdu* %31, i32* %14)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @SNMP_CODE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

37:                                               ; preds = %30
  %38 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @memcmp(i32* %14, i32 %47, i32 4)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @SNMP_CODE_BADDIGEST, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

52:                                               ; preds = %44, %37
  %53 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %54 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SNMP_PRIV_NOPRIV, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %61 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %62 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %61, i32 0, i32 3
  %63 = call i64 @asn_get_header(%struct.asn_buf* %60, i64* %6, i32* %62)
  %64 = load i64, i64* @ASN_ERR_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @ASN_TYPE_OCTETSTRING, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %59
  %71 = call i32 @snmp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

73:                                               ; preds = %66, %52
  %74 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %75 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %78 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %80 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SNMP_PRIV_NOPRIV, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %73
  %86 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %87 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @SNMP_CODE_BADSECLEVEL, align 4
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

94:                                               ; preds = %85, %73
  %95 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %96 = call i32 @snmp_pdu_decrypt(%struct.snmp_pdu* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @SNMP_CODE_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %99, %92, %70, %50, %35, %28
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snmp_pdu_calc_digest(%struct.snmp_pdu*, i32*) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

declare dso_local i64 @asn_get_header(%struct.asn_buf*, i64*, i32*) #2

declare dso_local i32 @snmp_error(i8*) #2

declare dso_local i32 @snmp_pdu_decrypt(%struct.snmp_pdu*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
