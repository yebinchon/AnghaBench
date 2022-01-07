; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_viewindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_viewindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }
%struct.vacm_view = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, %struct.vacm_view*)* @vacm_append_viewindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vacm_append_viewindex(%struct.asn_oid* %0, i64 %1, %struct.vacm_view* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vacm_view*, align 8
  %7 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vacm_view* %2, %struct.vacm_view** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %10 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @strlen(i32* %11)
  %13 = sext i32 %12 to i64
  %14 = add i64 %8, %13
  %15 = add i64 %14, 1
  %16 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %17 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %19 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @strlen(i32* %20)
  %22 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %23 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  store i64 1, i64* %7, align 8
  br label %27

27:                                               ; preds = %50, %3
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %30 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @strlen(i32* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp ule i64 %28, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %37 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %44 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %35
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %55 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @strlen(i32* %56)
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %63 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %67 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %72 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %76 = load %struct.vacm_view*, %struct.vacm_view** %6, align 8
  %77 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %76, i32 0, i32 1
  %78 = call i32 @asn_append_oid(%struct.asn_oid* %75, %struct.TYPE_2__* %77)
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @asn_append_oid(%struct.asn_oid*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
