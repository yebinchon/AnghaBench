; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_index_append_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_index_append_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_append_off(%struct.asn_oid* %0, i64 %1, %struct.asn_oid* %2, i64 %3) #0 {
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %12 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  %15 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %38, %4
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %26 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %32 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %18

41:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
