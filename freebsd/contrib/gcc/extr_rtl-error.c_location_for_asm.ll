; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-error.c_location_for_asm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-error.c_location_for_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SET = common dso_local global i64 0, align 8
@ASM_OPERANDS = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@input_location = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @location_for_asm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @location_for_asm(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @PATTERN(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @GET_CODE(i32* %8)
  %10 = load i64, i64* @SET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @SET_SRC(i32* %13)
  %15 = call i64 @GET_CODE(i32* %14)
  %16 = load i64, i64* @ASM_OPERANDS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @SET_SRC(i32* %19)
  store i32* %20, i32** %5, align 8
  br label %61

21:                                               ; preds = %12, %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @GET_CODE(i32* %22)
  %24 = load i64, i64* @ASM_OPERANDS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %5, align 8
  br label %60

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @GET_CODE(i32* %29)
  %31 = load i64, i64* @PARALLEL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @XVECEXP(i32* %34, i32 0, i32 0)
  %36 = call i64 @GET_CODE(i32* %35)
  %37 = load i64, i64* @SET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @XVECEXP(i32* %40, i32 0, i32 0)
  %42 = call i32* @SET_SRC(i32* %41)
  store i32* %42, i32** %5, align 8
  br label %59

43:                                               ; preds = %33, %28
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @GET_CODE(i32* %44)
  %46 = load i64, i64* @PARALLEL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @XVECEXP(i32* %49, i32 0, i32 0)
  %51 = call i64 @GET_CODE(i32* %50)
  %52 = load i64, i64* @ASM_OPERANDS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = call i32* @XVECEXP(i32* %55, i32 0, i32 0)
  store i32* %56, i32** %5, align 8
  br label %58

57:                                               ; preds = %48, %43
  store i32* null, i32** %5, align 8
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @ASM_OPERANDS_SOURCE_FILE(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @ASM_OPERANDS_SOURCE_LINE(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  br label %73

71:                                               ; preds = %61
  %72 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 bitcast (%struct.TYPE_5__* @input_location to i8*), i64 8, i1 false)
  br label %73

73:                                               ; preds = %71, %64
  %74 = bitcast %struct.TYPE_5__* %2 to i64*
  %75 = load i64, i64* %74, align 4
  ret i64 %75
}

declare dso_local i32* @PATTERN(i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @SET_SRC(i32*) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

declare dso_local i32 @ASM_OPERANDS_SOURCE_FILE(i32*) #1

declare dso_local i32 @ASM_OPERANDS_SOURCE_LINE(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
