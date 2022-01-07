; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_strftime.c_ftime_tm_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_strftime.c_ftime_tm_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@TM_YEAR_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, %struct.tm*)* @tm_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm_diff(%struct.tm* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 2
  %18 = load i32, i32* @TM_YEAR_BASE, align 4
  %19 = ashr i32 %18, 2
  %20 = add nsw i32 %17, %19
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = sub nsw i32 %20, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.tm*, %struct.tm** %4, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 2
  %33 = load i32, i32* @TM_YEAR_BASE, align 4
  %34 = ashr i32 %33, 2
  %35 = add nsw i32 %32, %34
  %36 = load %struct.tm*, %struct.tm** %4, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sub nsw i32 %35, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, 25
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 25
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = sub nsw i32 %45, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sdiv i32 %51, 25
  %53 = load i32, i32* %6, align 4
  %54 = srem i32 %53, 25
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = sub nsw i32 %52, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 2
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.tm*, %struct.tm** %3, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tm*, %struct.tm** %4, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 365, %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.tm*, %struct.tm** %3, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tm*, %struct.tm** %4, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = add nsw i32 %83, %90
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 24, %92
  %94 = load %struct.tm*, %struct.tm** %3, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tm*, %struct.tm** %4, align 8
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = add nsw i32 %93, %100
  %102 = mul nsw i32 60, %101
  %103 = load %struct.tm*, %struct.tm** %3, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tm*, %struct.tm** %4, align 8
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  %110 = add nsw i32 %102, %109
  %111 = mul nsw i32 60, %110
  %112 = load %struct.tm*, %struct.tm** %3, align 8
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tm*, %struct.tm** %4, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = add nsw i32 %111, %118
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
