; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_regcomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_regcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32*, i32, i32, i64, i64, i64 }

@REG_EXTENDED = common dso_local global i32 0, align 4
@RE_SYNTAX_POSIX_EXTENDED = common dso_local global i32 0, align 4
@RE_SYNTAX_POSIX_BASIC = common dso_local global i32 0, align 4
@BYTEWIDTH = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@CHAR_SET_SIZE = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@REG_NEWLINE = common dso_local global i32 0, align 4
@RE_DOT_NEWLINE = common dso_local global i32 0, align 4
@RE_HAT_LISTS_NOT_NEWLINE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@REG_ERPAREN = common dso_local global i64 0, align 8
@REG_EPAREN = common dso_local global i64 0, align 8
@REG_NOERROR = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regcomp(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @REG_EXTENDED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @RE_SYNTAX_POSIX_EXTENDED, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @RE_SYNTAX_POSIX_BASIC, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @BYTEWIDTH, align 4
  %28 = shl i32 1, %27
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @REG_ICASE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %19
  %38 = load i32, i32* @CHAR_SET_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i64, i64* @REG_ESPACE, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %145

53:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @CHAR_SET_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @ISUPPER(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @TOLOWER(i32 %63)
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %54

78:                                               ; preds = %54
  br label %82

79:                                               ; preds = %19
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %79, %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @REG_NEWLINE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i32, i32* @RE_DOT_NEWLINE, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @RE_HAT_LISTS_NOT_NEWLINE, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  br label %100

97:                                               ; preds = %82
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %87
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @REG_NOSUB, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = call i64 @byte_regex_compile(i8* %110, i32 %112, i32 %113, %struct.TYPE_6__* %114)
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @REG_ERPAREN, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %100
  %120 = load i64, i64* @REG_EPAREN, align 8
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %119, %100
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @REG_NOERROR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = call i32 @re_compile_fastmap(%struct.TYPE_6__* %131)
  %133 = icmp eq i32 %132, -2
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i8* null, i8** %140, align 8
  br label %141

141:                                              ; preds = %134, %130
  br label %142

142:                                              ; preds = %141, %125, %121
  %143 = load i64, i64* %8, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %142, %50
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @ISUPPER(i32) #1

declare dso_local i32 @TOLOWER(i32) #1

declare dso_local i64 @byte_regex_compile(i8*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @re_compile_fastmap(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
