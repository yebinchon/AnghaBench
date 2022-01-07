; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_index_compare_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_index_compare_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_compare_off(%struct.asn_oid* %0, i64 %1, %struct.asn_oid* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn_oid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  store i64 %11, i64* %10, align 8
  br label %12

12:                                               ; preds = %63, %4
  %13 = load i64, i64* %10, align 8
  %14 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %15 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %22, %23
  %25 = icmp ult i64 %19, %24
  br label %26

26:                                               ; preds = %18, %12
  %27 = phi i1 [ false, %12 ], [ %25, %18 ]
  br i1 %27, label %28, label %66

28:                                               ; preds = %26
  %29 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %32, %33
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %38 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %89

45:                                               ; preds = %28
  %46 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %49, %50
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %55 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %89

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %12

66:                                               ; preds = %26
  %67 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %68 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %69, %70
  %72 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %73 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %89

77:                                               ; preds = %66
  %78 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %79 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub i64 %80, %81
  %83 = load %struct.asn_oid*, %struct.asn_oid** %8, align 8
  %84 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %89

88:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %87, %76, %61, %44
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
