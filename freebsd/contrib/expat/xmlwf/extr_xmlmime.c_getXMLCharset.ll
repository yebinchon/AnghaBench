; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlmime.c_getXMLCharset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlmime.c_getXMLCharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
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
  br label %137

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
  br label %137

36:                                               ; preds = %30
  %37 = call i8* @getTok(i8** %5)
  store i8* %37, i8** %6, align 8
  %38 = call i8* @getTok(i8** %5)
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %136, %36
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %137

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 59
  br i1 %46, label %47, label %134

47:                                               ; preds = %42
  %48 = call i8* @getTok(i8** %5)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @matchkey(i8* %49, i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %133

53:                                               ; preds = %47
  %54 = call i8* @getTok(i8** %5)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %132

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 61
  br i1 %61, label %62, label %132

62:                                               ; preds = %57
  %63 = call i8* @getTok(i8** %5)
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %131

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 34
  br i1 %71, label %72, label %106

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  %78 = icmp ne i8* %75, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 92
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @CHARSET_MAX, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  %94 = icmp eq i8* %88, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 0, i8* %97, align 1
  br label %103

98:                                               ; preds = %87
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  store i8 %100, i8* %101, align 1
  br label %73

103:                                              ; preds = %95, %73
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  store i8 0, i8* %104, align 1
  br label %130

106:                                              ; preds = %66
  %107 = load i8*, i8** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load i32, i32* @CHARSET_MAX, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = icmp sgt i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %137

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %122, %117
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = icmp ne i8* %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  %125 = load i8, i8* %123, align 1
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  store i8 %125, i8* %126, align 1
  br label %118

128:                                              ; preds = %118
  %129 = load i8*, i8** %7, align 8
  store i8 0, i8* %129, align 1
  br label %137

130:                                              ; preds = %103
  br label %131

131:                                              ; preds = %130, %62
  br label %132

132:                                              ; preds = %131, %57, %53
  br label %137

133:                                              ; preds = %47
  br label %136

134:                                              ; preds = %42
  %135 = call i8* @getTok(i8** %5)
  store i8* %135, i8** %6, align 8
  br label %136

136:                                              ; preds = %134, %133
  br label %39

137:                                              ; preds = %24, %35, %132, %128, %116, %39
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
