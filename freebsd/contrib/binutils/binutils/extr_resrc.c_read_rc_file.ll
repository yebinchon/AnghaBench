; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_read_rc_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_read_rc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ISTREAM_FILE = common dso_local global i32 0, align 4
@ISTREAM_PIPE = common dso_local global i32 0, align 4
@istream_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s %s %s%s%s\00", align 1
@cpp_pipe = common dso_local global i64 0, align 8
@DEFAULT_PREPROCESSOR = common dso_local global i8* null, align 8
@program_name = common dso_local global i8* null, align 8
@rc_filename = common dso_local global i8* null, align 8
@rc_lineno = common dso_local global i32 0, align 4
@fontdirs = common dso_local global i32* null, align 8
@resources = common dso_local global i32* null, align 8
@EXECUTABLE_SUFFIX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_rc_file(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @filename_need_quotes(i8* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ISTREAM_FILE, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @ISTREAM_PIPE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* @istream_type, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add nsw i32 %41, %43
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %44, %46
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %47, %50
  %52 = add nsw i32 %51, 10
  %53 = call i8* @xmalloc(i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %56, i8* %57, i8* %58, i8* %59)
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @open_input_stream(i8* %61)
  store i64 %62, i64* @cpp_pipe, align 8
  br label %149

63:                                               ; preds = %36
  %64 = load i8*, i8** @DEFAULT_PREPROCESSOR, align 8
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** @program_name, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %66, %68
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %69, %71
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %72, %74
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %75, %78
  %80 = add nsw i32 %79, 10
  %81 = call i8* @xmalloc(i32 %80)
  store i8* %81, i8** %11, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %13, align 8
  %82 = load i8*, i8** @program_name, align 8
  store i8* %82, i8** %15, align 8
  br label %83

83:                                               ; preds = %102, %63
  %84 = load i8*, i8** %15, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i8*, i8** %15, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 45
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i8*, i8** %15, align 8
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i8*, i8** %15, align 8
  store i8* %100, i8** %14, align 8
  store i8* null, i8** %13, align 8
  br label %101

101:                                              ; preds = %99, %94
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %15, align 8
  br label %83

105:                                              ; preds = %83
  store i64 0, i64* @cpp_pipe, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** @program_name, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** @program_name, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = add nsw i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @look_for_default(i8* %109, i8* %110, i32 %117, i8* %118, i8* %119)
  store i64 %120, i64* @cpp_pipe, align 8
  br label %121

121:                                              ; preds = %108, %105
  %122 = load i8*, i8** %14, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  %125 = load i64, i64* @cpp_pipe, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %11, align 8
  %129 = load i8*, i8** @program_name, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** @program_name, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = add nsw i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = load i8*, i8** %8, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @look_for_default(i8* %128, i8* %129, i32 %136, i8* %137, i8* %138)
  store i64 %139, i64* @cpp_pipe, align 8
  br label %140

140:                                              ; preds = %127, %124, %121
  %141 = load i64, i64* @cpp_pipe, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i64 @look_for_default(i8* %144, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %145, i8* %146)
  store i64 %147, i64* @cpp_pipe, align 8
  br label %148

148:                                              ; preds = %143, %140
  br label %149

149:                                              ; preds = %148, %39
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i8*, i8** %6, align 8
  %153 = call i8* @xstrdup(i8* %152)
  store i8* %153, i8** @rc_filename, align 8
  store i32 1, i32* @rc_lineno, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, -1
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @rcparse_set_language(i32 %157)
  br label %159

159:                                              ; preds = %156, %149
  %160 = call i32 (...) @yyparse()
  %161 = call i32 (...) @rcparse_discard_strings()
  %162 = call i32 (...) @close_input_stream()
  %163 = load i32*, i32** @fontdirs, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 (...) @define_fontdirs()
  br label %167

167:                                              ; preds = %165, %159
  %168 = load i8*, i8** @rc_filename, align 8
  %169 = call i32 @free(i8* %168)
  store i8* null, i8** @rc_filename, align 8
  %170 = load i32*, i32** @resources, align 8
  ret i32* %170
}

declare dso_local i64 @filename_need_quotes(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @open_input_stream(i8*) #1

declare dso_local i64 @look_for_default(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @rcparse_set_language(i32) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @rcparse_discard_strings(...) #1

declare dso_local i32 @close_input_stream(...) #1

declare dso_local i32 @define_fontdirs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
