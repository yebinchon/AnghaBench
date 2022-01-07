; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_lex_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_lex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@CPP_WSTRING = common dso_local global i32 0, align 4
@CPP_STRING = common dso_local global i32 0, align 4
@CPP_WCHAR = common dso_local global i32 0, align 4
@CPP_CHAR = common dso_local global i32 0, align 4
@CPP_HEADER_NAME = common dso_local global i32 0, align 4
@CPP_OTHER = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"null character(s) preserved in literal\00", align 1
@lang = common dso_local global i32 0, align 4
@CLK_ASM = common dso_local global i64 0, align 8
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i8*)* @lex_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_string(%struct.TYPE_10__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %8, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %9, align 1
  %16 = load i8, i8* %9, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 76
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %9, align 1
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 76
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @CPP_WSTRING, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @CPP_STRING, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  br label %56

38:                                               ; preds = %23
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 39
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 76
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @CPP_WCHAR, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @CPP_CHAR, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %10, align 4
  br label %55

53:                                               ; preds = %38
  store i8 62, i8* %9, align 1
  %54 = load i32, i32* @CPP_HEADER_NAME, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %101, %56
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  %60 = load i8, i8* %58, align 1
  store i8 %60, i8* %11, align 1
  %61 = load i8, i8* %11, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 92
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 10
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  br label %101

78:                                               ; preds = %70, %64, %57
  %79 = load i8, i8* %11, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* %9, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %102

85:                                               ; preds = %78
  %86 = load i8, i8* %11, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %8, align 8
  %92 = load i32, i32* @CPP_OTHER, align 4
  store i32 %92, i32* %10, align 4
  br label %102

93:                                               ; preds = %85
  %94 = load i8, i8* %11, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %93
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %75
  br label %57

102:                                              ; preds = %89, %84
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = load i32, i32* @CPP_DL_WARNING, align 4
  %114 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @cpp_error(%struct.TYPE_10__* %112, i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %105, %102
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @CPP_OTHER, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = load i32, i32* @lang, align 4
  %122 = call i64 @CPP_OPTION(%struct.TYPE_10__* %120, i32 %121)
  %123 = load i64, i64* @CLK_ASM, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %140 = load i8, i8* %9, align 1
  %141 = sext i8 %140 to i32
  %142 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @cpp_error(%struct.TYPE_10__* %138, i32 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %131, %125, %119, %115
  %144 = load i8*, i8** %8, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @create_literal(%struct.TYPE_10__* %149, i32* %150, i8* %151, i32 %157, i32 %158)
  ret void
}

declare dso_local i32 @cpp_error(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @create_literal(%struct.TYPE_10__*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
