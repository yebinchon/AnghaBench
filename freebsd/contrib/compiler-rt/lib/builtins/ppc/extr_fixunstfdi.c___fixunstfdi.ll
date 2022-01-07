; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/ppc/extr_fixunstfdi.c___fixunstfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/ppc/extr_fixunstfdi.c___fixunstfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { x86_fp80, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, double }
%struct.TYPE_5__ = type { double, i32 }

@UINT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fixunstfdi(x86_fp80 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca x86_fp80, align 16
  %4 = alloca %struct.TYPE_6__, align 16
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %14 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %14, x86_fp80* %13, align 16
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 16
  store double %20, double* %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 32
  %25 = call i32 @UINT32_C(i32 1072693248)
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = call i32 @UINT32_C(i32 67108864)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 20
  store i32 %32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @UINT64_C(i32 -1)
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = call i32 @UINT64_C(i32 0)
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 11
  store i32 %41, i32* %8, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fcmp une double 0.000000e+00, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  store double %50, double* %47, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @INT64_C(i32 -1)
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = call i32 @INT64_C(i32 0)
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 63
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = xor i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 52
  %70 = and i32 %69, 2047
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %72, 1012
  %74 = sub nsw i32 %71, %73
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %46, %30
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 63, %81
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %95

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load double, double* %88, align 16
  %90 = fcmp ogt double 1.000000e+00, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @UINT64_C(i32 0)
  store i32 %92, i32* %2, align 4
  br label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @UINT64_MAX, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %91, %80
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @UINT32_C(i32) #2

declare dso_local i32 @UINT64_C(i32) #2

declare dso_local i32 @INT64_C(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
