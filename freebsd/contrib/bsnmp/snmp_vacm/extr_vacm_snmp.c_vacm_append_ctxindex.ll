; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_ctxindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_append_ctxindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.vacm_context = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, %struct.vacm_context*)* @vacm_append_ctxindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vacm_append_ctxindex(%struct.asn_oid* %0, i64 %1, %struct.vacm_context* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vacm_context*, align 8
  %7 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vacm_context* %2, %struct.vacm_context** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.vacm_context*, %struct.vacm_context** %6, align 8
  %10 = getelementptr inbounds %struct.vacm_context, %struct.vacm_context* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i64 @strlen(i64* %11)
  %13 = add i64 %8, %12
  %14 = add i64 %13, 1
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.vacm_context*, %struct.vacm_context** %6, align 8
  %18 = getelementptr inbounds %struct.vacm_context, %struct.vacm_context* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = call i64 @strlen(i64* %19)
  %21 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %22 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %20, i64* %25, align 8
  store i64 1, i64* %7, align 8
  br label %26

26:                                               ; preds = %48, %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.vacm_context*, %struct.vacm_context** %6, align 8
  %29 = getelementptr inbounds %struct.vacm_context, %struct.vacm_context* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @strlen(i64* %30)
  %32 = icmp ule i64 %27, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.vacm_context*, %struct.vacm_context** %6, align 8
  %35 = getelementptr inbounds %struct.vacm_context, %struct.vacm_context* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %42 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 %40, i64* %47, align 8
  br label %48

48:                                               ; preds = %33
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %26

51:                                               ; preds = %26
  ret void
}

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
