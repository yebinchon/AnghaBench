; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode_scoped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode_scoped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64 }
%struct.snmp_pdu = type { i64, i64, i8*, i32, i32 }

@SNMP_V3 = common dso_local global i64 0, align 8
@ASN_ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"cannot decode scoped pdu header\00", align 1
@SNMP_CODE_FAILED = common dso_local global i32 0, align 4
@SNMP_ENGINE_ID_SIZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot decode msg context engine\00", align 1
@SNMP_CONTEXT_NAME_SIZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot decode msg context name\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot get pdu header\00", align 1
@ASN_TYPE_MASK = common dso_local global i32 0, align 4
@ASN_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN_CLASS_CONTEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"bad pdu header tag\00", align 1
@SNMP_V1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"bad pdu type %u\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"ignoring trailing junk after pdu\00", align 1
@SNMP_CODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_pdu_decode_scoped(%struct.asn_buf* %0, %struct.snmp_pdu* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca %struct.snmp_pdu*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %13 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNMP_V3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %3
  %18 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %19 = call i64 @asn_get_sequence(%struct.asn_buf* %18, i64* %9)
  %20 = load i64, i64* @ASN_ERR_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %24, i32* %4, align 4
  br label %149

25:                                               ; preds = %17
  %26 = load i64, i64* @SNMP_ENGINE_ID_SIZ, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %28 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %29 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %28, i32 0, i32 4
  %30 = call i64 @asn_get_octetstring(%struct.asn_buf* %27, i32* %29, i64* %9)
  %31 = load i64, i64* @ASN_ERR_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %35, i32* %4, align 4
  br label %149

36:                                               ; preds = %25
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* @SNMP_CONTEXT_NAME_SIZ, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %42 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %43 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %42, i32 0, i32 2
  %44 = bitcast i8** %43 to i32*
  %45 = call i64 @asn_get_octetstring(%struct.asn_buf* %41, i32* %44, i64* %9)
  %46 = load i64, i64* @ASN_ERR_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %50, i32* %4, align 4
  br label %149

51:                                               ; preds = %36
  %52 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %53 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %51, %3
  %58 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %59 = call i64 @asn_get_header(%struct.asn_buf* %58, i32* %8, i64* %9)
  %60 = load i64, i64* @ASN_ERR_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %64, i32* %4, align 4
  br label %149

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @ASN_TYPE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %71 = load i32, i32* @ASN_CLASS_CONTEXT, align 4
  %72 = or i32 %70, %71
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %76, i32* %4, align 4
  br label %149

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ASN_TYPE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %82 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %84 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %113 [
    i32 136, label %86
    i32 134, label %86
    i32 131, label %86
    i32 130, label %86
    i32 129, label %87
    i32 135, label %100
    i32 133, label %100
    i32 128, label %100
    i32 132, label %100
  ]

86:                                               ; preds = %77, %77, %77, %77
  br label %119

87:                                               ; preds = %77
  %88 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %89 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SNMP_V1, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %95 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %98, i32* %4, align 4
  br label %149

99:                                               ; preds = %87
  br label %119

100:                                              ; preds = %77, %77, %77, %77
  %101 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %102 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SNMP_V1, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %108 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %111, i32* %4, align 4
  br label %149

112:                                              ; preds = %100
  br label %119

113:                                              ; preds = %77
  %114 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %115 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %118, i32* %4, align 4
  br label %149

119:                                              ; preds = %112, %99, %86
  %120 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %121 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = sub i64 %122, %123
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %127 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %129 = load %struct.snmp_pdu*, %struct.snmp_pdu** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @parse_pdus(%struct.asn_buf* %128, %struct.snmp_pdu* %129, i32* %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i64 @ASN_ERR_STOPPED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %136, i32* %4, align 4
  br label %149

137:                                              ; preds = %119
  %138 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %139 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 (i8*, ...) @snmp_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %147 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i32, i32* @SNMP_CODE_OK, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %135, %113, %106, %93, %74, %62, %48, %33, %22
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @asn_get_sequence(%struct.asn_buf*, i64*) #1

declare dso_local i32 @snmp_error(i8*, ...) #1

declare dso_local i64 @asn_get_octetstring(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i64 @asn_get_header(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i32 @parse_pdus(%struct.asn_buf*, %struct.snmp_pdu*, i32*) #1

declare dso_local i64 @ASN_ERR_STOPPED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
