; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_rshift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_rshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64 }

@PART_PRECISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, i64, i64)* @num_rshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @num_rshift(%struct.TYPE_7__* noalias sret %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  store i64 %2, i64* %5, align 8
  store i64 %3, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @num_positive(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i64 0, i64* %7, align 8
  br label %20

19:                                               ; preds = %15
  store i64 -1, i64* %7, align 8
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %97

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PART_PRECISION, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = shl i64 %35, %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %39, %37
  store i64 %40, i64* %38, align 8
  br label %56

41:                                               ; preds = %28
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @PART_PRECISION, align 8
  %44 = mul i64 2, %43
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @PART_PRECISION, align 8
  %50 = sub i64 %48, %49
  %51 = shl i64 %47, %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %46, %41
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @PART_PRECISION, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* @PART_PRECISION, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %56
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = lshr i64 %74, %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PART_PRECISION, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub i64 %79, %80
  %82 = shl i64 %78, %81
  %83 = or i64 %76, %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = lshr i64 %86, %87
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @PART_PRECISION, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %90, %91
  %93 = shl i64 %89, %92
  %94 = or i64 %88, %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %72, %69
  br label %97

97:                                               ; preds = %96, %24
  %98 = load i64, i64* %5, align 8
  call void @num_trim(%struct.TYPE_7__* sret %9, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i64 %98)
  %99 = bitcast %struct.TYPE_7__* %1 to i8*
  %100 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 32, i1 false)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = bitcast %struct.TYPE_7__* %0 to i8*
  %103 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 32, i1 false)
  ret void
}

declare dso_local i32 @num_positive(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i64) #1

declare dso_local void @num_trim(%struct.TYPE_7__* sret, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
