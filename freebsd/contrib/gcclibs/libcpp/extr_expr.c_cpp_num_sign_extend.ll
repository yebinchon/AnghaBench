; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_cpp_num_sign_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_cpp_num_sign_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@PART_PRECISION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_num_sign_extend(%struct.TYPE_4__* noalias sret %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  store i64 %2, i64* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %3
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PART_PRECISION, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load i64, i64* @PART_PRECISION, align 8
  %14 = load i64, i64* %4, align 8
  %15 = sub i64 %14, %13
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PART_PRECISION, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub i64 %22, 1
  %24 = shl i64 1, %23
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i64, i64* @PART_PRECISION, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub i64 %28, %29
  %31 = lshr i64 -1, %30
  %32 = xor i64 %31, -1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = or i64 %34, %32
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %27, %19, %12
  br label %61

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, 1
  %42 = shl i64 1, %41
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @PART_PRECISION, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i64, i64* @PART_PRECISION, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub i64 %50, %51
  %53 = lshr i64 -1, %52
  %54 = xor i64 %53, -1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %54
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %49, %45
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i64 -1, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %37
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %3
  %63 = bitcast %struct.TYPE_4__* %0 to i8*
  %64 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
