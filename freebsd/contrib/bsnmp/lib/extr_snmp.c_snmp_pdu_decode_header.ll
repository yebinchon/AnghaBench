; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32 }
%struct.snmp_pdu = type { i64, i64, i32, i32, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ASN_ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cannot decode pdu header\00", align 1
@SNMP_CODE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"outer sequence value too short\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ignoring trailing junk in message\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot decode version\00", align 1
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_V2c = common dso_local global i64 0, align 8
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_Verr = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported SNMP version\00", align 1
@SNMP_CODE_BADENC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"cannot decode pdu global data header\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot decode msg indetifier\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"cannot decode msg size\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"cannot decode msg flags\00", align 1
@SNMP_SECMODEL_USM = common dso_local global i64 0, align 8
@SNMP_COMMUNITY_MAXLEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"cannot decode community\00", align 1
@SNMP_CODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_pdu_decode_header(%struct.asn_buf* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %10 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %13 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %15 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %20 = call i64 @asn_get_sequence(%struct.asn_buf* %19, i64* %8)
  %21 = load i64, i64* @ASN_ERR_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = call i32 @snmp_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %177

26:                                               ; preds = %2
  %27 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %28 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @snmp_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %34, i32* %3, align 4
  br label %177

35:                                               ; preds = %26
  %36 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %37 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = call i32 @snmp_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %45 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %48 = call i64 @asn_get_integer(%struct.asn_buf* %47, i32* %6)
  %49 = load i64, i64* @ASN_ERR_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 @snmp_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %53, i32* %3, align 4
  br label %177

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* @SNMP_V1, align 8
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %83

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* @SNMP_V2c, align 8
  %66 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %67 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %82

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* @SNMP_V3, align 8
  %73 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %74 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %81

75:                                               ; preds = %68
  %76 = load i64, i64* @SNMP_Verr, align 8
  %77 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %78 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = call i32 @snmp_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @SNMP_CODE_BADENC, align 4
  store i32 %80, i32* %3, align 4
  br label %177

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %85 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SNMP_V3, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %156

89:                                               ; preds = %83
  %90 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %91 = call i64 @asn_get_sequence(%struct.asn_buf* %90, i64* %8)
  %92 = load i64, i64* @ASN_ERR_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 @snmp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %96, i32* %3, align 4
  br label %177

97:                                               ; preds = %89
  %98 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %99 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %100 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %99, i32 0, i32 2
  %101 = call i64 @asn_get_integer(%struct.asn_buf* %98, i32* %100)
  %102 = load i64, i64* @ASN_ERR_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = call i32 @snmp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %106, i32* %3, align 4
  br label %177

107:                                              ; preds = %97
  %108 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %109 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %110 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i64 @asn_get_integer(%struct.asn_buf* %108, i32* %111)
  %113 = load i64, i64* @ASN_ERR_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = call i32 @snmp_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %117, i32* %3, align 4
  br label %177

118:                                              ; preds = %107
  store i64 1, i64* %7, align 8
  %119 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %120 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %121 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %120, i32 0, i32 5
  %122 = call i64 @asn_get_octetstring(%struct.asn_buf* %119, i32* %121, i64* %7)
  %123 = load i64, i64* @ASN_ERR_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = call i32 @snmp_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %127 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %127, i32* %3, align 4
  br label %177

128:                                              ; preds = %118
  %129 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %130 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %131 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %130, i32 0, i32 3
  %132 = call i64 @asn_get_integer(%struct.asn_buf* %129, i32* %131)
  %133 = load i64, i64* @ASN_ERR_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = call i32 @snmp_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %137, i32* %3, align 4
  br label %177

138:                                              ; preds = %128
  %139 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %140 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @SNMP_SECMODEL_USM, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %146, i32* %3, align 4
  br label %177

147:                                              ; preds = %138
  %148 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %149 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %150 = call i64 @parse_secparams(%struct.asn_buf* %148, %struct.snmp_pdu* %149)
  %151 = load i64, i64* @ASN_ERR_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %154, i32* %3, align 4
  br label %177

155:                                              ; preds = %147
  br label %175

156:                                              ; preds = %83
  %157 = load i64, i64* @SNMP_COMMUNITY_MAXLEN, align 8
  store i64 %157, i64* %7, align 8
  %158 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %159 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %160 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = bitcast i8* %161 to i32*
  %163 = call i64 @asn_get_octetstring(%struct.asn_buf* %158, i32* %162, i64* %7)
  %164 = load i64, i64* @ASN_ERR_OK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = call i32 @snmp_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %168 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %168, i32* %3, align 4
  br label %177

169:                                              ; preds = %156
  %170 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %171 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 0, i8* %174, align 1
  br label %175

175:                                              ; preds = %169, %155
  %176 = load i32, i32* @SNMP_CODE_OK, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %166, %153, %145, %135, %125, %115, %104, %94, %75, %51, %32, %23
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i64 @asn_get_sequence(%struct.asn_buf*, i64*) #1

declare dso_local i32 @snmp_error(i8*) #1

declare dso_local i64 @asn_get_integer(%struct.asn_buf*, i32*) #1

declare dso_local i64 @asn_get_octetstring(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i64 @parse_secparams(%struct.asn_buf*, %struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
