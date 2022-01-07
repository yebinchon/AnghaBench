; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.line_maps* }
%struct.line_maps = type { i32, %struct.line_map* }
%struct.line_map = type { i8, i8* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32 }

@c99 = common dso_local global i32 0, align 4
@CPP_NUMBER = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"\22%s\22 after #line is not a positive integer\00", align 1
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"line number out of range\00", align 1
@CPP_STRING = common dso_local global i64 0, align 8
@CPP_EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\22%s\22 is not a valid filename\00", align 1
@LC_RENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @do_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_line(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.line_maps*, align 8
  %4 = alloca %struct.line_map*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load %struct.line_maps*, %struct.line_maps** %12, align 8
  store %struct.line_maps* %13, %struct.line_maps** %3, align 8
  %14 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %15 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %14, i32 0, i32 1
  %16 = load %struct.line_map*, %struct.line_map** %15, align 8
  %17 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %18 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.line_map, %struct.line_map* %16, i64 %21
  store %struct.line_map* %22, %struct.line_map** %4, align 8
  %23 = load %struct.line_map*, %struct.line_map** %4, align 8
  %24 = getelementptr inbounds %struct.line_map, %struct.line_map* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  store i8 %25, i8* %5, align 1
  %26 = load %struct.line_map*, %struct.line_map** %4, align 8
  %27 = getelementptr inbounds %struct.line_map, %struct.line_map* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %30 = load i32, i32* @c99, align 4
  %31 = call i64 @CPP_OPTION(%struct.TYPE_23__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2147483647, i32 32767
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %36 = call %struct.TYPE_21__* @cpp_get_token(%struct.TYPE_23__* %35)
  store %struct.TYPE_21__* %36, %struct.TYPE_21__** %6, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CPP_NUMBER, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %1
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @strtoul_for_line(i32 %47, i32 %52, i64* %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42, %1
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %57 = load i32, i32* @CPP_DL_ERROR, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = call i32 @cpp_token_as_text(%struct.TYPE_23__* %58, %struct.TYPE_21__* %59)
  %61 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @cpp_error(%struct.TYPE_23__* %56, i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %124

62:                                               ; preds = %42
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %64 = call i64 @CPP_PEDANTIC(%struct.TYPE_23__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %66
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %76 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %77 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @cpp_error(%struct.TYPE_23__* %75, i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69, %62
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %80 = call %struct.TYPE_21__* @cpp_get_token(%struct.TYPE_23__* %79)
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %6, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CPP_STRING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %78
  %87 = bitcast %struct.TYPE_22__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 16, i1 false)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = call i64 @cpp_interpret_string_notranslate(%struct.TYPE_23__* %88, %struct.TYPE_19__* %91, i32 1, %struct.TYPE_22__* %10, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %94, %86
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %100 = call i32 @check_eol(%struct.TYPE_23__* %99)
  br label %115

101:                                              ; preds = %78
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CPP_EOF, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %109 = load i32, i32* @CPP_DL_ERROR, align 4
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = call i32 @cpp_token_as_text(%struct.TYPE_23__* %110, %struct.TYPE_21__* %111)
  %113 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @cpp_error(%struct.TYPE_23__* %108, i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %124

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %117 = call i32 @skip_rest_of_line(%struct.TYPE_23__* %116)
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %119 = load i32, i32* @LC_RENAME, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i8, i8* %5, align 1
  %123 = call i32 @_cpp_do_file_change(%struct.TYPE_23__* %118, i32 %119, i8* %120, i64 %121, i8 zeroext %122)
  br label %124

124:                                              ; preds = %115, %107, %55
  ret void
}

declare dso_local i64 @CPP_OPTION(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_21__* @cpp_get_token(%struct.TYPE_23__*) #1

declare dso_local i64 @strtoul_for_line(i32, i32, i64*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @cpp_token_as_text(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i64 @CPP_PEDANTIC(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @cpp_interpret_string_notranslate(%struct.TYPE_23__*, %struct.TYPE_19__*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @check_eol(%struct.TYPE_23__*) #1

declare dso_local i32 @skip_rest_of_line(%struct.TYPE_23__*) #1

declare dso_local i32 @_cpp_do_file_change(%struct.TYPE_23__*, i32, i8*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
