; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_choose_best_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_choose_best_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, i64, i32 }

@SYMBOL_A = common dso_local global i32 0, align 4
@SYMBOL_B = common dso_local global i32 0, align 4
@STB_WEAK = common dso_local global i64 0, align 8
@STB_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.symbol*)* @choose_best_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_best_symbol(%struct.symbol* %0, %struct.symbol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  %8 = load %struct.symbol*, %struct.symbol** %4, align 8
  %9 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.symbol*, %struct.symbol** %5, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.symbol*, %struct.symbol** %5, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @SYMBOL_A, align 4
  store i32 %28, i32* %3, align 4
  br label %129

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @SYMBOL_B, align 4
  store i32 %36, i32* %3, align 4
  br label %129

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.symbol*, %struct.symbol** %4, align 8
  %40 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STB_WEAK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load %struct.symbol*, %struct.symbol** %5, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @STB_WEAK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @SYMBOL_A, align 4
  store i32 %57, i32* %3, align 4
  br label %129

58:                                               ; preds = %53, %38
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @SYMBOL_B, align 4
  store i32 %65, i32* %3, align 4
  br label %129

66:                                               ; preds = %61, %58
  %67 = load %struct.symbol*, %struct.symbol** %4, align 8
  %68 = getelementptr inbounds %struct.symbol, %struct.symbol* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STB_GLOBAL, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load %struct.symbol*, %struct.symbol** %5, align 8
  %74 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STB_GLOBAL, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @SYMBOL_A, align 4
  store i32 %85, i32* %3, align 4
  br label %129

86:                                               ; preds = %81, %66
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @SYMBOL_B, align 4
  store i32 %93, i32* %3, align 4
  br label %129

94:                                               ; preds = %89, %86
  %95 = load %struct.symbol*, %struct.symbol** %4, align 8
  %96 = getelementptr inbounds %struct.symbol, %struct.symbol* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @prefix_underscores_count(i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load %struct.symbol*, %struct.symbol** %5, align 8
  %100 = getelementptr inbounds %struct.symbol, %struct.symbol* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @prefix_underscores_count(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* @SYMBOL_A, align 4
  store i32 %107, i32* %3, align 4
  br label %129

108:                                              ; preds = %94
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @SYMBOL_B, align 4
  store i32 %113, i32* %3, align 4
  br label %129

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.symbol*, %struct.symbol** %4, align 8
  %117 = getelementptr inbounds %struct.symbol, %struct.symbol* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @strlen(i32 %118)
  %120 = load %struct.symbol*, %struct.symbol** %5, align 8
  %121 = getelementptr inbounds %struct.symbol, %struct.symbol* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @strlen(i32 %122)
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* @SYMBOL_A, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %115
  %128 = load i32, i32* @SYMBOL_B, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %125, %112, %106, %92, %84, %64, %56, %35, %27
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @prefix_underscores_count(i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
