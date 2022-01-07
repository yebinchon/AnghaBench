; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_pdu_encode_secparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_pdu_encode_secparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32, i32* }
%struct.snmp_pdu = type { i32, i32*, i32*, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@ASN_TYPE_SEQUENCE = common dso_local global i32 0, align 4
@ASN_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i64 0, align 8
@SNMP_CODE_FAILED = common dso_local global i32 0, align 4
@SNMP_MSG_AUTH_FLAG = common dso_local global i32 0, align 4
@ASN_MAXLENLEN = common dso_local global i32 0, align 4
@SNMP_MSG_PRIV_FLAG = common dso_local global i32 0, align 4
@ASN_TYPE_OCTETSTRING = common dso_local global i32 0, align 4
@SNMP_CODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_buf*, %struct.snmp_pdu*)* @pdu_encode_secparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdu_encode_secparams(%struct.asn_buf* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca %struct.asn_buf, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %12 = call i32 @memset(i32* %11, i32 0, i32 256)
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 0
  store i32 256, i32* %15, align 8
  %16 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %17 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @asn_put_temp_header(%struct.asn_buf* %8, i32 %18, i32** %7)
  %20 = load i64, i64* @ASN_ERR_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %23, i32* %3, align 4
  br label %203

24:                                               ; preds = %2
  %25 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %26 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %31 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @asn_put_octetstring(%struct.asn_buf* %8, i32* %29, i32 %33)
  %35 = load i64, i64* @ASN_ERR_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %203

39:                                               ; preds = %24
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @asn_put_integer(%struct.asn_buf* %8, i32 %43)
  %45 = load i64, i64* @ASN_ERR_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %203

49:                                               ; preds = %39
  %50 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %51 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @asn_put_integer(%struct.asn_buf* %8, i32 %53)
  %55 = load i64, i64* @ASN_ERR_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %58, i32* %3, align 4
  br label %203

59:                                               ; preds = %49
  %60 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %61 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %66 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @strlen(i64 %68)
  %70 = call i64 @asn_put_octetstring(%struct.asn_buf* %8, i32* %64, i32 %69)
  %71 = load i64, i64* @ASN_ERR_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %74, i32* %3, align 4
  br label %203

75:                                               ; preds = %59
  %76 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %77 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub i64 1024, %85
  %87 = load i32, i32* @ASN_MAXLENLEN, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %86, %88
  store i64 %89, i64* %9, align 8
  %90 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %91 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = call i64 @asn_put_octetstring(%struct.asn_buf* %8, i32* %93, i32 8)
  %95 = load i64, i64* @ASN_ERR_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %98, i32* %3, align 4
  br label %203

99:                                               ; preds = %82
  br label %111

100:                                              ; preds = %75
  %101 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %102 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = call i64 @asn_put_octetstring(%struct.asn_buf* %8, i32* %104, i32 0)
  %106 = load i64, i64* @ASN_ERR_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %109, i32* %3, align 4
  br label %203

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %99
  %112 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %113 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %120 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = call i64 @asn_put_octetstring(%struct.asn_buf* %8, i32* %122, i32 8)
  %124 = load i64, i64* @ASN_ERR_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %127, i32* %3, align 4
  br label %203

128:                                              ; preds = %118
  br label %140

129:                                              ; preds = %111
  %130 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %131 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = call i64 @asn_put_octetstring(%struct.asn_buf* %8, i32* %133, i32 0)
  %135 = load i64, i64* @ASN_ERR_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %138, i32* %3, align 4
  br label %203

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32*, i32** %7, align 8
  %142 = call i64 @asn_commit_header(%struct.asn_buf* %8, i32* %141, i64* %10)
  %143 = load i64, i64* @ASN_ERR_OK, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %146, i32* %3, align 4
  br label %203

147:                                              ; preds = %140
  %148 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %149 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %147
  %155 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %156 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i64, i64* %10, align 8
  %161 = sub i64 0, %160
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %164 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %163, i32 0, i32 2
  store i32* %162, i32** %164, align 8
  br label %165

165:                                              ; preds = %154, %147
  %166 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %167 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %168 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = sub i64 1024, %170
  %172 = trunc i64 %171 to i32
  %173 = call i64 @asn_put_octetstring(%struct.asn_buf* %166, i32* %167, i32 %172)
  %174 = load i64, i64* @ASN_ERR_OK, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %177, i32* %3, align 4
  br label %203

178:                                              ; preds = %165
  %179 = load i32, i32* @ASN_MAXLENLEN, align 4
  %180 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %181 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = sext i32 %179 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %181, align 8
  %185 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %186 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %178
  %192 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %193 = load i32, i32* @ASN_TYPE_OCTETSTRING, align 4
  %194 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %195 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %194, i32 0, i32 1
  %196 = call i64 @asn_put_temp_header(%struct.asn_buf* %192, i32 %193, i32** %195)
  %197 = load i64, i64* @ASN_ERR_OK, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %200, i32* %3, align 4
  br label %203

201:                                              ; preds = %191, %178
  %202 = load i32, i32* @SNMP_CODE_OK, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %199, %176, %145, %137, %126, %108, %97, %73, %57, %47, %37, %22
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @asn_put_temp_header(%struct.asn_buf*, i32, i32**) #1

declare dso_local i64 @asn_put_octetstring(%struct.asn_buf*, i32*, i32) #1

declare dso_local i64 @asn_put_integer(%struct.asn_buf*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @asn_commit_header(%struct.asn_buf*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
