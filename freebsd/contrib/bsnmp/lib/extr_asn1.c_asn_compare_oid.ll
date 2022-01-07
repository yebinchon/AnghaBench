; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_compare_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_compare_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_compare_oid(%struct.asn_oid* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %52, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %10 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ false, %7 ], [ %18, %13 ]
  br i1 %20, label %21, label %55

21:                                               ; preds = %19
  %22 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %23 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %29 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %74

36:                                               ; preds = %21
  %37 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %38 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %44 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %74

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %7

55:                                               ; preds = %19
  %56 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %57 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %60 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %66 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %69 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %63, %50, %35
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
