; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c___gnu_Unwind_Backtrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c___gnu_Unwind_Backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }

@R_LR = common dso_local global i64 0, align 8
@R_PC = common dso_local global i64 0, align 8
@_URC_OK = common dso_local global i64 0, align 8
@_URC_NO_REASON = common dso_local global i64 0, align 8
@_URC_FAILURE = common dso_local global i64 0, align 8
@_US_VIRTUAL_UNWIND_FRAME = common dso_local global i32 0, align 4
@_US_FORCE_UNWIND = common dso_local global i32 0, align 4
@_URC_END_OF_STACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__gnu_Unwind_Backtrace(i64 (i32*, i8*)* %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64 (i32*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i64 (i32*, i8*)* %0, i64 (i32*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32* %9, i32** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @R_LR, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @R_PC, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = bitcast %struct.TYPE_6__* %24 to i8*
  %28 = bitcast %struct.TYPE_6__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 -1, i32* %29, align 8
  br label %30

30:                                               ; preds = %73, %3
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @R_PC, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @get_eit_entry(i32* %31, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* @_URC_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %75

42:                                               ; preds = %30
  %43 = bitcast %struct.TYPE_8__* %7 to i32*
  %44 = load i32*, i32** %10, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = call i32 @_Unwind_SetGR(i32* %43, i32 12, i32 %45)
  %47 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %4, align 8
  %48 = bitcast %struct.TYPE_8__* %7 to i32*
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 %47(i32* %48, i8* %49)
  %51 = load i64, i64* @_URC_NO_REASON, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i64, i64* @_URC_FAILURE, align 8
  store i64 %54, i64* %8, align 8
  br label %75

55:                                               ; preds = %42
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @UCB_PR_ADDR(i32* %56)
  %58 = inttoptr i64 %57 to i64 (i32, i32*, i8*)*
  %59 = load i32, i32* @_US_VIRTUAL_UNWIND_FRAME, align 4
  %60 = load i32, i32* @_US_FORCE_UNWIND, align 4
  %61 = or i32 %59, %60
  %62 = load i32*, i32** %10, align 8
  %63 = bitcast %struct.TYPE_8__* %7 to i8*
  %64 = call i64 %58(i32 %61, i32* %62, i8* %63)
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @_URC_END_OF_STACK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @_URC_FAILURE, align 8
  %72 = icmp ne i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %30, label %75

75:                                               ; preds = %73, %53, %41
  br label %76

76:                                               ; preds = %75
  %77 = call i32 @restore_non_core_regs(%struct.TYPE_8__* %7)
  %78 = load i64, i64* %8, align 8
  ret i64 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_eit_entry(i32*, i32) #2

declare dso_local i32 @_Unwind_SetGR(i32*, i32, i32) #2

declare dso_local i64 @UCB_PR_ADDR(i32*) #2

declare dso_local i32 @restore_non_core_regs(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
