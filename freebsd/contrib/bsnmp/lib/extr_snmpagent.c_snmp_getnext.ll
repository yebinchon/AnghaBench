; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_pdu = type { i64, i64, i32, i32* }
%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@SNMP_RET_IGN = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@SNMP_ERR_TOOBIG = common dso_local global i32 0, align 4
@SNMP_RET_ERR = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"getnext: binding encoding: %u\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_CODE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"getnext: failed to encode PDU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_getnext(%struct.snmp_pdu* %0, %struct.asn_buf* %1, %struct.snmp_pdu* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca %struct.asn_buf*, align 8
  %8 = alloca %struct.snmp_pdu*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.context, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %6, align 8
  store %struct.asn_buf* %1, %struct.asn_buf** %7, align 8
  store %struct.snmp_pdu* %2, %struct.snmp_pdu** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = call i32 @memset(%struct.context* %10, i32 0, i32 8)
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %19 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %20 = call i32 @snmp_pdu_create_response(%struct.snmp_pdu* %18, %struct.snmp_pdu* %19)
  %21 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %23 = call i64 @snmp_pdu_encode_header(%struct.asn_buf* %21, %struct.snmp_pdu* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %26, i32* %5, align 4
  br label %119

27:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %105, %27
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %31 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %28
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %46 = call i32 @do_getnext(%struct.context* %10, i32* %39, i32* %44, %struct.snmp_pdu* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @SNMP_RET_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %34
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 1
  %53 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %54 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %56 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %119

58:                                               ; preds = %34
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %64 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %65 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = call i32 @snmp_binding_encode(%struct.asn_buf* %63, i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @ASN_ERR_EOBUF, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %58
  %74 = load i32, i32* @SNMP_ERR_TOOBIG, align 4
  %75 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %76 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %78 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %80 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %79)
  %81 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %81, i32* %5, align 4
  br label %119

82:                                               ; preds = %58
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @ASN_ERR_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32, i32* @GET, align 4
  %88 = call i64 @TR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* @SNMP_ERR_GENERR, align 4
  %95 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %96 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  %99 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %100 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %102 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %101)
  %103 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %103, i32* %5, align 4
  br label %119

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %28

108:                                              ; preds = %28
  %109 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %110 = load %struct.snmp_pdu*, %struct.snmp_pdu** %8, align 8
  %111 = call i64 @snmp_fix_encoding(%struct.asn_buf* %109, %struct.snmp_pdu* %110)
  %112 = load i64, i64* @SNMP_CODE_OK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %116, i32* %5, align 4
  br label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @SNMP_RET_OK, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %114, %93, %73, %50, %25
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.context*, i32, i32) #1

declare dso_local i32 @snmp_pdu_create_response(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i64 @snmp_pdu_encode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @do_getnext(%struct.context*, i32*, i32*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_binding_encode(%struct.asn_buf*, i32*) #1

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, ...) #1

declare dso_local i64 @snmp_fix_encoding(%struct.asn_buf*, %struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
