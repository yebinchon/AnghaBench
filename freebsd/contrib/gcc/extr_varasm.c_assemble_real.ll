; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_assemble_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_assemble_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assemble_real(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = bitcast [4 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_MODE_SIZE(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @BITS_PER_UNIT, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @CEIL(i32 %19, i32 32)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @BITS_PER_UNIT, align 4
  %22 = sdiv i32 32, %21
  store i32 %22, i32* %12, align 4
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @real_to_target(i64* %23, i32* %4, i32 %24)
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %27 = load i64, i64* %26, align 16
  %28 = call i32 @GEN_INT(i64 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @MIN(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @assemble_integer(i32 %28, i32 %31, i32 %32, i32 1)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @min_align(i32 %37, i32 32)
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %57, %3
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @GEN_INT(i64 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @MIN(i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @assemble_integer(i32 %48, i32 %51, i32 %52, i32 1)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %39

60:                                               ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #2

declare dso_local i32 @CEIL(i32, i32) #2

declare dso_local i32 @real_to_target(i64*, i32*, i32) #2

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #2

declare dso_local i32 @GEN_INT(i64) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @min_align(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
