; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_scan.c_get_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_scan.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i64* }

@source_lineno = common dso_local global i64 0, align 8
@lineno = common dso_local global i32 0, align 4
@INT_TOKEN = common dso_local global i32 0, align 4
@source_filename = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EOF = common dso_local global i32 0, align 4
@IDENTIFIER_TOKEN = common dso_local global i32 0, align 4
@CHAR_TOKEN = common dso_local global i32 0, align 4
@STRING_TOKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_token(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64* %9, i64** %11, align 8
  br label %12

12:                                               ; preds = %53, %18, %2
  store i32 32, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @skip_spaces(i32* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i64, i64* @source_lineno, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @source_lineno, align 8
  %21 = load i32, i32* @lineno, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @lineno, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 35
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call i32 @get_token(i32* %27, %struct.TYPE_8__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @INT_TOKEN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = call i64 @atoi(i64* %36)
  %38 = sub nsw i64 %37, 1
  store i64 %38, i64* @source_lineno, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @get_token(i32* %39, %struct.TYPE_8__* @source_filename)
  br label %41

41:                                               ; preds = %33, %26
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @getc(i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @EOF, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @EOF, align 4
  store i32 %49, i32* %3, align 4
  br label %137

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* @source_lineno, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @source_lineno, align 8
  %56 = load i32, i32* @lineno, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @lineno, align 4
  br label %12

58:                                               ; preds = %50
  br label %42

59:                                               ; preds = %23
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EOF, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @EOF, align 4
  store i32 %64, i32* %3, align 4
  br label %137

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @ISDIGIT(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %84, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @SSTRING_PUT(%struct.TYPE_8__* %71, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @getc(i32* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EOF, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @ISDIGIT(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %70, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %6, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @ungetc(i32 %87, i32* %88)
  %90 = load i32, i32* @INT_TOKEN, align 4
  store i32 %90, i32* %6, align 4
  br label %130

91:                                               ; preds = %65
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @ISIDST(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @scan_ident(i32* %96, %struct.TYPE_8__* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ungetc(i32 %100, i32* %101)
  %103 = load i32, i32* @IDENTIFIER_TOKEN, align 4
  store i32 %103, i32* %3, align 4
  br label %137

104:                                              ; preds = %91
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 39
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 34
  br i1 %109, label %110, label %126

110:                                              ; preds = %107, %104
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @scan_string(i32* %111, %struct.TYPE_8__* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ungetc(i32 %115, i32* %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 39
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @CHAR_TOKEN, align 4
  br label %124

122:                                              ; preds = %110
  %123 = load i32, i32* @STRING_TOKEN, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %3, align 4
  br label %137

126:                                              ; preds = %107
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @SSTRING_PUT(%struct.TYPE_8__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %86
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = call i32 @MAKE_SSTRING_SPACE(%struct.TYPE_8__* %131, i32 1)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %124, %95, %63, %48
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @skip_spaces(i32*, i32) #1

declare dso_local i64 @atoi(i64*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i32 @SSTRING_PUT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i64 @ISIDST(i32) #1

declare dso_local i32 @scan_ident(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @scan_string(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @MAKE_SSTRING_SPACE(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
