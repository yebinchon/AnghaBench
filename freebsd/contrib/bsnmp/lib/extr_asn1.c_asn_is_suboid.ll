; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_is_suboid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_is_suboid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_is_suboid(%struct.asn_oid* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %10 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %7

38:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
