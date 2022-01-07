; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_ct.c_getXMLCharset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_ct.c_getXMLCharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@isXml = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@CHARSET_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getXMLCharset(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = call i8* @getTok(i8** %5)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @matchkey(i8* %12, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %26

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @matchkey(i8* %20, i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %143

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %16
  %27 = call i8* @getTok(i8** %5)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 47
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %26
  br label %143

36:                                               ; preds = %30
  %37 = call i8* @getTok(i8** %5)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @matchkey(i8* %38, i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* @isXml, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = call i8* @getTok(i8** %5)
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %142, %43
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %143

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 59
  br i1 %52, label %53, label %140

53:                                               ; preds = %48
  %54 = call i8* @getTok(i8** %5)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @matchkey(i8* %55, i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %139

59:                                               ; preds = %53
  %60 = call i8* @getTok(i8** %5)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %138

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 61
  br i1 %67, label %68, label %138

68:                                               ; preds = %63
  %69 = call i8* @getTok(i8** %5)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %137

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 34
  br i1 %77, label %78, label %112

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %104, %78
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = icmp ne i8* %81, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 92
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* @CHARSET_MAX, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = getelementptr inbounds i8, i8* %98, i64 -1
  %100 = icmp eq i8* %94, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 0, i8* %103, align 1
  br label %109

104:                                              ; preds = %93
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %7, align 8
  store i8 %106, i8* %107, align 1
  br label %79

109:                                              ; preds = %101, %79
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 0, i8* %110, align 1
  br label %136

112:                                              ; preds = %72
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = load i32, i32* @CHARSET_MAX, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %143

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %128, %123
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = icmp ne i8* %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  %131 = load i8, i8* %129, align 1
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 %131, i8* %132, align 1
  br label %124

134:                                              ; preds = %124
  %135 = load i8*, i8** %7, align 8
  store i8 0, i8* %135, align 1
  br label %143

136:                                              ; preds = %109
  br label %137

137:                                              ; preds = %136, %68
  br label %138

138:                                              ; preds = %137, %63, %59
  br label %139

139:                                              ; preds = %138, %53
  br label %142

140:                                              ; preds = %48
  %141 = call i8* @getTok(i8** %5)
  store i8* %141, i8** %6, align 8
  br label %142

142:                                              ; preds = %140, %139
  br label %45

143:                                              ; preds = %24, %35, %134, %122, %45
  ret void
}

declare dso_local i8* @getTok(i8**) #1

declare dso_local i64 @matchkey(i8*, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
