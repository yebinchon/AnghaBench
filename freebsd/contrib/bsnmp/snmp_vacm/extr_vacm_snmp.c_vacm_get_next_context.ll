; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_next_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_next_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_context = type { i32 }
%struct.asn_oid = type { i64, i32* }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vacm_context* (%struct.asn_oid*, i64)* @vacm_get_next_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vacm_context* @vacm_get_next_context(%struct.asn_oid* %0, i64 %1) #0 {
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
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call %struct.vacm_context* (...) @vacm_first_context()
  store %struct.vacm_context* %23, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %26 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store %struct.vacm_context* null, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %63

34:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @SNMP_INDEX(i64 %35, i32 1)
  store i64 %36, i64* %9, align 8
  %37 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = bitcast i8* %15 to i8**
  %41 = call i64 @index_decode(%struct.asn_oid* %37, i64 %38, i64 %39, i8** %40, i64* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store %struct.vacm_context* null, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %63

44:                                               ; preds = %34
  %45 = call %struct.vacm_context* (...) @vacm_first_context()
  store %struct.vacm_context* %45, %struct.vacm_context** %10, align 8
  br label %46

46:                                               ; preds = %59, %44
  %47 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %48 = icmp ne %struct.vacm_context* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %51 = getelementptr inbounds %struct.vacm_context, %struct.vacm_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i8* %15, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %57 = call %struct.vacm_context* @vacm_next_context(%struct.vacm_context* %56)
  store %struct.vacm_context* %57, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %63

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.vacm_context*, %struct.vacm_context** %10, align 8
  %61 = call %struct.vacm_context* @vacm_next_context(%struct.vacm_context* %60)
  store %struct.vacm_context* %61, %struct.vacm_context** %10, align 8
  br label %46

62:                                               ; preds = %46
  store %struct.vacm_context* null, %struct.vacm_context** %3, align 8
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %55, %43, %33, %22
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load %struct.vacm_context*, %struct.vacm_context** %3, align 8
  ret %struct.vacm_context* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vacm_context* @vacm_first_context(...) #2

declare dso_local i64 @SNMP_INDEX(i64, i32) #2

declare dso_local i64 @index_decode(%struct.asn_oid*, i64, i64, i8**, i64*) #2

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
