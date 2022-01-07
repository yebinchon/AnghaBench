; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_gxt4500.c_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_gxt4500.c_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gxt4500_par = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gxt4500_par*)* @calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll(i32 %0, %struct.gxt4500_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gxt4500_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.gxt4500_par* %1, %struct.gxt4500_par** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 3333
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 200000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 -1, i32* %3, align 4
  br label %118

21:                                               ; preds = %17
  store i32 1000000, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %110, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 8
  br i1 %24, label %25, label %113

25:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %106, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %109

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @DIV_ROUND_UP(i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 1666
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 2857
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %30
  br label %106

43:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %102, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 64
  br i1 %46, label %47, label %105

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %50 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sgt i32 %53, 500000
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %105

56:                                               ; preds = %47
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 160
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %56
  br label %102

68:                                               ; preds = %64
  %69 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %70 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %68
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %90 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %93 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %96 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %99 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %87, %83, %68
  br label %102

102:                                              ; preds = %101, %67
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %44

105:                                              ; preds = %55, %44
  br label %106

106:                                              ; preds = %105, %42
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %26

109:                                              ; preds = %26
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %22

113:                                              ; preds = %22
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 1000000
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  br label %118

117:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %116, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
