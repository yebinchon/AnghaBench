; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_access_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_access_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_access = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.asn_oid = type { i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vacm_access* @vacm_get_access_rule(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.vacm_access*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vacm_access*, align 8
  %12 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @vacm_access_rule_index_decode(%struct.asn_oid* %20, i32 %21, i8* %16, i8* %19, i64* %6, i64* %7)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.vacm_access* null, %struct.vacm_access** %3, align 8
  store i32 1, i32* %12, align 4
  br label %63

25:                                               ; preds = %2
  %26 = call %struct.vacm_access* (...) @vacm_first_access_rule()
  store %struct.vacm_access* %26, %struct.vacm_access** %11, align 8
  br label %27

27:                                               ; preds = %59, %25
  %28 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  %29 = icmp ne %struct.vacm_access* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  %32 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i8* %16, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  %40 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strcmp(i8* %19, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  %47 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  %53 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  store %struct.vacm_access* %57, %struct.vacm_access** %3, align 8
  store i32 1, i32* %12, align 4
  br label %63

58:                                               ; preds = %50, %44, %38, %30
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.vacm_access*, %struct.vacm_access** %11, align 8
  %61 = call %struct.vacm_access* @vacm_next_access_rule(%struct.vacm_access* %60)
  store %struct.vacm_access* %61, %struct.vacm_access** %11, align 8
  br label %27

62:                                               ; preds = %27
  store %struct.vacm_access* null, %struct.vacm_access** %3, align 8
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %56, %24
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load %struct.vacm_access*, %struct.vacm_access** %3, align 8
  ret %struct.vacm_access* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vacm_access_rule_index_decode(%struct.asn_oid*, i32, i8*, i8*, i64*, i64*) #2

declare dso_local %struct.vacm_access* @vacm_first_access_rule(...) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local %struct.vacm_access* @vacm_next_access_rule(%struct.vacm_access*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
