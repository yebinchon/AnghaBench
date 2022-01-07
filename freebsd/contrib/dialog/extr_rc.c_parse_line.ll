; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_rc.c_parse_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_rc.c_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_EMPTY = common dso_local global i32 0, align 4
@LINE_ERROR = common dso_local global i32 0, align 4
@LINE_EQUALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_line(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @skip_whitespace(i8* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @LINE_EMPTY, align 4
  store i32 %20, i32* %4, align 4
  br label %178

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @LINE_EMPTY, align 4
  store i32 %30, i32* %4, align 4
  br label %178

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 61
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @LINE_ERROR, align 4
  store i32 %40, i32* %4, align 4
  br label %178

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %77, %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @UCH(i8 signext %55)
  %57 = call i64 @isblank(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 61
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %67, %59, %50
  %76 = phi i1 [ false, %59 ], [ false, %50 ], [ %74, %67 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %50

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @LINE_ERROR, align 4
  store i32 %89, i32* %4, align 4
  br label %178

90:                                               ; preds = %80
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 61
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  br label %126

104:                                              ; preds = %90
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @skip_whitespace(i8* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 61
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i32, i32* @LINE_ERROR, align 4
  store i32 %121, i32* %4, align 4
  br label %178

122:                                              ; preds = %104
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125, %98
  br label %127

127:                                              ; preds = %126
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @skip_whitespace(i8* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i32, i32* @LINE_ERROR, align 4
  store i32 %139, i32* %4, align 4
  br label %178

140:                                              ; preds = %127
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8**, i8*** %7, align 8
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %140
  %147 = load i8**, i8*** %7, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strlen(i8* %148)
  %150 = trunc i64 %149 to i32
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %167, %146
  %153 = load i8**, i8*** %7, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = call i32 @UCH(i8 signext %158)
  %160 = call i64 @isblank(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load i32, i32* %8, align 4
  %164 = icmp sgt i32 %163, 0
  br label %165

165:                                              ; preds = %162, %152
  %166 = phi i1 [ false, %152 ], [ %164, %162 ]
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %8, align 4
  br label %152

170:                                              ; preds = %165
  %171 = load i8**, i8*** %7, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 0, i8* %176, align 1
  %177 = load i32, i32* @LINE_EQUALS, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %170, %138, %120, %88, %39, %29, %19
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @skip_whitespace(i8*, i32) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i32 @UCH(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
