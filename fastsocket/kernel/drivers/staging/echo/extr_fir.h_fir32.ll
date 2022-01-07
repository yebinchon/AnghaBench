; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_fir.h_fir32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_fir.h_fir32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fir32_state_t = type { i32*, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fir32_state_t*, i32)* @fir32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fir32(%struct.fir32_state_t* %0, i32 %1) #0 {
  %3 = alloca %struct.fir32_state_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fir32_state_t* %0, %struct.fir32_state_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %11 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %14 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %9, i32* %16, align 4
  %17 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %18 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %22 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %26 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %27 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %54, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %36 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %43 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %41, %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %30

57:                                               ; preds = %30
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %63 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %70 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %68, %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %5, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %86 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ule i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %91 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %95 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.fir32_state_t*, %struct.fir32_state_t** %3, align 8
  %98 = getelementptr inbounds %struct.fir32_state_t, %struct.fir32_state_t* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 15
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
