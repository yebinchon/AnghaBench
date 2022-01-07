; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_ok_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_ok_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"SNMP GETNEXT: response has wrong version\00", align 1
@SNMP_ERR_NOSUCHNAME = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"SNMP GETNEXT: error %d\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"SNMP GETNEXT: bad number of bindings in response\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"SNMP GETNEXT: inconsistent table response\00", align 1
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_SYNTAX_ENDOFMIBVIEW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"SNMP GETNEXT: bad syntax in response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*, %struct.snmp_pdu*)* @ok_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_getnext(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %7 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %8 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %11 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %112

16:                                               ; preds = %2
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNMP_ERR_NOSUCHNAME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %112

23:                                               ; preds = %16
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNMP_ERR_NOERROR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %31 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 -1, i32* %3, align 4
  br label %112

34:                                               ; preds = %23
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %112

44:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %108, %44
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %48 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %45
  %52 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %53 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %59 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @asn_is_suboid(i32* %57, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %51
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  store i32 0, i32* %3, align 4
  br label %112

72:                                               ; preds = %51
  %73 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %74 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SNMP_V1, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %80 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SNMP_SYNTAX_ENDOFMIBVIEW, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %112

89:                                               ; preds = %78, %72
  %90 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %91 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %98 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %96, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %45

111:                                              ; preds = %45
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %105, %88, %71, %42, %29, %22, %14
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @asn_is_suboid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
