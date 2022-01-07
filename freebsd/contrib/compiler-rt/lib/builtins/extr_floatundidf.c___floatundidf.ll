; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_floatundidf.c___floatundidf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_floatundidf.c___floatundidf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }
%union.anon.0 = type { double }

@__floatundidf.twop52 = internal constant double 0x4330000000000000, align 8
@__floatundidf.twop84 = internal constant double 0x4530000000000000, align 8
@__floatundidf.twop84_plus_twop52 = internal constant double 0x4530000000100000, align 8
@__const.__floatundidf.high = private unnamed_addr constant %union.anon { double 0x4530000000000000 }, align 8
@__const.__floatundidf.low = private unnamed_addr constant %union.anon.0 { double 0x4330000000000000 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__floatundidf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 8
  %4 = alloca %union.anon.0, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %6 = bitcast %union.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%union.anon* @__const.__floatundidf.high to i8*), i64 8, i1 false)
  %7 = bitcast %union.anon.0* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%union.anon.0* @__const.__floatundidf.low to i8*), i64 8, i1 false)
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 32
  %10 = bitcast %union.anon* %3 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @UINT64_C(i32 -1)
  %15 = and i32 %13, %14
  %16 = bitcast %union.anon.0* %4 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 8
  %19 = bitcast %union.anon* %3 to double*
  %20 = load double, double* %19, align 8
  %21 = fsub double %20, 0x4530000000100000
  %22 = bitcast %union.anon.0* %4 to double*
  %23 = load double, double* %22, align 8
  %24 = fadd double %21, %23
  store double %24, double* %5, align 8
  %25 = load double, double* %5, align 8
  ret double %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @UINT64_C(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
