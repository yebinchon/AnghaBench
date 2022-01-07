; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_userindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_userindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.vacm_user = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, %struct.vacm_user*)* @vacm_append_userindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vacm_append_userindex(%struct.asn_oid* %0, i64 %1, %struct.vacm_user* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vacm_user*, align 8
  %7 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vacm_user* %2, %struct.vacm_user** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.vacm_user*, %struct.vacm_user** %6, align 8
  %10 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i64 @strlen(i64* %11)
  %13 = add i64 %8, %12
  %14 = add i64 %13, 2
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.vacm_user*, %struct.vacm_user** %6, align 8
  %18 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %19, i64* %25, align 8
  %26 = load %struct.vacm_user*, %struct.vacm_user** %6, align 8
  %27 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = call i64 @strlen(i64* %28)
  %30 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %31 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %29, i64* %34, align 8
  store i64 1, i64* %7, align 8
  br label %35

35:                                               ; preds = %57, %3
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.vacm_user*, %struct.vacm_user** %6, align 8
  %38 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i64 @strlen(i64* %39)
  %41 = icmp ule i64 %36, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load %struct.vacm_user*, %struct.vacm_user** %6, align 8
  %44 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %51 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %53, %54
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 %49, i64* %56, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %35

60:                                               ; preds = %35
  ret void
}

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
