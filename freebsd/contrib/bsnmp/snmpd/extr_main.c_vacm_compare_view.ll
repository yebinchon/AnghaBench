; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_compare_view.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_compare_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_view = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vacm_view*, %struct.vacm_view*)* @vacm_compare_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacm_compare_view(%struct.vacm_view* %0, %struct.vacm_view* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vacm_view*, align 8
  %5 = alloca %struct.vacm_view*, align 8
  %6 = alloca i64, align 8
  store %struct.vacm_view* %0, %struct.vacm_view** %4, align 8
  store %struct.vacm_view* %1, %struct.vacm_view** %5, align 8
  %7 = load %struct.vacm_view*, %struct.vacm_view** %4, align 8
  %8 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = call i64 @strlen(i64* %9)
  %11 = load %struct.vacm_view*, %struct.vacm_view** %5, align 8
  %12 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = call i64 @strlen(i64* %13)
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.vacm_view*, %struct.vacm_view** %4, align 8
  %19 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i64 @strlen(i64* %20)
  %22 = load %struct.vacm_view*, %struct.vacm_view** %5, align 8
  %23 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i64 @strlen(i64* %24)
  %26 = icmp ugt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %76

28:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.vacm_view*, %struct.vacm_view** %4, align 8
  %32 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @strlen(i64* %33)
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %29
  %37 = load %struct.vacm_view*, %struct.vacm_view** %4, align 8
  %38 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vacm_view*, %struct.vacm_view** %5, align 8
  %44 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %76

51:                                               ; preds = %36
  %52 = load %struct.vacm_view*, %struct.vacm_view** %4, align 8
  %53 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vacm_view*, %struct.vacm_view** %5, align 8
  %59 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %76

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %29

70:                                               ; preds = %29
  %71 = load %struct.vacm_view*, %struct.vacm_view** %4, align 8
  %72 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %71, i32 0, i32 1
  %73 = load %struct.vacm_view*, %struct.vacm_view** %5, align 8
  %74 = getelementptr inbounds %struct.vacm_view, %struct.vacm_view* %73, i32 0, i32 1
  %75 = call i32 @asn_compare_oid(i32* %72, i32* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %65, %50, %27, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @asn_compare_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
