; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_alpha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.illinois = type { i32, i64, i32 }

@ALPHA_MAX = common dso_local global i32 0, align 4
@theta = common dso_local global i64 0, align 8
@ALPHA_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.illinois*, i32, i32)* @alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha(%struct.illinois* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.illinois*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.illinois* %0, %struct.illinois** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sdiv i32 %9, 100
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.illinois*, %struct.illinois** %5, align 8
  %16 = getelementptr inbounds %struct.illinois, %struct.illinois* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ALPHA_MAX, align 4
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %14
  %22 = load %struct.illinois*, %struct.illinois** %5, align 8
  %23 = getelementptr inbounds %struct.illinois, %struct.illinois* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* @theta, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.illinois*, %struct.illinois** %5, align 8
  %30 = getelementptr inbounds %struct.illinois, %struct.illinois* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  br label %60

32:                                               ; preds = %21
  %33 = load %struct.illinois*, %struct.illinois** %5, align 8
  %34 = getelementptr inbounds %struct.illinois, %struct.illinois* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.illinois*, %struct.illinois** %5, align 8
  %36 = getelementptr inbounds %struct.illinois, %struct.illinois* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @ALPHA_MAX, align 4
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %3
  %39 = load %struct.illinois*, %struct.illinois** %5, align 8
  %40 = getelementptr inbounds %struct.illinois, %struct.illinois* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ALPHA_MAX, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ALPHA_MAX, align 4
  %53 = load i32, i32* @ALPHA_MIN, align 4
  %54 = sub nsw i32 %52, %53
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* @ALPHA_MIN, align 4
  %57 = sdiv i32 %55, %56
  %58 = add nsw i32 %50, %57
  %59 = sdiv i32 %49, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %38, %32, %28, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
