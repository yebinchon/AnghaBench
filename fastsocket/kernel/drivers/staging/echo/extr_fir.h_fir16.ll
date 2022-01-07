; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_fir.h_fir16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_fir.h_fir16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fir16_state_t = type { i32*, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fir16_state_t*, i8*)* @fir16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fir16(%struct.fir16_state_t* %0, i8* %1) #0 {
  %3 = alloca %struct.fir16_state_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fir16_state_t* %0, %struct.fir16_state_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %12 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %15 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %10, i32* %17, align 4
  %18 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %19 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %23 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %29 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %30 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %58, %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %40 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %47 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %45, %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %34

61:                                               ; preds = %34
  br label %62

62:                                               ; preds = %85, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %67 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %74 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %72, %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %6, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %90 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ule i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %95 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %98 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.fir16_state_t*, %struct.fir16_state_t** %3, align 8
  %101 = getelementptr inbounds %struct.fir16_state_t, %struct.fir16_state_t* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  ret i8* %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
