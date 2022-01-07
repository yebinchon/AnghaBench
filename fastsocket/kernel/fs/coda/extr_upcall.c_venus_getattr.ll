; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_venus_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_venus_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.CodaFid = type { i32 }
%struct.coda_vattr = type { i32 }
%union.inputArgs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.CodaFid }
%union.outputArgs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.coda_vattr }

@getattr = common dso_local global i32 0, align 4
@CODA_GETATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_getattr(%struct.super_block* %0, %struct.CodaFid* %1, %struct.coda_vattr* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.CodaFid*, align 8
  %6 = alloca %struct.coda_vattr*, align 8
  %7 = alloca %union.inputArgs*, align 8
  %8 = alloca %union.outputArgs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %5, align 8
  store %struct.coda_vattr* %2, %struct.coda_vattr** %6, align 8
  %12 = load i32, i32* @getattr, align 4
  %13 = call i32 @SIZE(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @CODA_GETATTR, align 4
  %15 = call i32 @UPARG(i32 %14)
  %16 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %17 = bitcast %union.inputArgs* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.CodaFid*, %struct.CodaFid** %5, align 8
  %20 = bitcast %struct.CodaFid* %18 to i8*
  %21 = bitcast %struct.CodaFid* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call i32 @coda_vcp(%struct.super_block* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %26 = call i32 @coda_upcall(i32 %23, i32 %24, i32* %10, %union.inputArgs* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load %struct.coda_vattr*, %struct.coda_vattr** %6, align 8
  %31 = load %union.outputArgs*, %union.outputArgs** %8, align 8
  %32 = bitcast %union.outputArgs* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast %struct.coda_vattr* %30 to i8*
  %35 = bitcast %struct.coda_vattr* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  br label %36

36:                                               ; preds = %29, %3
  %37 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @CODA_FREE(%union.inputArgs* %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local i32 @SIZE(i32) #1

declare dso_local i32 @UPARG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coda_upcall(i32, i32, i32*, %union.inputArgs*) #1

declare dso_local i32 @coda_vcp(%struct.super_block*) #1

declare dso_local i32 @CODA_FREE(%union.inputArgs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
