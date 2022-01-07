; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_lshift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64 }

@PART_PRECISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i64)* @num_lshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @num_lshift(%struct.TYPE_11__* noalias sret %0, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  store i64 %2, i64* %5, align 8
  store i64 %3, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call i32 @num_zerop(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %1)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %84

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %9, align 8
  %31 = bitcast %struct.TYPE_11__* %7 to i8*
  %32 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PART_PRECISION, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i64, i64* @PART_PRECISION, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %29
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = shl i64 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PART_PRECISION, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %54, %55
  %57 = lshr i64 %53, %56
  %58 = or i64 %51, %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 %62, %60
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %47, %44
  %65 = load i64, i64* %5, align 8
  call void @num_trim(%struct.TYPE_11__* sret %10, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %1, i64 %65)
  %66 = bitcast %struct.TYPE_11__* %1 to i8*
  %67 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %83

73:                                               ; preds = %64
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  call void @num_rshift(%struct.TYPE_11__* sret %11, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %1, i64 %74, i64 %75)
  %76 = bitcast %struct.TYPE_11__* %8 to i8*
  %77 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 32, i1 false)
  %78 = call i32 @num_eq(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %7, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %8)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  br label %83

83:                                               ; preds = %73, %71
  br label %84

84:                                               ; preds = %83, %23
  %85 = bitcast %struct.TYPE_11__* %0 to i8*
  %86 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 32, i1 false)
  ret void
}

declare dso_local i32 @num_zerop(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @num_trim(%struct.TYPE_11__* sret, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i64) #1

declare dso_local void @num_rshift(%struct.TYPE_11__* sret, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i64, i64) #1

declare dso_local i32 @num_eq(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
