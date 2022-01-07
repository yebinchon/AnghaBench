; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_discover_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_discover_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.snmp_pdu = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@snmp_client = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SNMP_V3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"wrong version\00", align 1
@SNMP_AUTH_NOAUTH = common dso_local global i64 0, align 8
@SNMP_PRIV_NOPRIV = common dso_local global i32 0, align 4
@SNMP_PDU_GET = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Error %d in responce\00", align 1
@SNMP_CODE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_discover_engine(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snmp_pdu, align 8
  %9 = alloca %struct.snmp_pdu, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 0), align 8
  %16 = load i64, i64* @SNMP_V3, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (%struct.TYPE_10__*, i8*, ...) @seterr(%struct.TYPE_10__* @snmp_client, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 0), align 8
  %22 = trunc i64 %12 to i32
  %23 = call i32 @strlcpy(i8* %14, i8* %21, i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 1), align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 2), align 4
  store i32 %25, i32* %7, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 1), align 8
  %26 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 1), align 8
  %28 = load i32, i32* @SNMP_PRIV_NOPRIV, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 2), align 4
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 0), align 8
  %30 = call i32 @memset(i8* %29, i32 0, i32 8)
  %31 = load i32, i32* @SNMP_PDU_GET, align 4
  %32 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %8, i32 %31)
  %33 = call i32 @snmp_dialog(%struct.snmp_pdu* %8, %struct.snmp_pdu* %9)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (%struct.TYPE_10__*, i8*, ...) @seterr(%struct.TYPE_10__* @snmp_client, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SNMP_ERR_NOERROR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (%struct.TYPE_10__*, i8*, ...) @seterr(%struct.TYPE_10__* @snmp_client, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 2), align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 4), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 3), align 8
  %61 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i32 %60, i32 %63, i64 %66)
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 0), align 8
  %69 = call i32 @strlcpy(i8* %68, i8* %14, i32 8)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 1), align 8
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 2), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2, i32 1), align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

77:                                               ; preds = %53
  %78 = load i8*, i8** %3, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %3, align 8
  %82 = call i64 @snmp_passwd_to_keys(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2), i8* %81)
  %83 = load i64, i64* @SNMP_CODE_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 3), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 2), align 8
  %88 = call i64 @snmp_get_local_keys(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 2), i32 %86, i64 %87)
  %89 = load i64, i64* @SNMP_CODE_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %80, %77
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 0), align 8
  br label %101

101:                                              ; preds = %97, %92
  %102 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 1), align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

110:                                              ; preds = %101
  %111 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %112 = load i32, i32* @SNMP_PDU_GET, align 4
  %113 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %8, i32 %112)
  %114 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = call i32 @snmp_dialog(%struct.snmp_pdu* %8, %struct.snmp_pdu* %9)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 (%struct.TYPE_10__*, i8*, ...) @seterr(%struct.TYPE_10__* @snmp_client, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SNMP_ERR_NOERROR, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (%struct.TYPE_10__*, i8*, ...) @seterr(%struct.TYPE_10__* @snmp_client, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 0), align 8
  %142 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snmp_client, i32 0, i32 1, i32 1), align 8
  %145 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %8)
  %146 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %9)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

147:                                              ; preds = %138, %134, %127, %120, %106, %91, %76, %49, %42, %35
  %148 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seterr(%struct.TYPE_10__*, i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snmp_pdu_create(%struct.snmp_pdu*, i32) #2

declare dso_local i32 @snmp_dialog(%struct.snmp_pdu*, %struct.snmp_pdu*) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i64 @snmp_passwd_to_keys(%struct.TYPE_9__*, i8*) #2

declare dso_local i64 @snmp_get_local_keys(%struct.TYPE_9__*, i32, i64) #2

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
