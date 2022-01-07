; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_arange_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_arange_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arange = type { i64, i64, %struct.arange* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.arange*, i64, i64)* @arange_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arange_add(i32* %0, %struct.arange* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.arange*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.arange*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.arange* %1, %struct.arange** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.arange*, %struct.arange** %6, align 8
  %11 = getelementptr inbounds %struct.arange, %struct.arange* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.arange*, %struct.arange** %6, align 8
  %17 = getelementptr inbounds %struct.arange, %struct.arange* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.arange*, %struct.arange** %6, align 8
  %20 = getelementptr inbounds %struct.arange, %struct.arange* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.arange*, %struct.arange** %6, align 8
  store %struct.arange* %22, %struct.arange** %9, align 8
  br label %23

23:                                               ; preds = %47, %21
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.arange*, %struct.arange** %9, align 8
  %26 = getelementptr inbounds %struct.arange, %struct.arange* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.arange*, %struct.arange** %9, align 8
  %32 = getelementptr inbounds %struct.arange, %struct.arange* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %67

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.arange*, %struct.arange** %9, align 8
  %36 = getelementptr inbounds %struct.arange, %struct.arange* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.arange*, %struct.arange** %9, align 8
  %42 = getelementptr inbounds %struct.arange, %struct.arange* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %67

43:                                               ; preds = %33
  %44 = load %struct.arange*, %struct.arange** %9, align 8
  %45 = getelementptr inbounds %struct.arange, %struct.arange* %44, i32 0, i32 2
  %46 = load %struct.arange*, %struct.arange** %45, align 8
  store %struct.arange* %46, %struct.arange** %9, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load %struct.arange*, %struct.arange** %9, align 8
  %49 = icmp ne %struct.arange* %48, null
  br i1 %49, label %23, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = call %struct.arange* @bfd_zalloc(i32* %51, i32 24)
  store %struct.arange* %52, %struct.arange** %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.arange*, %struct.arange** %9, align 8
  %55 = getelementptr inbounds %struct.arange, %struct.arange* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.arange*, %struct.arange** %9, align 8
  %58 = getelementptr inbounds %struct.arange, %struct.arange* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.arange*, %struct.arange** %6, align 8
  %60 = getelementptr inbounds %struct.arange, %struct.arange* %59, i32 0, i32 2
  %61 = load %struct.arange*, %struct.arange** %60, align 8
  %62 = load %struct.arange*, %struct.arange** %9, align 8
  %63 = getelementptr inbounds %struct.arange, %struct.arange* %62, i32 0, i32 2
  store %struct.arange* %61, %struct.arange** %63, align 8
  %64 = load %struct.arange*, %struct.arange** %9, align 8
  %65 = load %struct.arange*, %struct.arange** %6, align 8
  %66 = getelementptr inbounds %struct.arange, %struct.arange* %65, i32 0, i32 2
  store %struct.arange* %64, %struct.arange** %66, align 8
  br label %67

67:                                               ; preds = %50, %39, %29, %14
  ret void
}

declare dso_local %struct.arange* @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
