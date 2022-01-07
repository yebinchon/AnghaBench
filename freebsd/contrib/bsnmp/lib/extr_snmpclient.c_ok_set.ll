; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_ok_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_ok_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"SNMP SET: response has wrong version\00", align 1
@SNMP_ERR_NOSUCHNAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"SNMP SET: error %d\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"SNMP SET: bad number of bindings in response\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"SNMP SET: wrong OID in response to SET\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"SNMP SET: bad syntax in response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*, %struct.snmp_pdu*)* @ok_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_set(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
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
  br label %95

16:                                               ; preds = %2
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNMP_ERR_NOSUCHNAME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %24 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32 0, i32* %3, align 4
  br label %95

27:                                               ; preds = %16
  %28 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %29 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNMP_ERR_NOERROR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %35 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  store i32 -1, i32* %3, align 4
  br label %95

38:                                               ; preds = %27
  %39 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %40 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %95

48:                                               ; preds = %38
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %91, %48
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %52 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %49
  %56 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %63 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i64 @asn_compare_oid(i32* %61, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %95

72:                                               ; preds = %55
  %73 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %74 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %81 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %79, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %95

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %49

94:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %88, %70, %46, %33, %22, %14
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @asn_compare_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
