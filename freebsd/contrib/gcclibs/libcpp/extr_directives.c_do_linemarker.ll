; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_linemarker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_linemarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__*, %struct.line_maps* }
%struct.TYPE_23__ = type { i32 }
%struct.line_maps = type { i32, %struct.line_map* }
%struct.line_map = type { i8*, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i32, i32 }

@LC_RENAME = common dso_local global i32 0, align 4
@CPP_NUMBER = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"\22%s\22 after # is not a positive integer\00", align 1
@CPP_STRING = common dso_local global i64 0, align 8
@LC_ENTER = common dso_local global i32 0, align 4
@LC_LEAVE = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"\22%s\22 is not a valid filename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @do_linemarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_linemarker(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.line_maps*, align 8
  %4 = alloca %struct.line_map*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %14 = load %struct.line_maps*, %struct.line_maps** %13, align 8
  store %struct.line_maps* %14, %struct.line_maps** %3, align 8
  %15 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %16 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i32 0, i32 1
  %17 = load %struct.line_map*, %struct.line_map** %16, align 8
  %18 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %19 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.line_map, %struct.line_map* %17, i64 %22
  store %struct.line_map* %23, %struct.line_map** %4, align 8
  %24 = load %struct.line_map*, %struct.line_map** %4, align 8
  %25 = getelementptr inbounds %struct.line_map, %struct.line_map* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.line_map*, %struct.line_map** %4, align 8
  %28 = getelementptr inbounds %struct.line_map, %struct.line_map* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @LC_RENAME, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %32 = call i32 @_cpp_backup_tokens(%struct.TYPE_26__* %31, i32 1)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %34 = call %struct.TYPE_24__* @cpp_get_token(%struct.TYPE_26__* %33)
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %5, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CPP_NUMBER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %1
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strtoul_for_line(i32 %45, i32 %50, i64* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40, %1
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %55 = load i32, i32* @CPP_DL_ERROR, align 4
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = call i32 @cpp_token_as_text(%struct.TYPE_26__* %56, %struct.TYPE_24__* %57)
  %59 = call i32 @cpp_error(%struct.TYPE_26__* %54, i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %144

60:                                               ; preds = %40
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %62 = call %struct.TYPE_24__* @cpp_get_token(%struct.TYPE_26__* %61)
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %5, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CPP_STRING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %121

68:                                               ; preds = %60
  %69 = bitcast %struct.TYPE_25__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %69, i8 0, i64 16, i1 false)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = call i64 @cpp_interpret_string_notranslate(%struct.TYPE_26__* %70, %struct.TYPE_21__* %73, i32 1, %struct.TYPE_25__* %11, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %76, %68
  store i32 0, i32* %8, align 4
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %82 = call i32 @read_flag(%struct.TYPE_26__* %81, i32 0)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* @LC_ENTER, align 4
  store i32 %86, i32* %9, align 4
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @_cpp_fake_include(%struct.TYPE_26__* %87, i8* %88)
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @read_flag(%struct.TYPE_26__* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  br label %102

93:                                               ; preds = %80
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* @LC_LEAVE, align 4
  store i32 %97, i32* %9, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @read_flag(%struct.TYPE_26__* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %96, %93
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  store i32 1, i32* %8, align 4
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @read_flag(%struct.TYPE_26__* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 2, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %120 = call i32 @check_eol(%struct.TYPE_26__* %119)
  br label %135

121:                                              ; preds = %60
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @CPP_EOF, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %129 = load i32, i32* @CPP_DL_ERROR, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %132 = call i32 @cpp_token_as_text(%struct.TYPE_26__* %130, %struct.TYPE_24__* %131)
  %133 = call i32 @cpp_error(%struct.TYPE_26__* %128, i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %144

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %113
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %137 = call i32 @skip_rest_of_line(%struct.TYPE_26__* %136)
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i8*, i8** %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @_cpp_do_file_change(%struct.TYPE_26__* %138, i32 %139, i8* %140, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %127, %53
  ret void
}

declare dso_local i32 @_cpp_backup_tokens(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_24__* @cpp_get_token(%struct.TYPE_26__*) #1

declare dso_local i64 @strtoul_for_line(i32, i32, i64*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_26__*, i32, i8*, i32) #1

declare dso_local i32 @cpp_token_as_text(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @cpp_interpret_string_notranslate(%struct.TYPE_26__*, %struct.TYPE_21__*, i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @read_flag(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @_cpp_fake_include(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @check_eol(%struct.TYPE_26__*) #1

declare dso_local i32 @skip_rest_of_line(%struct.TYPE_26__*) #1

declare dso_local i32 @_cpp_do_file_change(%struct.TYPE_26__*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
