; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_convert_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.cset_converter, %struct.cset_converter }
%struct.cset_converter = type { i32 }
%struct._cpp_strbuf = type { i32 }

@convert_escape.charconsts = internal constant [8 x i32] [i32 7, i32 8, i32 27, i32 12, i32 10, i32 13, i32 9, i32 11], align 16
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"the meaning of '\\a' is different in traditional C\00", align 1
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"non-ISO-standard escape sequence, '\\%c'\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unknown escape sequence '\\%c'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unknown escape sequence: '\\%s'\00", align 1
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"converting escape sequence to execution character set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i32*, %struct._cpp_strbuf*, i32)* @convert_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_escape(%struct.TYPE_10__* %0, i32* %1, i32* %2, %struct._cpp_strbuf* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._cpp_strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cset_converter, align 4
  %14 = alloca [32 x i8], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct._cpp_strbuf* %3, %struct._cpp_strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = bitcast %struct.cset_converter* %13 to i8*
  %21 = bitcast %struct.cset_converter* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  br label %27

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = bitcast %struct.cset_converter* %13 to i8*
  %26 = bitcast %struct.cset_converter* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %92 [
    i32 117, label %31
    i32 85, label %31
    i32 120, label %38
    i32 48, label %45
    i32 49, label %45
    i32 50, label %45
    i32 51, label %45
    i32 52, label %45
    i32 53, label %45
    i32 54, label %45
    i32 55, label %45
    i32 92, label %52
    i32 39, label %52
    i32 34, label %52
    i32 63, label %52
    i32 40, label %53
    i32 123, label %53
    i32 91, label %53
    i32 37, label %53
    i32 98, label %59
    i32 102, label %61
    i32 110, label %63
    i32 114, label %65
    i32 116, label %67
    i32 118, label %69
    i32 97, label %71
    i32 101, label %81
    i32 69, label %81
  ]

31:                                               ; preds = %27, %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32* @convert_ucn(%struct.TYPE_10__* %32, i32* %33, i32* %34, %struct._cpp_strbuf* %35, i32 %36)
  store i32* %37, i32** %6, align 8
  br label %124

38:                                               ; preds = %27
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32* @convert_hex(%struct.TYPE_10__* %39, i32* %40, i32* %41, %struct._cpp_strbuf* %42, i32 %43)
  store i32* %44, i32** %6, align 8
  br label %124

45:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32* @convert_oct(%struct.TYPE_10__* %46, i32* %47, i32* %48, %struct._cpp_strbuf* %49, i32 %50)
  store i32* %51, i32** %6, align 8
  br label %124

52:                                               ; preds = %27, %27, %27, %27
  br label %111

53:                                               ; preds = %27, %27, %27, %27
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = call i32 @CPP_PEDANTIC(%struct.TYPE_10__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %93

58:                                               ; preds = %53
  br label %111

59:                                               ; preds = %27
  %60 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 1), align 4
  store i32 %60, i32* %12, align 4
  br label %111

61:                                               ; preds = %27
  %62 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 3), align 4
  store i32 %62, i32* %12, align 4
  br label %111

63:                                               ; preds = %27
  %64 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 4), align 16
  store i32 %64, i32* %12, align 4
  br label %111

65:                                               ; preds = %27
  %66 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 5), align 4
  store i32 %66, i32* %12, align 4
  br label %111

67:                                               ; preds = %27
  %68 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 6), align 8
  store i32 %68, i32* %12, align 4
  br label %111

69:                                               ; preds = %27
  %70 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 7), align 4
  store i32 %70, i32* %12, align 4
  br label %111

71:                                               ; preds = %27
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = call i32 @CPP_WTRADITIONAL(%struct.TYPE_10__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = load i32, i32* @CPP_DL_WARNING, align 4
  %78 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @cpp_error(%struct.TYPE_10__* %76, i32 %77, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 0), align 16
  store i32 %80, i32* %12, align 4
  br label %111

81:                                               ; preds = %27, %27
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = call i32 @CPP_PEDANTIC(%struct.TYPE_10__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @cpp_error(%struct.TYPE_10__* %86, i32 %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %81
  %91 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @convert_escape.charconsts, i64 0, i64 2), align 8
  store i32 %91, i32* %12, align 4
  br label %111

92:                                               ; preds = %27
  br label %93

93:                                               ; preds = %92, %57
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @ISGRAPH(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @cpp_error(%struct.TYPE_10__* %98, i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %110

102:                                              ; preds = %93
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %109 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @cpp_error(%struct.TYPE_10__* %106, i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %102, %97
  br label %111

111:                                              ; preds = %110, %90, %79, %69, %67, %65, %63, %61, %59, %58, %52
  %112 = load %struct._cpp_strbuf*, %struct._cpp_strbuf** %10, align 8
  %113 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %13, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @APPLY_CONVERSION(i32 %114, i32* %12, i32 1, %struct._cpp_strbuf* %112)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = load i32, i32* @CPP_DL_ERROR, align 4
  %120 = call i32 @cpp_errno(%struct.TYPE_10__* %118, i32 %119, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32* %123, i32** %6, align 8
  br label %124

124:                                              ; preds = %121, %45, %38, %31
  %125 = load i32*, i32** %6, align 8
  ret i32* %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @convert_ucn(%struct.TYPE_10__*, i32*, i32*, %struct._cpp_strbuf*, i32) #2

declare dso_local i32* @convert_hex(%struct.TYPE_10__*, i32*, i32*, %struct._cpp_strbuf*, i32) #2

declare dso_local i32* @convert_oct(%struct.TYPE_10__*, i32*, i32*, %struct._cpp_strbuf*, i32) #2

declare dso_local i32 @CPP_PEDANTIC(%struct.TYPE_10__*) #2

declare dso_local i32 @CPP_WTRADITIONAL(%struct.TYPE_10__*) #2

declare dso_local i32 @cpp_error(%struct.TYPE_10__*, i32, i8*, ...) #2

declare dso_local i32 @ISGRAPH(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @APPLY_CONVERSION(i32, i32*, i32, %struct._cpp_strbuf*) #2

declare dso_local i32 @cpp_errno(%struct.TYPE_10__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
