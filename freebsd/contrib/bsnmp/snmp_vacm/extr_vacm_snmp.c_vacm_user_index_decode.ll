; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_user_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_user_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64* }

@SNMP_ADM_STR32_SIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i64*, i8*)* @vacm_user_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacm_user_index_decode(%struct.asn_oid* %0, i64 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %12 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %13, i64 %14
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNMP_ADM_STR32_SIZ, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %59

28:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %32 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %30, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %40 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %42, %43
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %38
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %29

55:                                               ; preds = %29
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
