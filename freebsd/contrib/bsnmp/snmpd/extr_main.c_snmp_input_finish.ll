; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_input_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_input_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.snmp_pdu = type { i64, i32, i32, i32 }
%struct.asn_buf = type { i64, i32*, i32* }

@snmpd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SNMPD_INPUT_OK = common dso_local global i32 0, align 4
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_ERR_BADVALUE = common dso_local global i32 0, align 4
@SNMPD_INPUT_VALBADLEN = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_LENGTH = common dso_local global i32 0, align 4
@SNMPD_INPUT_VALRANGE = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_ENCODING = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not encode error response\00", align 1
@snmpd_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SNMPD_INPUT_FAILED = common dso_local global i32 0, align 4
@debug = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s <- \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_input_finish(%struct.snmp_pdu* %0, i32* %1, i64 %2, i32* %3, i64* %4, i8* %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.snmp_pdu*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.snmp_pdu, align 8
  %21 = alloca %struct.asn_buf, align 8
  %22 = alloca %struct.asn_buf, align 8
  %23 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmpd, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %22, i32 0, i32 2
  store i32* %28, i32** %29, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %22, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @SNMPD_INPUT_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %9
  %36 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %37 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNMP_V1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  %43 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %44 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %67

45:                                               ; preds = %35
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @SNMPD_INPUT_VALBADLEN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @SNMP_ERR_WRONG_LENGTH, align 4
  %51 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %52 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %66

53:                                               ; preds = %45
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @SNMPD_INPUT_VALRANGE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @SNMP_ERR_WRONG_ENCODING, align 4
  %63 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %64 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %18, align 4
  %69 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %70 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %72 = call i64 @snmp_make_errresp(%struct.snmp_pdu* %71, %struct.asn_buf* %22, %struct.asn_buf* %21)
  %73 = icmp eq i64 %72, 129
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @LOG_WARNING, align 4
  %76 = call i32 @syslog(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd_stats, i32 0, i32 0), align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd_stats, i32 0, i32 0), align 4
  %79 = load i32, i32* @SNMPD_INPUT_FAILED, align 4
  store i32 %79, i32* %10, align 4
  br label %177

80:                                               ; preds = %67
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @debug, i32 0, i32 0), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @snmp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %87 = call i32 @snmp_pdu_dump(%struct.snmp_pdu* %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = load i64*, i64** %15, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* @SNMPD_INPUT_OK, align 4
  store i32 %97, i32* %10, align 4
  br label %177

98:                                               ; preds = %9
  %99 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %100 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %118 [
    i32 134, label %102
    i32 132, label %106
    i32 131, label %110
    i32 133, label %114
  ]

102:                                              ; preds = %98
  %103 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = call i32 @snmp_get(%struct.snmp_pdu* %103, %struct.asn_buf* %21, %struct.snmp_pdu* %20, i8* %104)
  store i32 %105, i32* %23, align 4
  br label %119

106:                                              ; preds = %98
  %107 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = call i32 @snmp_getnext(%struct.snmp_pdu* %107, %struct.asn_buf* %21, %struct.snmp_pdu* %20, i8* %108)
  store i32 %109, i32* %23, align 4
  br label %119

110:                                              ; preds = %98
  %111 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = call i32 @snmp_set(%struct.snmp_pdu* %111, %struct.asn_buf* %21, %struct.snmp_pdu* %20, i8* %112)
  store i32 %113, i32* %23, align 4
  br label %119

114:                                              ; preds = %98
  %115 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = call i32 @snmp_getbulk(%struct.snmp_pdu* %115, %struct.asn_buf* %21, %struct.snmp_pdu* %20, i8* %116)
  store i32 %117, i32* %23, align 4
  br label %119

118:                                              ; preds = %98
  store i32 129, i32* %23, align 4
  br label %119

119:                                              ; preds = %118, %114, %110, %106, %102
  %120 = load i32, i32* %23, align 4
  switch i32 %120, label %175 [
    i32 128, label %121
    i32 129, label %139
    i32 130, label %143
  ]

121:                                              ; preds = %119
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @debug, i32 0, i32 0), align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @snmp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  %127 = call i32 @snmp_pdu_dump(%struct.snmp_pdu* %20)
  br label %128

128:                                              ; preds = %124, %121
  %129 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = load i64*, i64** %15, align 8
  store i64 %135, i64* %136, align 8
  %137 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %20)
  %138 = load i32, i32* @SNMPD_INPUT_OK, align 4
  store i32 %138, i32* %10, align 4
  br label %177

139:                                              ; preds = %119
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd_stats, i32 0, i32 0), align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd_stats, i32 0, i32 0), align 4
  %142 = load i32, i32* @SNMPD_INPUT_FAILED, align 4
  store i32 %142, i32* %10, align 4
  br label %177

143:                                              ; preds = %119
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 1
  store i32* %144, i32** %145, align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmpd, i32 0, i32 0), align 8
  %147 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %149 = call i64 @snmp_make_errresp(%struct.snmp_pdu* %148, %struct.asn_buf* %22, %struct.asn_buf* %21)
  %150 = icmp eq i64 %149, 129
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load i32, i32* @LOG_WARNING, align 4
  %153 = call i32 @syslog(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd_stats, i32 0, i32 0), align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmpd_stats, i32 0, i32 0), align 4
  %156 = load i32, i32* @SNMPD_INPUT_FAILED, align 4
  store i32 %156, i32* %10, align 4
  br label %177

157:                                              ; preds = %143
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @debug, i32 0, i32 0), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %16, align 8
  %162 = call i32 @snmp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %161)
  %163 = load %struct.snmp_pdu*, %struct.snmp_pdu** %11, align 8
  %164 = call i32 @snmp_pdu_dump(%struct.snmp_pdu* %163)
  br label %165

165:                                              ; preds = %160, %157
  %166 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = ptrtoint i32* %167 to i64
  %170 = ptrtoint i32* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 4
  %173 = load i64*, i64** %15, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i32, i32* @SNMPD_INPUT_OK, align 4
  store i32 %174, i32* %10, align 4
  br label %177

175:                                              ; preds = %119
  %176 = call i32 (...) @abort() #3
  unreachable

177:                                              ; preds = %165, %151, %139, %128, %88, %74
  %178 = load i32, i32* %10, align 4
  ret i32 %178
}

declare dso_local i64 @snmp_make_errresp(%struct.snmp_pdu*, %struct.asn_buf*, %struct.asn_buf*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @snmp_printf(i8*, i8*) #1

declare dso_local i32 @snmp_pdu_dump(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_get(%struct.snmp_pdu*, %struct.asn_buf*, %struct.snmp_pdu*, i8*) #1

declare dso_local i32 @snmp_getnext(%struct.snmp_pdu*, %struct.asn_buf*, %struct.snmp_pdu*, i8*) #1

declare dso_local i32 @snmp_set(%struct.snmp_pdu*, %struct.asn_buf*, %struct.snmp_pdu*, i8*) #1

declare dso_local i32 @snmp_getbulk(%struct.snmp_pdu*, %struct.asn_buf*, %struct.snmp_pdu*, i8*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
