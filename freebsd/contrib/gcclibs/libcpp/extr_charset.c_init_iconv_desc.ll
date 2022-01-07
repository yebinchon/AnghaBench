; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_init_iconv_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_init_iconv_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8* }
%struct.cset_converter = type { i64, i8* }

@convert_no_conversion = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@conversion_tab = common dso_local global %struct.TYPE_3__* null, align 8
@HAVE_ICONV = common dso_local global i64 0, align 8
@convert_using_iconv = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"conversion from %s to %s not supported by iconv\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"iconv_open\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"no iconv implementation, cannot convert from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8* } (i32*, i8*, i8*)* @init_iconv_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @init_iconv_desc(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cset_converter, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @strcasecmp(i8* %10, i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** @convert_no_conversion, align 8
  %16 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 0
  store i64 -1, i64* %17, align 8
  br label %107

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %20, %22
  %24 = add nsw i64 %23, 2
  %25 = call i64 @alloca(i64 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcat(i8* %32, i8* %33)
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %63, %18
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @conversion_tab, align 8
  %38 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @conversion_tab, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcasecmp(i8* %41, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @conversion_tab, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @conversion_tab, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  br label %107

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load i64, i64* @HAVE_ICONV, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load i8*, i8** @convert_using_iconv, align 8
  %71 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @iconv_open(i8* %72, i8* %73)
  %75 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EINVAL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @CPP_DL_ERROR, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @cpp_error(i32* %84, i32 %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %87)
  br label %93

89:                                               ; preds = %79
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @CPP_DL_ERROR, align 4
  %92 = call i32 @cpp_errno(i32* %90, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i8*, i8** @convert_no_conversion, align 8
  %95 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %93, %69
  br label %106

97:                                               ; preds = %66
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @CPP_DL_ERROR, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @cpp_error(i32* %98, i32 %99, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %101)
  %103 = load i8*, i8** @convert_no_conversion, align 8
  %104 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %4, i32 0, i32 0
  store i64 -1, i64* %105, align 8
  br label %106

106:                                              ; preds = %97, %96
  br label %107

107:                                              ; preds = %106, %49, %14
  %108 = bitcast %struct.cset_converter* %4 to { i64, i8* }*
  %109 = load { i64, i8* }, { i64, i8* }* %108, align 8
  ret { i64, i8* } %109
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @cpp_errno(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
