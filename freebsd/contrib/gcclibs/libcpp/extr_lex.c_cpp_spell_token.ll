; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_spell_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_spell_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i64 }

@DIGRAPH = common dso_local global i32 0, align 4
@digraph_spellings = common dso_local global i8** null, align 8
@CPP_FIRST_DIGRAPH = common dso_local global i64 0, align 8
@NAMED_OP = common dso_local global i32 0, align 4
@CPP_DL_ICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unspellable token %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpp_spell_token(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = call i32 @TOKEN_SPELL(%struct.TYPE_9__* %13)
  switch i32 %14, label %159 [
    i32 128, label %15
    i32 131, label %59
    i32 130, label %133
    i32 129, label %153
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DIGRAPH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i8**, i8*** @digraph_spellings, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @CPP_FIRST_DIGRAPH, align 8
  %29 = trunc i64 %28 to i32
  %30 = sub nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %23, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  br label %46

34:                                               ; preds = %15
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NAMED_OP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %58

42:                                               ; preds = %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i8* @TOKEN_NAME(%struct.TYPE_9__* %43)
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  %50 = load i8, i8* %48, align 1
  store i8 %50, i8* %10, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8, i8* %10, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  store i8 %54, i8* %55, align 1
  br label %47

57:                                               ; preds = %47
  br label %159

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %4, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @NODE_NAME(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @NODE_LEN(i32 %72)
  %74 = call i32 @memcpy(i8* %63, i8* %68, i64 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @NODE_LEN(i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %7, align 8
  br label %132

82:                                               ; preds = %59
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @NODE_NAME(i32 %86)
  store i8* %87, i8** %12, align 8
  store i64 0, i64* %11, align 8
  br label %88

88:                                               ; preds = %128, %82
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @NODE_LEN(i32 %93)
  %95 = icmp ult i64 %89, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %88
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, -128
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %96
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = call i32 @utf8_to_ucn(i8* %105, i8* %108)
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %11, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 10
  store i8* %115, i8** %7, align 8
  br label %127

116:                                              ; preds = %96
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @NODE_NAME(i32 %120)
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  store i8 %124, i8* %125, align 1
  br label %127

127:                                              ; preds = %116, %104
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %11, align 8
  br label %88

131:                                              ; preds = %88
  br label %132

132:                                              ; preds = %131, %62
  br label %159

133:                                              ; preds = %4
  %134 = load i8*, i8** %7, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @memcpy(i8* %134, i8* %139, i64 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %7, align 8
  br label %159

153:                                              ; preds = %4
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @CPP_DL_ICE, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = call i8* @TOKEN_NAME(%struct.TYPE_9__* %156)
  %158 = call i32 @cpp_error(i32* %154, i32 %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %4, %153, %133, %132, %57
  %160 = load i8*, i8** %7, align 8
  ret i8* %160
}

declare dso_local i32 @TOKEN_SPELL(%struct.TYPE_9__*) #1

declare dso_local i8* @TOKEN_NAME(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @NODE_NAME(i32) #1

declare dso_local i64 @NODE_LEN(i32) #1

declare dso_local i32 @utf8_to_ucn(i8*, i8*) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
