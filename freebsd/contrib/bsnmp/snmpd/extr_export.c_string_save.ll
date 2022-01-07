; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_string_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_string_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snmp_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@SNMP_ERR_BADVALUE = common dso_local global i32 0, align 4
@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_save(%struct.snmp_value* %0, %struct.snmp_context* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca %struct.snmp_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %6, align 8
  store %struct.snmp_context* %1, %struct.snmp_context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %14 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  store i32 %21, i32* %5, align 4
  br label %69

22:                                               ; preds = %12, %4
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %26 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %30 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i8* @malloc(i32 %34)
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  %37 = icmp eq i8* %35, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %40 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %9, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %45, i32* %5, align 4
  br label %69

46:                                               ; preds = %22
  %47 = load i8**, i8*** %9, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %50 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %55 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i8* %48, i32 %53, i32 %58)
  %60 = load i8**, i8*** %9, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %63 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %61, i64 %67
  store i8 0, i8* %68, align 1
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %46, %38, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
