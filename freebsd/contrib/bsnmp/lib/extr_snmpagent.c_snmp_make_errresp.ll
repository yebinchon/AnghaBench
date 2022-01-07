; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_make_errresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_make_errresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, i64, i8*, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.asn_buf = type { i64, i64, i32 }

@SNMP_CODE_OK = common dso_local global i32 0, align 4
@SNMP_RET_IGN = common dso_local global i32 0, align 4
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_PRIV_NOPRIV = common dso_local global i64 0, align 8
@ASN_ERR_OK = common dso_local global i64 0, align 8
@ASN_TYPE_OCTETSTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot decode encrypted pdu\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot decode scoped pdu header\00", align 1
@SNMP_ENGINE_ID_SIZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot decode msg context engine\00", align 1
@SNMP_CONTEXT_NAME_SIZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot decode msg context name\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot get pdu header\00", align 1
@ASN_TYPE_MASK = common dso_local global i32 0, align 4
@ASN_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN_CLASS_CONTEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"bad pdu header tag\00", align 1
@SNMP_PDU_RESPONSE = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_make_errresp(%struct.snmp_pdu* %0, %struct.asn_buf* %1, %struct.asn_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca %struct.asn_buf*, align 8
  %7 = alloca %struct.asn_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.snmp_pdu, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %5, align 8
  store %struct.asn_buf* %1, %struct.asn_buf** %6, align 8
  store %struct.asn_buf* %2, %struct.asn_buf** %7, align 8
  %13 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %14 = call i32 @snmp_pdu_create_response(%struct.snmp_pdu* %13, %struct.snmp_pdu* %10)
  %15 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %16 = call i32 @snmp_pdu_decode_header(%struct.asn_buf* %15, %struct.snmp_pdu* %10)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @SNMP_CODE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %20, i32* %4, align 4
  br label %186

21:                                               ; preds = %3
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %23 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNMP_V3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNMP_PRIV_NOPRIV, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %35 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 1
  %36 = call i64 @asn_get_header(%struct.asn_buf* %34, i32* %8, i64* %35)
  %37 = load i64, i64* @ASN_ERR_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ASN_TYPE_OCTETSTRING, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %33
  %44 = call i32 @snmp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %45, i32* %4, align 4
  br label %186

46:                                               ; preds = %39, %27
  %47 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %48 = call i64 @asn_get_sequence(%struct.asn_buf* %47, i64* %9)
  %49 = load i64, i64* @ASN_ERR_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 @snmp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %53, i32* %4, align 4
  br label %186

54:                                               ; preds = %46
  %55 = load i64, i64* @SNMP_ENGINE_ID_SIZ, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i64 @asn_get_octetstring(%struct.asn_buf* %56, i32* %59, i64* %9)
  %61 = load i64, i64* @ASN_ERR_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = call i32 @snmp_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %65, i32* %4, align 4
  br label %186

66:                                               ; preds = %54
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 2
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* @SNMP_CONTEXT_NAME_SIZ, align 8
  store i64 %69, i64* %9, align 8
  %70 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %71 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = call i64 @asn_get_octetstring(%struct.asn_buf* %70, i32* %73, i64* %9)
  %75 = load i64, i64* @ASN_ERR_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = call i32 @snmp_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %79, i32* %4, align 4
  br label %186

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %80, %21
  %86 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %87 = call i64 @asn_get_header(%struct.asn_buf* %86, i32* %8, i64* %9)
  %88 = load i64, i64* @ASN_ERR_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = call i32 @snmp_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %92, i32* %4, align 4
  br label %186

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ASN_TYPE_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %99 = load i32, i32* @ASN_CLASS_CONTEXT, align 4
  %100 = or i32 %98, %99
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = call i32 @snmp_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %104, i32* %4, align 4
  br label %186

105:                                              ; preds = %93
  %106 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %107 = call i32 @snmp_parse_pdus_hdr(%struct.asn_buf* %106, %struct.snmp_pdu* %10, i64* %9)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @ASN_ERR_STOPPED(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %112, i32* %4, align 4
  br label %186

113:                                              ; preds = %105
  %114 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %115 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %120, i32* %4, align 4
  br label %186

121:                                              ; preds = %113
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %124 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %126 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 6
  store i32 %127, i32* %128, align 8
  %129 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %130 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 5
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @SNMP_PDU_RESPONSE, align 4
  %134 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %136 = call i32 @snmp_pdu_encode_header(%struct.asn_buf* %135, %struct.snmp_pdu* %10)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @SNMP_CODE_OK, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %121
  %141 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %141, i32* %4, align 4
  br label %186

142:                                              ; preds = %121
  %143 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %144 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %147 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ugt i64 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %151, i32* %4, align 4
  br label %186

152:                                              ; preds = %142
  %153 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %154 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %157 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %160 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @memcpy(i64 %155, i32 %158, i64 %161)
  %163 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %164 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %167 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, %165
  store i64 %169, i64* %167, align 8
  %170 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %171 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %174 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, %172
  store i64 %176, i64* %174, align 8
  %177 = load %struct.asn_buf*, %struct.asn_buf** %7, align 8
  %178 = call i32 @snmp_fix_encoding(%struct.asn_buf* %177, %struct.snmp_pdu* %10)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @SNMP_CODE_OK, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %152
  %183 = load i32, i32* @SNMP_RET_IGN, align 4
  store i32 %183, i32* %4, align 4
  br label %186

184:                                              ; preds = %152
  %185 = load i32, i32* @SNMP_RET_OK, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %184, %182, %150, %140, %119, %111, %102, %90, %77, %63, %51, %43, %19
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @snmp_pdu_create_response(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_decode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i64 @asn_get_header(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i32 @snmp_error(i8*) #1

declare dso_local i64 @asn_get_sequence(%struct.asn_buf*, i64*) #1

declare dso_local i64 @asn_get_octetstring(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i32 @snmp_parse_pdus_hdr(%struct.asn_buf*, %struct.snmp_pdu*, i64*) #1

declare dso_local i64 @ASN_ERR_STOPPED(i32) #1

declare dso_local i32 @snmp_pdu_encode_header(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @snmp_fix_encoding(%struct.asn_buf*, %struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
