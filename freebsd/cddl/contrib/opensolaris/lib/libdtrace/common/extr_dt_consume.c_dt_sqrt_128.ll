; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_sqrt_128.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_sqrt_128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.dt_sqrt_128.one = private unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dt_sqrt_128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_sqrt_128(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.dt_sqrt_128.one to i8*), i64 8, i1 false)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @dt_nbits_128(i32* %14)
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %79, %1
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @dt_shift_128(i32* %32, i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 3
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %41 = call i32 @dt_shift_128(i32* %40, i32 2)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %45 = call i32 @dt_add_128(i32* %42, i32* %43, i32* %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = call i32 @dt_shift_128(i32* %52, i32 2)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %57 = call i32 @dt_add_128(i32* %54, i32* %55, i32* %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %60 = call i64 @dt_le_128(i32* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %23
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %66 = call i32 @dt_subtract_128(i32* %63, i32* %64, i32* %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %68 = call i32 @dt_shift_128(i32* %67, i32 1)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %72 = call i32 @dt_add_128(i32* %69, i32* %70, i32* %71)
  br label %76

73:                                               ; preds = %23
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %75 = call i32 @dt_shift_128(i32* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %62
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 2
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %19

82:                                               ; preds = %19
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dt_nbits_128(i32*) #2

declare dso_local i32 @dt_shift_128(i32*, i32) #2

declare dso_local i32 @dt_add_128(i32*, i32*, i32*) #2

declare dso_local i64 @dt_le_128(i32*, i32*) #2

declare dso_local i32 @dt_subtract_128(i32*, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
