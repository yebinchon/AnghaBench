; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_user_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_user_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64* }

@SNMP_ENGINE_ID_SIZ = common dso_local global i64 0, align 8
@SNMP_ADM_STR32_SIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i64*, i64*, i8*)* @usm_user_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usm_user_index_decode(%struct.asn_oid* %0, i64 %1, i64* %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNMP_ENGINE_ID_SIZ, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %100

24:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %28 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %36 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %38, %39
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %25

50:                                               ; preds = %25
  %51 = load i64, i64* %12, align 8
  %52 = load i64*, i64** %10, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %55 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %53, %59
  %61 = add i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %64 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* @SNMP_ADM_STR32_SIZ, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %100

73:                                               ; preds = %50
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %80 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %83, %84
  %86 = add i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i8
  %90 = load i8*, i8** %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %92, align 1
  br label %93

93:                                               ; preds = %78
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %74

96:                                               ; preds = %74
  %97 = load i8*, i8** %11, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 0, i8* %99, align 1
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %72, %23
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
