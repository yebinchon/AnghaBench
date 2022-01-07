; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_locate_first_half.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_locate_first_half.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"malformed template specification in command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32*)* @locate_first_half to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @locate_first_half(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @find_toplevel_char(i8* %12, i8 signext 44)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  store i32 1, i32* %30, align 4
  %31 = load i8**, i8*** %3, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %38

36:                                               ; preds = %21
  %37 = load i32*, i32** %4, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %39

39:                                               ; preds = %130, %38
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %133

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 60
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @find_template_name_end(i8* %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @is_objc_method_format(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %133

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %100, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 58
  br i1 %84, label %100, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = call i8* @strchr(i8* %87, i8 signext 58)
  %89 = icmp eq i8* %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %85, %73
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %85, %79, %67, %63
  br label %133

101:                                              ; preds = %96, %90
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 46
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext 58)
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  store i8* %112, i8** %7, align 8
  br label %113

113:                                              ; preds = %125, %111
  %114 = load i8*, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 46
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** %7, align 8
  store i8* %123, i8** %6, align 8
  br label %124

124:                                              ; preds = %122, %117
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  br label %113

128:                                              ; preds = %113
  br label %133

129:                                              ; preds = %107, %101
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  br label %39

133:                                              ; preds = %128, %100, %62, %39
  br label %134

134:                                              ; preds = %148, %133
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 9
  br label %146

146:                                              ; preds = %140, %134
  %147 = phi i1 [ true, %134 ], [ %145, %140 ]
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %6, align 8
  br label %134

151:                                              ; preds = %146
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 -1
  %158 = call i8* @strchr(i8* %157, i8 signext 34)
  store i8* %158, i8** %10, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  %162 = load i8*, i8** %10, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i8*, i8** %10, align 8
  store i8 0, i8* %168, align 1
  br label %169

169:                                              ; preds = %167, %161, %155
  br label %170

170:                                              ; preds = %169, %151
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i8*, i8** %5, align 8
  store i8 44, i8* %174, align 1
  br label %175

175:                                              ; preds = %173, %170
  %176 = load i8*, i8** %6, align 8
  ret i8* %176
}

declare dso_local i8* @find_toplevel_char(i8*, i8 signext) #1

declare dso_local i8* @find_template_name_end(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @is_objc_method_format(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
