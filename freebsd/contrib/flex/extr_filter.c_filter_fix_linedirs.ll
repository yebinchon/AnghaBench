; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_filter.c_filter_fix_linedirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_filter.c_filter_fix_linedirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"flex_alloc failed in filter_fix_linedirs\00", align 1
@stdin = common dso_local global i32 0, align 4
@regex_linedir = common dso_local global i32 0, align 4
@outfilename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@headerfilename = common dso_local global i8* null, align 8
@MAXLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@regex_blank_line = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"error writing output file %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"error closing output file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_fix_linedirs(%struct.filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.filter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.filter* %0, %struct.filter** %3, align 8
  store i32 512, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.filter*, %struct.filter** %3, align 8
  %17 = icmp ne %struct.filter* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %180

19:                                               ; preds = %1
  %20 = call i64 @flex_alloc(i32 512)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @flexerror(i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %142, %137, %27
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @stdin, align 4
  %31 = call i64 @fgets(i8* %29, i32 512, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %148

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %39, label %127

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %42 = call i64 @regexec(i32* @regex_linedir, i8* %40, i32 3, i32* %41, i32 0)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %127

44:                                               ; preds = %39
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 1
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @regmatch_strtol(i32* %45, i8* %46, i32* null, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 2
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @regmatch_dup(i32* %48, i8* %49)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** @outfilename, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i8*, i8** @outfilename, align 8
  br label %57

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = call i64 @strcmp(i8* %51, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** @headerfilename, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** @headerfilename, align 8
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = call i64 @strcmp(i8* %62, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %68, %57
  %73 = load i32, i32* @MAXLINE, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %14, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %15, align 8
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** %12, align 8
  store i8* %76, i8** %13, align 8
  br label %78

78:                                               ; preds = %110, %72
  %79 = load i8*, i8** %13, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = ptrtoint i8* %76 to i64
  %82 = sub i64 %80, %81
  %83 = load i32, i32* @MAXLINE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %87, %78
  %93 = phi i1 [ false, %78 ], [ %91, %87 ]
  br i1 %93, label %94, label %116

94:                                               ; preds = %92
  %95 = load i8*, i8** %12, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 92
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %13, align 8
  store i8 92, i8* %100, align 1
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i8*, i8** %12, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 34
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %13, align 8
  store i8 92, i8* %108, align 1
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %12, align 8
  %113 = load i8, i8* %111, align 1
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %13, align 8
  store i8 %113, i8* %114, align 1
  br label %78

116:                                              ; preds = %92
  %117 = load i8*, i8** %13, align 8
  store i8 0, i8* %117, align 1
  store i32 1, i32* %7, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @snprintf(i8* %118, i32 512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %120, i8* %76)
  %122 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %122)
  br label %124

123:                                              ; preds = %68
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %116
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @free(i8* %125)
  store i32 0, i32* %8, align 4
  br label %142

127:                                              ; preds = %39, %33
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load i8*, i8** %4, align 8
  %132 = call i64 @regexec(i32* @regex_blank_line, i8* %131, i32 0, i32* null, i32 0)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %28

138:                                              ; preds = %134
  store i32 1, i32* %8, align 4
  br label %139

139:                                              ; preds = %138
  br label %141

140:                                              ; preds = %130, %127
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* @stdout, align 4
  %145 = call i32 @fputs(i8* %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %28

148:                                              ; preds = %28
  %149 = load i32, i32* @stdout, align 4
  %150 = call i32 @fflush(i32 %149)
  %151 = load i32, i32* @stdout, align 4
  %152 = call i64 @ferror(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i8*, i8** @outfilename, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i8*, i8** @outfilename, align 8
  br label %161

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i8* [ %159, %158 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %160 ]
  %163 = call i32 @lerrsf(i32 %155, i8* %162)
  br label %179

164:                                              ; preds = %148
  %165 = load i32, i32* @stdout, align 4
  %166 = call i64 @fclose(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i8*, i8** @outfilename, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i8*, i8** @outfilename, align 8
  br label %175

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i8* [ %173, %172 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %174 ]
  %177 = call i32 @lerrsf(i32 %169, i8* %176)
  br label %178

178:                                              ; preds = %175, %164
  br label %179

179:                                              ; preds = %178, %161
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %18
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i64 @flex_alloc(i32) #1

declare dso_local i32 @flexerror(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @regmatch_strtol(i32*, i8*, i32*, i32) #1

declare dso_local i8* @regmatch_dup(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @lerrsf(i32, i8*) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
