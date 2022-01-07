; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_pdu_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_pdu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_7__*, %struct.TYPE_7__, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.snmp_pdu = type { i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__, %struct.TYPE_6__, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@SNMP_PDU_SET = common dso_local global i64 0, align 8
@snmp_client = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_SECMODEL_USM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unknown security model\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_pdu_create(%struct.snmp_pdu* %0, i64 %1) #0 {
  %3 = alloca %struct.snmp_pdu*, align 8
  %4 = alloca i64, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %6 = call i32 @memset(%struct.snmp_pdu* %5, i32 0, i32 96)
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SNMP_PDU_SET, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %12 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 9), align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 8), align 8
  %21 = call i32 @strlcpy(i32 %19, i32 %20, i32 4)
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 12
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 0), align 8
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %30 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %29, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %32 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %31, i32 0, i32 10
  store i64 0, i64* %32, align 8
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 0), align 8
  %36 = load i64, i64* @SNMP_V3, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %96

39:                                               ; preds = %22
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 7), align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 7), align 8
  %42 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %43 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %42, i32 0, i32 8
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4, i32 2), align 8
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %49 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1), align 8
  %51 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %52 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 1), align 8
  %54 = load i64, i64* @SNMP_SECMODEL_USM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %39
  %57 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %58 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %57, i32 0, i32 6
  %59 = call i32 @memcpy(%struct.TYPE_6__* %58, %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4), i32 4)
  %60 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %61 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %60, i32 0, i32 5
  %62 = call i32 @memcpy(%struct.TYPE_6__* %61, %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 6), i32 4)
  %63 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %64 = call i32 @snmp_pdu_init_secparams(%struct.snmp_pdu* %63)
  br label %67

65:                                               ; preds = %39
  %66 = call i32 @seterr(%struct.TYPE_5__* @snmp_client, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %56
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 2), align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %72 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 5), align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 2), align 8
  %76 = call i32 @memcpy(%struct.TYPE_6__* %73, %struct.TYPE_7__* %74, i32 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 2), align 8
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %79 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %90

80:                                               ; preds = %67
  %81 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %82 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4, i32 1), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4, i32 0), align 8
  %86 = call i32 @memcpy(%struct.TYPE_6__* %83, %struct.TYPE_7__* %84, i32 %85)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 4, i32 0), align 8
  %88 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %89 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %80, %70
  %91 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %92 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snmp_client, i32 0, i32 3), align 4
  %95 = call i32 @strlcpy(i32 %93, i32 %94, i32 4)
  br label %96

96:                                               ; preds = %90, %38
  ret void
}

declare dso_local i32 @memset(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @snmp_pdu_init_secparams(%struct.snmp_pdu*) #1

declare dso_local i32 @seterr(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
