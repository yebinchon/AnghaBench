; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_usm_compare_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_usm_compare_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usm_user = type { i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usm_user*, %struct.usm_user*)* @usm_compare_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usm_compare_user(%struct.usm_user* %0, %struct.usm_user* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usm_user*, align 8
  %5 = alloca %struct.usm_user*, align 8
  %6 = alloca i64, align 8
  store %struct.usm_user* %0, %struct.usm_user** %4, align 8
  store %struct.usm_user* %1, %struct.usm_user** %5, align 8
  %7 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %8 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %11 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %139

15:                                               ; preds = %2
  %16 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %17 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %20 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %139

24:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %28 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %33 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %39 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %139

46:                                               ; preds = %31
  %47 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %48 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %54 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %139

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %25

65:                                               ; preds = %25
  %66 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %67 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i64 @strlen(i64* %69)
  %71 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %72 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = call i64 @strlen(i64* %74)
  %76 = icmp ult i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %139

78:                                               ; preds = %65
  %79 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %80 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = call i64 @strlen(i64* %82)
  %84 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %85 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = call i64 @strlen(i64* %87)
  %89 = icmp ugt i64 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %139

91:                                               ; preds = %78
  store i64 0, i64* %6, align 8
  br label %92

92:                                               ; preds = %135, %91
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %95 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = call i64 @strlen(i64* %97)
  %99 = icmp ult i64 %93, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %92
  %101 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %102 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %109 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %107, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  store i32 -1, i32* %3, align 4
  br label %139

117:                                              ; preds = %100
  %118 = load %struct.usm_user*, %struct.usm_user** %4, align 8
  %119 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.usm_user*, %struct.usm_user** %5, align 8
  %126 = getelementptr inbounds %struct.usm_user, %struct.usm_user* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %124, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %139

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %92

138:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %133, %116, %90, %77, %60, %45, %23, %14
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
