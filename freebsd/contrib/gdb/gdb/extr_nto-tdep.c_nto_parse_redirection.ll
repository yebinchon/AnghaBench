; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c_nto_parse_redirection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c_nto_parse_redirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @nto_parse_redirection(i8** %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %26, %4
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* %17, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %17, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %17, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load i32, i32* %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8** null, i8*** %5, align 8
  br label %154

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8** @xcalloc(i32 %35, i32 8)
  store i8** %36, i8*** %10, align 8
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %143, %33
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %146

42:                                               ; preds = %38
  %43 = load i8**, i8*** %6, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %14, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 62
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** %14, align 8
  store i8* %59, i8** %12, align 8
  br label %67

60:                                               ; preds = %52
  %61 = load i8**, i8*** %6, align 8
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %12, align 8
  br label %67

67:                                               ; preds = %60, %58
  br label %142

68:                                               ; preds = %42
  %69 = load i8*, i8** %14, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 60
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i8*, i8** %14, align 8
  store i8* %80, i8** %11, align 8
  br label %88

81:                                               ; preds = %73
  %82 = load i8**, i8*** %6, align 8
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %81, %79
  br label %141

89:                                               ; preds = %68
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %14, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 50
  br i1 %94, label %95, label %129

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %14, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 62
  br i1 %100, label %101, label %129

101:                                              ; preds = %95
  %102 = load i8*, i8** %14, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 38
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 49
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i8*, i8** %12, align 8
  store i8* %113, i8** %13, align 8
  br label %128

114:                                              ; preds = %106, %101
  %115 = load i8*, i8** %14, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i8*, i8** %14, align 8
  store i8* %119, i8** %13, align 8
  br label %127

120:                                              ; preds = %114
  %121 = load i8**, i8*** %6, align 8
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %120, %118
  br label %128

128:                                              ; preds = %127, %112
  br label %140

129:                                              ; preds = %95, %89
  %130 = load i8**, i8*** %6, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %10, align 8
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  store i8* %134, i8** %139, align 8
  br label %140

140:                                              ; preds = %129, %128
  br label %141

141:                                              ; preds = %140, %88
  br label %142

142:                                              ; preds = %141, %67
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %17, align 4
  br label %38

146:                                              ; preds = %38
  %147 = load i8*, i8** %11, align 8
  %148 = load i8**, i8*** %7, align 8
  store i8* %147, i8** %148, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i8**, i8*** %8, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i8**, i8*** %9, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i8**, i8*** %10, align 8
  store i8** %153, i8*** %5, align 8
  br label %154

154:                                              ; preds = %146, %32
  %155 = load i8**, i8*** %5, align 8
  ret i8** %155
}

declare dso_local i8** @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
