; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_alias.c_split_cmdline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_alias.c_split_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"cmdline ends with \\\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"unclosed quote\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_cmdline(i8* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 16, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i8** @malloc(i32 %15)
  %17 = load i8***, i8**** %5, align 8
  store i8** %16, i8*** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8***, i8**** %5, align 8
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  store i8* %18, i8** %24, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %156, %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %157

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %11, align 1
  %38 = load i8, i8* %10, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %96, label %40

40:                                               ; preds = %32
  %41 = load i8, i8* %11, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %69, %44
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isspace(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %59, %50
  %68 = phi i1 [ false, %50 ], [ %66, %59 ]
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %50

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 16
  store i32 %76, i32* %9, align 4
  %77 = load i8***, i8**** %5, align 8
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8** @realloc(i8** %78, i32 %82)
  %84 = load i8***, i8**** %5, align 8
  store i8** %83, i8*** %84, align 8
  br label %85

85:                                               ; preds = %74, %70
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8***, i8**** %5, align 8
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  store i8* %89, i8** %95, align 8
  br label %156

96:                                               ; preds = %40, %32
  %97 = load i8, i8* %10, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = load i8, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 39
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8, i8* %11, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 34
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %99
  %108 = load i8, i8* %11, align 1
  store i8 %108, i8* %10, align 1
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %155

111:                                              ; preds = %103, %96
  %112 = load i8, i8* %11, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* %10, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  store i8 0, i8* %10, align 1
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %154

120:                                              ; preds = %111
  %121 = load i8, i8* %11, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 92
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i8, i8* %10, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 39
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  store i8 %135, i8* %11, align 1
  %136 = load i8, i8* %11, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %128
  %139 = load i8***, i8**** %5, align 8
  %140 = load i8**, i8*** %139, align 8
  %141 = call i32 @free(i8** %140)
  %142 = load i8***, i8**** %5, align 8
  store i8** null, i8*** %142, align 8
  %143 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %143, i32* %3, align 4
  br label %172

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %124, %120
  %146 = load i8, i8* %11, align 1
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8 %146, i8* %151, align 1
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %145, %117
  br label %155

155:                                              ; preds = %154, %107
  br label %156

156:                                              ; preds = %155, %85
  br label %25

157:                                              ; preds = %25
  %158 = load i8*, i8** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i8, i8* %10, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i8***, i8**** %5, align 8
  %166 = load i8**, i8*** %165, align 8
  %167 = call i32 @free(i8** %166)
  %168 = load i8***, i8**** %5, align 8
  store i8** null, i8*** %168, align 8
  %169 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %157
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %164, %138
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
