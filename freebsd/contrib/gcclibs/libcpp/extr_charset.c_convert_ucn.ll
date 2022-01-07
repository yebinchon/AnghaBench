; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_ucn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_ucn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.normalize_state = type { i32 }
%struct.TYPE_5__ = type { %struct.cset_converter, %struct.cset_converter }
%struct.cset_converter = type { i32 }
%struct._cpp_strbuf = type { i32 }

@INITIAL_NORMALIZE_STATE = common dso_local global %struct.normalize_state zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"converting UCN to source character set\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"converting UCN to execution character set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i32*, %struct._cpp_strbuf*, i32)* @convert_ucn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_ucn(%struct.TYPE_5__* %0, i32* %1, i32* %2, %struct._cpp_strbuf* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._cpp_strbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cset_converter, align 4
  %17 = alloca %struct.normalize_state, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct._cpp_strbuf* %3, %struct._cpp_strbuf** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32* %18, i32** %13, align 8
  store i64 6, i64* %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = bitcast %struct.cset_converter* %16 to i8*
  %25 = bitcast %struct.cset_converter* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  br label %31

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = bitcast %struct.cset_converter* %16 to i8*
  %30 = bitcast %struct.cset_converter* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %26, %21
  %32 = bitcast %struct.normalize_state* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.normalize_state* @INITIAL_NORMALIZE_STATE to i8*), i64 4, i1 false)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @_cpp_valid_ucn(%struct.TYPE_5__* %35, i32** %7, i32* %36, i32 0, %struct.normalize_state* %17)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @one_cppchar_to_utf8(i32 %38, i32** %13, i64* %14)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* @errno, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load i32, i32* @CPP_DL_ERROR, align 4
  %46 = call i32 @cpp_errno(%struct.TYPE_5__* %44, i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %62

47:                                               ; preds = %31
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %49 = load i64, i64* %14, align 8
  %50 = sub i64 6, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %9, align 8
  %53 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %16, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @APPLY_CONVERSION(i32 %54, i32* %48, i32 %51, %struct._cpp_strbuf* %52)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load i32, i32* @CPP_DL_ERROR, align 4
  %60 = call i32 @cpp_errno(%struct.TYPE_5__* %58, i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32*, i32** %7, align 8
  ret i32* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_cpp_valid_ucn(%struct.TYPE_5__*, i32**, i32*, i32, %struct.normalize_state*) #2

declare dso_local i32 @one_cppchar_to_utf8(i32, i32**, i64*) #2

declare dso_local i32 @cpp_errno(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @APPLY_CONVERSION(i32, i32*, i32, %struct._cpp_strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
