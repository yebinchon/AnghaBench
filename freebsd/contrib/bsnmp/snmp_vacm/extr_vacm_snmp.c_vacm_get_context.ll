; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_context = type { i32 }
%struct.asn_oid = type { i32* }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vacm_context* (%struct.asn_oid*, i64)* @vacm_get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vacm_context* @vacm_get_context(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.vacm_context*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vacm_context*, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %17 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.vacm_context* null, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %53

25:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @SNMP_INDEX(i64 %26, i32 1)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = bitcast i8* %15 to i8**
  %32 = call i64 @index_decode(%struct.asn_oid* %28, i64 %29, i64 %30, i8** %31, i64* %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store %struct.vacm_context* null, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %53

35:                                               ; preds = %25
  %36 = call %struct.vacm_context* (...) @vacm_first_context()
  store %struct.vacm_context* %36, %struct.vacm_context** %10, align 8
  br label %37

37:                                               ; preds = %49, %35
  %38 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %39 = icmp ne %struct.vacm_context* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %42 = getelementptr inbounds %struct.vacm_context, %struct.vacm_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i8* %15, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  store %struct.vacm_context* %47, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %51 = call %struct.vacm_context* @vacm_next_context(%struct.vacm_context* %50)
  store %struct.vacm_context* %51, %struct.vacm_context** %10, align 8
  br label %37

52:                                               ; preds = %37
  store %struct.vacm_context* null, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %46, %34, %24
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load %struct.vacm_context*, %struct.vacm_context** %3, align 8
  ret %struct.vacm_context* %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SNMP_INDEX(i64, i32) #2

declare dso_local i64 @index_decode(%struct.asn_oid*, i64, i64, i8**, i64*) #2

declare dso_local %struct.vacm_context* @vacm_first_context(...) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local %struct.vacm_context* @vacm_next_context(%struct.vacm_context*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
