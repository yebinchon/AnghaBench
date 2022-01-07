; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_info = type { i64*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_info*, i64)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(%struct.dom_info* %0, i64 %1) #0 {
  %3 = alloca %struct.dom_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dom_info* %0, %struct.dom_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %7 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %13 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %2
  %20 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %21 = load i64, i64* %5, align 8
  call void @compress(%struct.dom_info* %20, i64 %21)
  %22 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %23 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %26 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %24, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %34 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %37 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %35, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %32, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %19
  %46 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %47 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %53 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  br label %57

57:                                               ; preds = %45, %19
  %58 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %59 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %65 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  br label %69

69:                                               ; preds = %57, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
