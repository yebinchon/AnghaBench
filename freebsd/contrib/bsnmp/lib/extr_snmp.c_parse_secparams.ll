; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_parse_secparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_parse_secparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32, i32* }
%struct.snmp_pdu = type { i32, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@ASN_ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot parse usm header\00", align 1
@ASN_ERR_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot decode usm header\00", align 1
@SNMP_ENGINE_ID_SIZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot decode msg engine id\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot decode msg engine boots\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot decode msg engine time\00", align 1
@SNMP_ADM_STR32_SIZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot decode msg user name\00", align 1
@SNMP_MSG_AUTH_FLAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"cannot decode msg authentication param\00", align 1
@SNMP_MSG_PRIV_FLAG = common dso_local global i32 0, align 4
@SNMP_USM_AUTH_SIZE = common dso_local global i32* null, align 8
@ASN_MAXLENLEN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_buf*, %struct.snmp_pdu*)* @parse_secparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_secparams(%struct.asn_buf* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca %struct.asn_buf, align 8
  %9 = alloca i64, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %11 = call i32 @memset(i32* %10, i32 0, i32 256)
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %13 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 0
  store i32 256, i32* %14, align 8
  store i64 256, i64* %9, align 8
  %15 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %17 = call i64 @asn_get_octetstring(%struct.asn_buf* %15, i32* %16, i64* %9)
  %18 = load i64, i64* @ASN_ERR_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 @snmp_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %22, i32* %3, align 4
  br label %158

23:                                               ; preds = %2
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = call i64 @asn_get_sequence(%struct.asn_buf* %8, i64* %6)
  %28 = load i64, i64* @ASN_ERR_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = call i32 @snmp_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %32, i32* %3, align 4
  br label %158

33:                                               ; preds = %23
  %34 = load i64, i64* @SNMP_ENGINE_ID_SIZ, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = call i64 @asn_get_octetstring(%struct.asn_buf* %8, i32* %37, i64* %6)
  %39 = load i64, i64* @ASN_ERR_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = call i32 @snmp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %43, i32* %3, align 4
  br label %158

44:                                               ; preds = %33
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %47 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = call i64 @asn_get_integer(%struct.asn_buf* %8, i32* %51)
  %53 = load i64, i64* @ASN_ERR_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = call i32 @snmp_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %57, i32* %3, align 4
  br label %158

58:                                               ; preds = %44
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = call i64 @asn_get_integer(%struct.asn_buf* %8, i32* %61)
  %63 = load i64, i64* @ASN_ERR_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = call i32 @snmp_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %67, i32* %3, align 4
  br label %158

68:                                               ; preds = %58
  %69 = load i64, i64* @SNMP_ADM_STR32_SIZ, align 8
  %70 = sub i64 %69, 1
  store i64 %70, i64* %6, align 8
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %72 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = bitcast i8** %73 to i32*
  %75 = call i64 @asn_get_octetstring(%struct.asn_buf* %8, i32* %74, i64* %6)
  %76 = load i64, i64* @ASN_ERR_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = call i32 @snmp_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %80, i32* %3, align 4
  br label %158

81:                                               ; preds = %68
  %82 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %83 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 0, i8* %87, align 1
  store i64 4, i64* %6, align 8
  %88 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %89 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %88, i32 0, i32 3
  %90 = call i64 @asn_get_octetstring(%struct.asn_buf* %8, i32* %89, i64* %6)
  %91 = load i64, i64* @ASN_ERR_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %81
  %94 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %95 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %101, 4
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %81
  %104 = call i32 @snmp_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %105, i32* %3, align 4
  br label %158

106:                                              ; preds = %100, %93
  store i64 4, i64* %6, align 8
  %107 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %108 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %107, i32 0, i32 2
  %109 = call i64 @asn_get_octetstring(%struct.asn_buf* %8, i32* %108, i64* %6)
  %110 = load i64, i64* @ASN_ERR_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %114 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 4
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %106
  %123 = call i32 @snmp_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %124, i32* %3, align 4
  br label %158

125:                                              ; preds = %119, %112
  %126 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %127 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %125
  %133 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %134 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32*, i32** @SNMP_USM_AUTH_SIZE, align 8
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = inttoptr i64 %140 to i32*
  %142 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %143 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %142, i32 0, i32 1
  store i32* %141, i32** %143, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i32*, i32** @ASN_MAXLENLEN, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 %144
  %147 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %148 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = ptrtoint i32* %149 to i64
  %151 = ptrtoint i32* %146 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %148, align 8
  br label %155

155:                                              ; preds = %132, %125
  %156 = load i64, i64* @ASN_ERR_OK, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %155, %122, %103, %78, %65, %55, %41, %30, %20
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @asn_get_octetstring(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i32 @snmp_error(i8*) #1

declare dso_local i64 @asn_get_sequence(%struct.asn_buf*, i64*) #1

declare dso_local i64 @asn_get_integer(%struct.asn_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
