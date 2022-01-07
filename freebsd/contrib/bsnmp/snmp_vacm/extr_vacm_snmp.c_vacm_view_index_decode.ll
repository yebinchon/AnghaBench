; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_view_index_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_view_index_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64*, i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i64 0, align 8
@ASN_MAXOIDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, i8*, %struct.asn_oid*)* @vacm_view_index_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacm_view_index_decode(%struct.asn_oid* %0, i64 %1, i8* %2, %struct.asn_oid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.asn_oid*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.asn_oid* %3, %struct.asn_oid** %9, align 8
  %12 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %13 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNMP_ADM_STR32_SIZ, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %96

21:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %23, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %22
  %32 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %33 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %31
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %22

48:                                               ; preds = %22
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %54 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %52, %58
  %60 = add i64 %59, 1
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %63 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.asn_oid*, %struct.asn_oid** %9, align 8
  %71 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @ASN_MAXOIDLEN, align 4
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %96

75:                                               ; preds = %48
  %76 = load %struct.asn_oid*, %struct.asn_oid** %9, align 8
  %77 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = bitcast i64* %79 to i32*
  %81 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %82 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = bitcast i64* %87 to i32*
  %89 = load %struct.asn_oid*, %struct.asn_oid** %9, align 8
  %90 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32* %80, i32* %88, i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %75, %74, %20
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
