; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_next_skip_over_anon_unions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_next_skip_over_anon_unions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dnttentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.objfile = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %union.dnttentry**, %struct.objfile*)* @hpread_get_next_skip_over_anon_unions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpread_get_next_skip_over_anon_unions(i32 %0, i32 %1, %union.dnttentry** %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.dnttentry**, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %1, i32* %16, align 4
  store i32 %0, i32* %7, align 4
  store %union.dnttentry** %2, %union.dnttentry*** %8, align 8
  store %struct.objfile* %3, %struct.objfile** %9, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %85, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = load %union.dnttentry**, %union.dnttentry*** %8, align 8
  %23 = load %union.dnttentry*, %union.dnttentry** %22, align 8
  %24 = bitcast %union.dnttentry* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.objfile*, %struct.objfile** %9, align 8
  %28 = call %struct.type* @hpread_type_lookup(i32 %26, %struct.objfile* %27)
  store %struct.type* %28, %struct.type** %10, align 8
  %29 = load %struct.type*, %struct.type** %10, align 8
  %30 = call %struct.type* @CHECK_TYPEDEF(%struct.type* %29)
  store %struct.type* %30, %struct.type** %10, align 8
  %31 = load %union.dnttentry**, %union.dnttentry*** %8, align 8
  %32 = load %union.dnttentry*, %union.dnttentry** %31, align 8
  %33 = bitcast %union.dnttentry* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.objfile*, %struct.objfile** %9, align 8
  %37 = call i8* @VT(%struct.objfile* %36)
  %38 = load %union.dnttentry**, %union.dnttentry*** %8, align 8
  %39 = load %union.dnttentry*, %union.dnttentry** %38, align 8
  %40 = bitcast %union.dnttentry* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %37, i64 %43
  store i8* %44, i8** %13, align 8
  %45 = load %union.dnttentry**, %union.dnttentry*** %8, align 8
  %46 = load %union.dnttentry*, %union.dnttentry** %45, align 8
  %47 = bitcast %union.dnttentry* %46 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = bitcast %struct.TYPE_8__* %6 to i8*
  %50 = bitcast %struct.TYPE_8__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.objfile*, %struct.objfile** %9, align 8
  %55 = call %union.dnttentry* @hpread_get_lntt(i32 %53, %struct.objfile* %54)
  %56 = load %union.dnttentry**, %union.dnttentry*** %8, align 8
  store %union.dnttentry* %55, %union.dnttentry** %56, align 8
  %57 = load %struct.type*, %struct.type** %10, align 8
  %58 = call i64 @TYPE_CODE(%struct.type* %57)
  %59 = load i64, i64* @TYPE_CODE_UNION, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %21
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %13, align 8
  %66 = call i64 @DEPRECATED_STREQ(i8* %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %64, %61
  %69 = load %struct.type*, %struct.type** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @hpread_adjust_bitoffsets(%struct.type* %69, i32 %70)
  %72 = load %struct.type*, %struct.type** %10, align 8
  %73 = call i32 @TYPE_NFIELDS(%struct.type* %72)
  %74 = load %union.dnttentry**, %union.dnttentry*** %8, align 8
  %75 = load %struct.objfile*, %struct.objfile** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @hpread_get_next_skip_over_anon_unions(i32 %73, i32 %78, %union.dnttentry** %74, %struct.objfile* %75)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = bitcast %struct.TYPE_8__* %6 to i8*
  %83 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  br label %84

84:                                               ; preds = %68, %64, %21
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %17

88:                                               ; preds = %17
  %89 = bitcast %struct.TYPE_8__* %5 to i8*
  %90 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  ret i32 %93
}

declare dso_local %struct.type* @hpread_type_lookup(i32, %struct.objfile*) #1

declare dso_local %struct.type* @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i8* @VT(%struct.objfile*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %union.dnttentry* @hpread_get_lntt(i32, %struct.objfile*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

declare dso_local i32 @hpread_adjust_bitoffsets(%struct.type*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
