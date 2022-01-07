; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_access_rule_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_access_rule_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }
%struct.vacm_access = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, %struct.vacm_access*)* @vacm_append_access_rule_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vacm_append_access_rule_index(%struct.asn_oid* %0, i64 %1, %struct.vacm_access* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vacm_access*, align 8
  %7 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vacm_access* %2, %struct.vacm_access** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %10 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @strlen(i32* %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 %8, %15
  %17 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %18 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @strlen(i32* %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 %16, %21
  %23 = add i64 %22, 4
  %24 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %27 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @strlen(i32* %30)
  %32 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %33 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  store i64 1, i64* %7, align 8
  br label %37

37:                                               ; preds = %64, %3
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %40 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @strlen(i32* %43)
  %45 = sext i32 %44 to i64
  %46 = icmp ule i64 %38, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %37
  %48 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %49 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %58 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %47
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %37

67:                                               ; preds = %37
  %68 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %69 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @strlen(i32* %72)
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %5, align 8
  %78 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %79 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @strlen(i32* %80)
  %82 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %83 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  store i64 1, i64* %7, align 8
  br label %87

87:                                               ; preds = %110, %67
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %90 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @strlen(i32* %91)
  %93 = sext i32 %92 to i64
  %94 = icmp ule i64 %88, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %97 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %104 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %106, %107
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %102, i32* %109, align 4
  br label %110

110:                                              ; preds = %95
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %87

113:                                              ; preds = %87
  %114 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %115 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @strlen(i32* %116)
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %5, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %5, align 8
  %122 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %123 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %126 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  %130 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %124, i32* %130, align 4
  %131 = load %struct.vacm_access*, %struct.vacm_access** %6, align 8
  %132 = getelementptr inbounds %struct.vacm_access, %struct.vacm_access* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %135 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32 %133, i32* %138, align 4
  ret void
}

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
