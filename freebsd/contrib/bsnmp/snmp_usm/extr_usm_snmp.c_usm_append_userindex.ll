; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_append_userindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_append_userindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.usm_user = type { i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, %struct.usm_user*)* @usm_append_userindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usm_append_userindex(%struct.asn_oid* %0, i64 %1, %struct.usm_user* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usm_user*, align 8
  %7 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.usm_user* %2, %struct.usm_user** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %10 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  %13 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %14 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @strlen(i32* %16)
  %18 = add i64 %12, %17
  %19 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %22 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %22, align 8
  %25 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %26 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %29 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %27, i64* %32, align 8
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %58, %3
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %37 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %43 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %51 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = getelementptr inbounds i64, i64* %52, i64 %56
  store i64 %49, i64* %57, align 8
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %33

61:                                               ; preds = %33
  %62 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %63 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %5, align 8
  %68 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %69 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @strlen(i32* %71)
  %73 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %74 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %72, i64* %77, align 8
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %107, %61
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %82 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ule i64 %80, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %78
  %89 = load %struct.usm_user*, %struct.usm_user** %6, align 8
  %90 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %100 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %102, %104
  %106 = getelementptr inbounds i64, i64* %101, i64 %105
  store i64 %98, i64* %106, align 8
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %78

110:                                              ; preds = %78
  ret void
}

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
