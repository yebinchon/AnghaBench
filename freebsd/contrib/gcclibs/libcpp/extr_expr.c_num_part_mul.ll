; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_part_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_part_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PART_PRECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32, i32)* @num_part_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @num_part_mul(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @LOW_PART(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @LOW_PART(i32 %10)
  %12 = mul nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @HIGH_PART(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @HIGH_PART(i32 %16)
  %18 = mul nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @LOW_PART(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @HIGH_PART(i32 %22)
  %24 = mul nsw i32 %21, %23
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @HIGH_PART(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @LOW_PART(i32 %28)
  %30 = mul nsw i32 %27, %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LOW_PART(i32 %35)
  %37 = load i32, i32* @PART_PRECISION, align 4
  %38 = sdiv i32 %37, 2
  %39 = shl i32 %36, %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LOW_PART(i32 %55)
  %57 = load i32, i32* @PART_PRECISION, align 4
  %58 = sdiv i32 %57, 2
  %59 = shl i32 %56, %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %67, %51
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @HIGH_PART(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @HIGH_PART(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = bitcast %struct.TYPE_3__* %3 to { i64, i64 }*
  %87 = load { i64, i64 }, { i64, i64 }* %86, align 4
  ret { i64, i64 } %87
}

declare dso_local i32 @LOW_PART(i32) #1

declare dso_local i32 @HIGH_PART(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
