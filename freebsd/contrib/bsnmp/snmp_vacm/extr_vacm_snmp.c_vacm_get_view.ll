; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_view.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_view = type { i32, i32 }
%struct.asn_oid = type { i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vacm_view* @vacm_get_view(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.vacm_view*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn_oid, align 4
  %9 = alloca %struct.vacm_view*, align 8
  %10 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @vacm_view_index_decode(%struct.asn_oid* %15, i32 %16, i8* %14, %struct.asn_oid* %8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.vacm_view* null, %struct.vacm_view** %3, align 8
  store i32 1, i32* %10, align 4
  br label %43

20:                                               ; preds = %2
  %21 = call %struct.vacm_view* (...) @vacm_first_view()
  store %struct.vacm_view* %21, %struct.vacm_view** %9, align 8
  br label %22

22:                                               ; preds = %39, %20
  %23 = load %struct.vacm_view*, %struct.vacm_view** %9, align 8
  %24 = icmp ne %struct.vacm_view* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.vacm_view*, %struct.vacm_view** %9, align 8
  %27 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i8* %14, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.vacm_view*, %struct.vacm_view** %9, align 8
  %33 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %32, i32 0, i32 0
  %34 = call i64 @asn_compare_oid(%struct.asn_oid* %8, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.vacm_view*, %struct.vacm_view** %9, align 8
  store %struct.vacm_view* %37, %struct.vacm_view** %3, align 8
  store i32 1, i32* %10, align 4
  br label %43

38:                                               ; preds = %31, %25
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.vacm_view*, %struct.vacm_view** %9, align 8
  %41 = call %struct.vacm_view* @vacm_next_view(%struct.vacm_view* %40)
  store %struct.vacm_view* %41, %struct.vacm_view** %9, align 8
  br label %22

42:                                               ; preds = %22
  store %struct.vacm_view* null, %struct.vacm_view** %3, align 8
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %36, %19
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load %struct.vacm_view*, %struct.vacm_view** %3, align 8
  ret %struct.vacm_view* %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vacm_view_index_decode(%struct.asn_oid*, i32, i8*, %struct.asn_oid*) #2

declare dso_local %struct.vacm_view* @vacm_first_view(...) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @asn_compare_oid(%struct.asn_oid*, i32*) #2

declare dso_local %struct.vacm_view* @vacm_next_view(%struct.vacm_view*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
