; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_alloc_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_pch_data = type { i32*, i32, i64* }

@BYTES_PER_ALLOC_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ggc_pch_alloc_object(%struct.ggc_pch_data* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ggc_pch_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ggc_pch_data* %0, %struct.ggc_pch_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @pch_bucket(i8* %15, i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %20 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %27 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 32, %32
  %34 = udiv i64 %30, %33
  store i64 %34, i64* %11, align 8
  %35 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %36 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %43 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %47 = sdiv i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = urem i64 %48, 32
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = shl i64 1, %50
  %52 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %53 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = or i64 %57, %51
  store i64 %58, i64* %56, align 8
  %59 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %60 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %13, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.ggc_pch_data*, %struct.ggc_pch_data** %6, align 8
  %70 = getelementptr inbounds %struct.ggc_pch_data, %struct.ggc_pch_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %68
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i8*, i8** %13, align 8
  ret i8* %79
}

declare dso_local i32 @pch_bucket(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
