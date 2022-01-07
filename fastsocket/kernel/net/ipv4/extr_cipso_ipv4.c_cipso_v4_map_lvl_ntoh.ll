; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_lvl_ntoh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_map_lvl_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cipso_v4_std_map_tbl* }
%struct.cipso_v4_std_map_tbl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64* }

@CIPSO_V4_INV_LVL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipso_v4_doi*, i64, i64*)* @cipso_v4_map_lvl_ntoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_map_lvl_ntoh(%struct.cipso_v4_doi* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cipso_v4_doi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.cipso_v4_std_map_tbl*, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %5, align 8
  %10 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %51 [
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %5, align 8
  %17 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.cipso_v4_std_map_tbl*, %struct.cipso_v4_std_map_tbl** %18, align 8
  store %struct.cipso_v4_std_map_tbl* %19, %struct.cipso_v4_std_map_tbl** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.cipso_v4_std_map_tbl*, %struct.cipso_v4_std_map_tbl** %8, align 8
  %22 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, %struct.cipso_v4_std_map_tbl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %15
  %27 = load %struct.cipso_v4_std_map_tbl*, %struct.cipso_v4_std_map_tbl** %8, align 8
  %28 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, %struct.cipso_v4_std_map_tbl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CIPSO_V4_INV_LVL, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %5, align 8
  %38 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.cipso_v4_std_map_tbl*, %struct.cipso_v4_std_map_tbl** %39, align 8
  %41 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, %struct.cipso_v4_std_map_tbl* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %4, align 4
  br label %54

48:                                               ; preds = %26, %15
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %48, %36, %12
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
