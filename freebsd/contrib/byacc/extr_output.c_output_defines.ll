; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_defines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntokens = common dso_local global i32 0, align 4
@symbol_name = common dso_local global i8** null, align 8
@sflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"#define \00", align 1
@code_file = common dso_local global i32* null, align 8
@outline = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@symbol_value = common dso_local global i32* null, align 8
@defines_file = common dso_local global i32* null, align 8
@iflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"#define YYERRCODE %d\0A\00", align 1
@token_table = common dso_local global i64 0, align 8
@rflag = common dso_local global i64 0, align 8
@externs_file = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"#undef yytname\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"#define yytname yyname\0A\00", align 1
@dflag = common dso_local global i32 0, align 4
@unionized = common dso_local global i64 0, align 8
@union_file = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"extern YYSTYPE %slval;\0A\00", align 1
@symbol_prefix = common dso_local global i8* null, align 8
@locations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_defines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_defines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 2, i32* %4, align 4
  br label %6

6:                                                ; preds = %75, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ntokens, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %78

10:                                               ; preds = %6
  %11 = load i8**, i8*** @symbol_name, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @is_C_identifier(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %10
  %20 = load i32, i32* @sflag, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 34
  br i1 %26, label %27, label %74

27:                                               ; preds = %22, %19
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %42, %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = icmp ne i32 %40, 34
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @putc(i32 %43, i32* %44)
  br label %36

46:                                               ; preds = %36
  br label %59

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @putc(i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %48, label %58

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32*, i32** %2, align 8
  %61 = load i32*, i32** @code_file, align 8
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @outline, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @outline, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32*, i32** %2, align 8
  %68 = load i32*, i32** @symbol_value, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %66, %22, %10
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %6

78:                                               ; preds = %6
  %79 = load i32*, i32** %2, align 8
  %80 = load i32*, i32** @code_file, align 8
  %81 = icmp eq i32* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @outline, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @outline, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32*, i32** %2, align 8
  %87 = load i32*, i32** @defines_file, align 8
  %88 = icmp ne i32* %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @iflag, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89, %85
  %93 = load i32*, i32** %2, align 8
  %94 = load i32*, i32** @symbol_value, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i64, i64* @token_table, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %98
  %102 = load i64, i64* @rflag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load i32*, i32** %2, align 8
  %106 = load i32*, i32** @externs_file, align 8
  %107 = icmp ne i32* %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32*, i32** %2, align 8
  %110 = load i32*, i32** @code_file, align 8
  %111 = icmp eq i32* %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @outline, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @outline, align 4
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = load i32*, i32** @code_file, align 8
  %120 = icmp eq i32* %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @outline, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @outline, align 4
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %125)
  br label %127

127:                                              ; preds = %124, %104, %101, %98
  %128 = load i32*, i32** %2, align 8
  %129 = load i32*, i32** @defines_file, align 8
  %130 = icmp eq i32* %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* @iflag, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %131
  %135 = load i32, i32* @dflag, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %134, %127
  %138 = load i64, i64* @unionized, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load i64, i64* @union_file, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load i64, i64* @union_file, align 8
  %145 = call i32 @rewind(i64 %144)
  br label %146

146:                                              ; preds = %151, %143
  %147 = load i64, i64* @union_file, align 8
  %148 = call i32 @getc(i64 %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* @EOF, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32*, i32** %2, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @putc_code(i32* %152, i32 %153)
  br label %146

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %140
  %157 = load i32*, i32** %2, align 8
  %158 = load i8*, i8** @symbol_prefix, align 8
  %159 = call i32 (i32*, i8*, ...) @fprintf(i32* %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %156, %137
  br label %161

161:                                              ; preds = %160, %134, %131
  ret void
}

declare dso_local i64 @is_C_identifier(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @rewind(i64) #1

declare dso_local i32 @getc(i64) #1

declare dso_local i32 @putc_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
