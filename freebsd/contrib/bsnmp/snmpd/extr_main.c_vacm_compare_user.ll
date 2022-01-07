; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_compare_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_compare_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_user = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vacm_user*, %struct.vacm_user*)* @vacm_compare_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacm_compare_user(%struct.vacm_user* %0, %struct.vacm_user* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vacm_user*, align 8
  %5 = alloca %struct.vacm_user*, align 8
  %6 = alloca i64, align 8
  store %struct.vacm_user* %0, %struct.vacm_user** %4, align 8
  store %struct.vacm_user* %1, %struct.vacm_user** %5, align 8
  %7 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %8 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vacm_user*, %struct.vacm_user** %5, align 8
  %11 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %17 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vacm_user*, %struct.vacm_user** %5, align 8
  %20 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %89

24:                                               ; preds = %15
  %25 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %26 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = call i64 @strlen(i64* %27)
  %29 = load %struct.vacm_user*, %struct.vacm_user** %5, align 8
  %30 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = call i64 @strlen(i64* %31)
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %89

35:                                               ; preds = %24
  %36 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %37 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = call i64 @strlen(i64* %38)
  %40 = load %struct.vacm_user*, %struct.vacm_user** %5, align 8
  %41 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = call i64 @strlen(i64* %42)
  %44 = icmp ugt i64 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %89

46:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %50 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i64 @strlen(i64* %51)
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %56 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vacm_user*, %struct.vacm_user** %5, align 8
  %62 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %60, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %89

69:                                               ; preds = %54
  %70 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %71 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.vacm_user*, %struct.vacm_user** %5, align 8
  %77 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %89

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %47

88:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %83, %68, %45, %34, %23, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
