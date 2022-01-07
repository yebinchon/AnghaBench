; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_paste_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_paste_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, i32, i32 }

@CPP_DIV = common dso_local global i64 0, align 8
@CPP_EQ = common dso_local global i64 0, align 8
@PASTE_LEFT = common dso_local global i32 0, align 4
@lang = common dso_local global i32 0, align 4
@CLK_ASM = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"pasting \22%s\22 and \22%s\22 does not give a valid preprocessing token\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__**, %struct.TYPE_22__*)* @paste_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @paste_tokens(%struct.TYPE_23__* %0, %struct.TYPE_22__** %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %14 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %16 = call i32 @cpp_token_len(%struct.TYPE_22__* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %18 = call i32 @cpp_token_len(%struct.TYPE_22__* %17)
  %19 = add nsw i32 %16, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @alloca(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %8, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @cpp_spell_token(%struct.TYPE_23__* %24, %struct.TYPE_22__* %26, i8* %27, i32 0)
  store i8* %28, i8** %10, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CPP_DIV, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CPP_EQ, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  store i8 32, i8* %42, align 1
  br label %44

44:                                               ; preds = %41, %35, %3
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @cpp_spell_token(%struct.TYPE_23__* %45, %struct.TYPE_22__* %46, i8* %47, i32 0)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  store i8 10, i8* %49, align 1
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @cpp_push_buffer(%struct.TYPE_23__* %50, i8* %51, i32 %57, i32 1)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %60 = call i32 @_cpp_clean_line(%struct.TYPE_23__* %59)
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = call i32 @_cpp_temp_token(%struct.TYPE_23__* %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = call %struct.TYPE_22__* @_cpp_lex_direct(%struct.TYPE_23__* %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %11, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %78, label %117

78:                                               ; preds = %44
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = call i32 @_cpp_pop_buffer(%struct.TYPE_23__* %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = call i32 @_cpp_backup_tokens(%struct.TYPE_23__* %84, i32 1)
  %86 = load i8*, i8** %10, align 8
  store i8 0, i8* %86, align 1
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %88 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = bitcast %struct.TYPE_22__* %87 to i8*
  %91 = bitcast %struct.TYPE_22__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %93 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @PASTE_LEFT, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = load i32, i32* @lang, align 4
  %105 = call i64 @CPP_OPTION(%struct.TYPE_23__* %103, i32 %104)
  %106 = load i64, i64* @CLK_ASM, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %78
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = load i32, i32* @CPP_DL_ERROR, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = call i32 @cpp_token_as_text(%struct.TYPE_23__* %112, %struct.TYPE_22__* %113)
  %115 = call i32 @cpp_error(%struct.TYPE_23__* %109, i32 %110, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %108, %78
  store i32 0, i32* %4, align 4
  br label %122

117:                                              ; preds = %44
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %119 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %119, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %121 = call i32 @_cpp_pop_buffer(%struct.TYPE_23__* %120)
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %116
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @cpp_token_len(%struct.TYPE_22__*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i8* @cpp_spell_token(%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @cpp_push_buffer(%struct.TYPE_23__*, i8*, i32, i32) #1

declare dso_local i32 @_cpp_clean_line(%struct.TYPE_23__*) #1

declare dso_local i32 @_cpp_temp_token(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @_cpp_lex_direct(%struct.TYPE_23__*) #1

declare dso_local i32 @_cpp_pop_buffer(%struct.TYPE_23__*) #1

declare dso_local i32 @_cpp_backup_tokens(%struct.TYPE_23__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @CPP_OPTION(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @cpp_error(%struct.TYPE_23__*, i32, i8*, i8*, i32) #1

declare dso_local i32 @cpp_token_as_text(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
