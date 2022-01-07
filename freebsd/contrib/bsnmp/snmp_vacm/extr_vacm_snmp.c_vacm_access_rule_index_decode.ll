; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_access_rule_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_access_rule_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64* }

@SNMP_ADM_STR32_SIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i8*, i8*, i8*, i8*)* @vacm_access_rule_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacm_access_rule_index_decode(%struct.asn_oid* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.asn_oid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNMP_ADM_STR32_SIZ, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %122

24:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i64, i64* %14, align 8
  %27 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %28 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %25
  %35 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %36 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %38, %39
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %44, i8* %47, align 1
  br label %48

48:                                               ; preds = %34
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %14, align 8
  br label %25

51:                                               ; preds = %25
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = add nsw i64 %56, 1
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %61 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SNMP_ADM_STR32_SIZ, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %122

69:                                               ; preds = %51
  store i64 0, i64* %14, align 8
  br label %70

70:                                               ; preds = %93, %69
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %73 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %71, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %70
  %80 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %81 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %83, %84
  %86 = add i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i8
  %90 = load i8*, i8** %11, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %92, align 1
  br label %93

93:                                               ; preds = %79
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %14, align 8
  br label %70

96:                                               ; preds = %70
  %97 = load i8*, i8** %11, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %11, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = add nsw i64 %101, 1
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %106 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  %110 = getelementptr inbounds i64, i64* %107, i64 %108
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i8
  %113 = load i8*, i8** %12, align 8
  store i8 %112, i8* %113, align 1
  %114 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %115 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i8
  %121 = load i8*, i8** %13, align 8
  store i8 %120, i8* %121, align 1
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %96, %68, %23
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
