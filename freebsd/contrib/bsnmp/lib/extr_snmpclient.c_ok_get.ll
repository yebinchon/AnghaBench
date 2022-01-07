; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_ok_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_ok_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.snmp_pdu = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"SNMP GET: response has wrong version\00", align 1
@SNMP_ERR_NOSUCHNAME = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"SNMP GET: error %d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SNMP GET: bad number of bindings in response\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"SNMP GET: bad OID in response\00", align 1
@snmp_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_SYNTAX_NOSUCHOBJECT = common dso_local global i64 0, align 8
@SNMP_SYNTAX_NOSUCHINSTANCE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"SNMP GET: bad syntax in response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*, %struct.snmp_pdu*)* @ok_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_get(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
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
  %15 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %116

16:                                               ; preds = %2
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNMP_ERR_NOSUCHNAME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %116

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
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 -1, i32* %3, align 4
  br label %116

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
  %43 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %116

44:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %112, %44
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %48 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %115

51:                                               ; preds = %45
  %52 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %53 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %59 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i64 @asn_compare_oid(i32* %57, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %116

68:                                               ; preds = %51
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0), align 8
  %70 = load i64, i64* @SNMP_V1, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %74 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SNMP_SYNTAX_NOSUCHOBJECT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %72
  %83 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %84 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SNMP_SYNTAX_NOSUCHINSTANCE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82, %72
  store i32 0, i32* %3, align 4
  br label %116

93:                                               ; preds = %82, %68
  %94 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %95 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %102 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %100, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %116

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %45

115:                                              ; preds = %45
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %109, %92, %66, %42, %29, %22, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @asn_compare_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
