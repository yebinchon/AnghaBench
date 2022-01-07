; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_output_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_output_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@DIGRAPH = common dso_local global i32 0, align 4
@digraph_spellings = common dso_local global i8** null, align 8
@CPP_FIRST_DIGRAPH = common dso_local global i64 0, align 8
@NAMED_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_output_token(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i8], align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @TOKEN_SPELL(%struct.TYPE_9__* %10)
  switch i32 %11, label %124 [
    i32 128, label %12
    i32 131, label %59
    i32 130, label %110
    i32 129, label %123
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DIGRAPH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load i8**, i8*** @digraph_spellings, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* @CPP_FIRST_DIGRAPH, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %20, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %43

31:                                               ; preds = %12
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NAMED_OP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %58

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i8* @TOKEN_NAME(%struct.TYPE_9__* %40)
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %51, %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @putc(i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %47, label %57

57:                                               ; preds = %51
  br label %124

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %2, %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @NODE_NAME(i32 %63)
  store i8* %64, i8** %8, align 8
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %106, %59
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @NODE_LEN(i32 %70)
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, -128
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = call i32 @utf8_to_ucn(i8* %82, i8* %85)
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %7, align 8
  %91 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @fwrite(i8* %91, i32 1, i32 10, i32* %92)
  br label %105

94:                                               ; preds = %73
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @NODE_NAME(i32 %98)
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @fputc(i8 zeroext %102, i32* %103)
  br label %105

105:                                              ; preds = %94, %81
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %65

109:                                              ; preds = %65
  br label %124

110:                                              ; preds = %2
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @fwrite(i8* %115, i32 1, i32 %120, i32* %121)
  br label %124

123:                                              ; preds = %2
  br label %124

124:                                              ; preds = %2, %123, %110, %109, %57
  ret void
}

declare dso_local i32 @TOKEN_SPELL(%struct.TYPE_9__*) #1

declare dso_local i8* @TOKEN_NAME(%struct.TYPE_9__*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i8* @NODE_NAME(i32) #1

declare dso_local i64 @NODE_LEN(i32) #1

declare dso_local i32 @utf8_to_ucn(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fputc(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
