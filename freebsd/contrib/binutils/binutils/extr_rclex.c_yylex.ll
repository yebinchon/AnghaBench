; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_yylex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__, %struct.TYPE_6__, i32*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@rclex_tok = common dso_local global i64* null, align 8
@rclex_tok_pos = common dso_local global i64 0, align 8
@rc_lineno = common dso_local global i32 0, align 4
@IGNORED_TOKEN = common dso_local global i32 0, align 4
@BEG = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NUMBER = common dso_local global i32 0, align 4
@rcdata_mode = common dso_local global i32 0, align 4
@QUOTEDUNISTRING = common dso_local global i32 0, align 4
@SIZEDUNISTRING = common dso_local global i32 0, align 4
@BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BLOCK expects a string as argument.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"StringFileInfo\00", align 1
@BLOCKSTRINGFILEINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"VarFileInfo\00", align 1
@BLOCKVARFILEINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load i64*, i64** @rclex_tok, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @rclex_tok_add_char(i32 -1)
  br label %11

11:                                               ; preds = %9, %0
  br label %12

12:                                               ; preds = %195, %11
  br label %13

13:                                               ; preds = %26, %12
  store i64 0, i64* @rclex_tok_pos, align 8
  %14 = load i64*, i64** @rclex_tok, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 0, i64* %15, align 8
  %16 = call i32 (...) @rclex_readch()
  store i32 %16, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %201

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @rc_lineno, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @rc_lineno, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %27, 32
  br i1 %28, label %13, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %115 [
    i32 35, label %31
    i32 123, label %46
    i32 125, label %49
    i32 48, label %52
    i32 49, label %52
    i32 50, label %52
    i32 51, label %52
    i32 52, label %52
    i32 53, label %52
    i32 54, label %52
    i32 55, label %52
    i32 56, label %52
    i32 57, label %52
    i32 34, label %62
    i32 76, label %84
    i32 108, label %84
  ]

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %41, %31
  %33 = call signext i8 (...) @rclex_peekch()
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 10
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call i32 (...) @rclex_readch()
  br label %32

43:                                               ; preds = %39
  %44 = call i32 (...) @cpp_line()
  %45 = load i32, i32* @IGNORED_TOKEN, align 4
  store i32 %45, i32* %5, align 4
  br label %194

46:                                               ; preds = %29
  %47 = load i32, i32* @BEG, align 4
  %48 = call i32 @IGNORE_CPP(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %194

49:                                               ; preds = %29
  %50 = load i32, i32* @END, align 4
  %51 = call i32 @IGNORE_CPP(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %194

52:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @read_digit(i32 %53)
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 4, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 4, i32 0), align 8
  %55 = call signext i8 (...) @rclex_peekch()
  %56 = sext i8 %55 to i32
  switch i32 %56, label %59 [
    i32 108, label %57
    i32 76, label %57
  ]

57:                                               ; preds = %52, %52
  %58 = call i32 (...) @rclex_readch()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 4, i32 0), align 8
  br label %59

59:                                               ; preds = %52, %57
  %60 = load i32, i32* @NUMBER, align 4
  %61 = call i32 @IGNORE_CPP(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %194

62:                                               ; preds = %29
  %63 = call i32 (...) @rclex_string()
  %64 = load i32, i32* @rcdata_mode, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 130, i32 129
  %69 = call i32 @IGNORE_CPP(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @IGNORED_TOKEN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %194

74:                                               ; preds = %62
  %75 = call i8* @handle_quotes(i8** %4)
  store i8* %75, i8** %2, align 8
  %76 = load i32, i32* @rcdata_mode, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %2, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 0), align 8
  br label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %4, align 8
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 1, i32 1), align 8
  %82 = load i8*, i8** %2, align 8
  store i8* %82, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 1, i32 0), align 8
  br label %83

83:                                               ; preds = %80, %78
  br label %194

84:                                               ; preds = %29, %29
  %85 = call signext i8 (...) @rclex_peekch()
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = call i32 (...) @rclex_readch()
  %90 = call i32 (...) @rclex_string()
  %91 = load i32, i32* @rcdata_mode, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @QUOTEDUNISTRING, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @SIZEDUNISTRING, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @IGNORE_CPP(i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @IGNORED_TOKEN, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %194

104:                                              ; preds = %97
  %105 = call i32* @handle_uniquotes(i8** %4)
  store i32* %105, i32** %3, align 8
  %106 = load i32, i32* @rcdata_mode, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %3, align 8
  store i32* %109, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 3), align 8
  br label %113

110:                                              ; preds = %104
  %111 = load i8*, i8** %4, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 2, i32 1), align 8
  %112 = load i32*, i32** %3, align 8
  store i32* %112, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 2, i32 0), align 8
  br label %113

113:                                              ; preds = %110, %108
  br label %194

114:                                              ; preds = %84
  br label %115

115:                                              ; preds = %29, %114
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @ISIDST(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 36
  br i1 %121, label %122, label %191

122:                                              ; preds = %119, %115
  br label %123

123:                                              ; preds = %141, %122
  %124 = call signext i8 (...) @rclex_peekch()
  %125 = sext i8 %124 to i32
  store i32 %125, i32* %5, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @ISIDNUM(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 36
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 46
  br label %137

137:                                              ; preds = %134, %131, %127
  %138 = phi i1 [ true, %131 ], [ true, %127 ], [ %136, %134 ]
  br label %139

139:                                              ; preds = %137, %123
  %140 = phi i1 [ false, %123 ], [ %138, %137 ]
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = call i32 (...) @rclex_readch()
  br label %123

143:                                              ; preds = %139
  %144 = load i64*, i64** @rclex_tok, align 8
  %145 = call i32 @rclex_translatekeyword(i64* %144)
  %146 = call i32 @IGNORE_CPP(i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i64*, i64** @rclex_tok, align 8
  %151 = call i32 @strlen(i64* %150)
  %152 = add nsw i32 %151, 1
  %153 = call i8* @get_string(i32 %152)
  store i8* %153, i8** %2, align 8
  %154 = load i8*, i8** %2, align 8
  %155 = load i64*, i64** @rclex_tok, align 8
  %156 = call i32 @strcpy(i8* %154, i64* %155)
  %157 = load i8*, i8** %2, align 8
  store i8* %157, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 0), align 8
  br label %190

158:                                              ; preds = %143
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @BLOCK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %158
  store i8* null, i8** %6, align 8
  %163 = call i32 @yylex()
  switch i32 %163, label %168 [
    i32 128, label %164
    i32 130, label %164
    i32 129, label %166
  ]

164:                                              ; preds = %162, %162
  %165 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 0), align 8
  store i8* %165, i8** %6, align 8
  br label %168

166:                                              ; preds = %162
  %167 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 1, i32 0), align 8
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @yylval, i32 0, i32 0), align 8
  store i8* %167, i8** %6, align 8
  br label %168

168:                                              ; preds = %162, %166, %164
  %169 = load i8*, i8** %6, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = call i32 @rcparse_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @IGNORED_TOKEN, align 4
  store i32 %173, i32* %5, align 4
  br label %188

174:                                              ; preds = %168
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* @BLOCKSTRINGFILEINFO, align 4
  store i32 %179, i32* %5, align 4
  br label %187

180:                                              ; preds = %174
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @BLOCKVARFILEINFO, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %180
  br label %187

187:                                              ; preds = %186, %178
  br label %188

188:                                              ; preds = %187, %171
  br label %189

189:                                              ; preds = %188, %158
  br label %190

190:                                              ; preds = %189, %149
  br label %194

191:                                              ; preds = %119
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @IGNORE_CPP(i32 %192)
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %191, %190, %113, %103, %83, %73, %59, %49, %46, %43
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @IGNORED_TOKEN, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %12, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %1, align 4
  br label %201

201:                                              ; preds = %199, %18
  %202 = load i32, i32* %1, align 4
  ret i32 %202
}

declare dso_local i32 @rclex_tok_add_char(i32) #1

declare dso_local i32 @rclex_readch(...) #1

declare dso_local signext i8 @rclex_peekch(...) #1

declare dso_local i32 @cpp_line(...) #1

declare dso_local i32 @IGNORE_CPP(i32) #1

declare dso_local i32 @read_digit(i32) #1

declare dso_local i32 @rclex_string(...) #1

declare dso_local i8* @handle_quotes(i8**) #1

declare dso_local i32* @handle_uniquotes(i8**) #1

declare dso_local i32 @ISIDST(i32) #1

declare dso_local i32 @ISIDNUM(i32) #1

declare dso_local i32 @rclex_translatekeyword(i64*) #1

declare dso_local i8* @get_string(i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @strcpy(i8*, i64*) #1

declare dso_local i32 @rcparse_warning(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
