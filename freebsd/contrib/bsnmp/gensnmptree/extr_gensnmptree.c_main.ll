; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@GEN_FUNCS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dEeFfhI:i:lp:t\00", align 1
@EOF = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"-E conflicts with earlier options\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"-e conflicts with earlier options\00", align 1
@GEN_FUNCS_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"-F conflicts with -f\00", align 1
@GEN_FUNCS_H = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"-f conflicts with -F\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@usgtxt = common dso_local global i8* null, align 8
@optarg = common dso_local global i8* null, align 8
@localincs = common dso_local global i32 0, align 4
@file_prefix = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"tree.c\00", align 1
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"prefix too long\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"-t conflicts with earlier options\00", align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@TOK_EOF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"-e requires arguments\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"object not found: %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"-t allows no arguments\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"tree generation allows no arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 129, i32* %6, align 4
  %14 = load i32, i32* @GEN_FUNCS_NONE, align 4
  store i32 %14, i32* %7, align 4
  store i8* null, i8** %8, align 8
  br label %15

15:                                               ; preds = %97, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %97 [
    i32 100, label %23
    i32 69, label %24
    i32 101, label %33
    i32 70, label %42
    i32 102, label %54
    i32 104, label %66
    i32 73, label %71
    i32 105, label %74
    i32 108, label %76
    i32 112, label %77
    i32 116, label %88
  ]

23:                                               ; preds = %21
  store i32 1, i32* @debug, align 4
  br label %97

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 131
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27, %24
  store i32 131, i32* %6, align 4
  br label %97

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 129
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 130
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36, %33
  store i32 130, i32* %6, align 4
  br label %97

42:                                               ; preds = %21
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GEN_FUNCS_NONE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GEN_FUNCS_C, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46, %42
  %53 = load i32, i32* @GEN_FUNCS_C, align 4
  store i32 %53, i32* %7, align 4
  br label %97

54:                                               ; preds = %21
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @GEN_FUNCS_NONE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GEN_FUNCS_H, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58, %54
  %65 = load i32, i32* @GEN_FUNCS_H, align 4
  store i32 %65, i32* %7, align 4
  br label %97

66:                                               ; preds = %21
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** @usgtxt, align 8
  %69 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = call i32 @exit(i32 0) #3
  unreachable

71:                                               ; preds = %21
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @path_new(i8* %72)
  br label %97

74:                                               ; preds = %21
  %75 = load i8*, i8** @optarg, align 8
  store i8* %75, i8** %8, align 8
  br label %97

76:                                               ; preds = %21
  store i32 1, i32* @localincs, align 4
  br label %97

77:                                               ; preds = %21
  %78 = load i8*, i8** @optarg, align 8
  store i8* %78, i8** @file_prefix, align 8
  %79 = load i8*, i8** @file_prefix, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* @MAXPATHLEN, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %77
  br label %97

88:                                               ; preds = %21
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 129
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 128
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91, %88
  store i32 128, i32* %6, align 4
  br label %97

97:                                               ; preds = %21, %96, %87, %76, %74, %71, %64, %52, %41, %32, %23
  br label %15

98:                                               ; preds = %15
  %99 = load i64, i64* @optind, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load i64, i64* @optind, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 %104
  store i8** %106, i8*** %5, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32*, i32** @stdin, align 8
  %111 = call i32 @input_new(i32* %110, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %123

112:                                              ; preds = %98
  %113 = load i8*, i8** %8, align 8
  %114 = call i32* @fopen(i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %114, i32** %10, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32*, i32** %10, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @input_new(i32* %120, i32* null, i8* %121)
  br label %123

123:                                              ; preds = %119, %109
  %124 = call i32 (...) @gettoken()
  %125 = call %struct.node* @parse_top(i32 %124)
  store %struct.node* %125, %struct.node** %11, align 8
  br label %126

126:                                              ; preds = %130, %123
  %127 = call i32 (...) @gettoken()
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* @TOK_EOF, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = call %struct.node* @parse_top(i32 %131)
  %133 = call i32 @merge(%struct.node** %11, %struct.node* %132)
  br label %126

134:                                              ; preds = %126
  %135 = load %struct.node*, %struct.node** %11, align 8
  %136 = icmp ne %struct.node* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.node*, %struct.node** %11, align 8
  %139 = call i32 @check_tree(%struct.node* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %6, align 4
  switch i32 %141, label %199 [
    i32 130, label %142
    i32 131, label %174
    i32 128, label %179
    i32 129, label %187
  ]

142:                                              ; preds = %140
  %143 = load i32, i32* %4, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %142
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load i32, i32* @stdout, align 4
  %154 = load %struct.node*, %struct.node** %11, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @gen_extract(i32 %153, %struct.node* %154, i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %152
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %162, %152
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %148

173:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %199

174:                                              ; preds = %140
  %175 = load i32, i32* %4, align 4
  %176 = load i8**, i8*** %5, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @make_enums(i32 %175, i8** %176, i32 %177)
  store i32 0, i32* %3, align 4
  br label %199

179:                                              ; preds = %140
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %179
  %185 = load %struct.node*, %struct.node** %11, align 8
  %186 = call i32 @gen_tree(%struct.node* %185, i32 0)
  store i32 0, i32* %3, align 4
  br label %199

187:                                              ; preds = %140
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %187
  %193 = load %struct.node*, %struct.node** %11, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @GEN_FUNCS_H, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @make_table(%struct.node* %193, i32 %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %173, %174, %184, %192, %140
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @path_new(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @input_new(i32*, i32*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local %struct.node* @parse_top(i32) #1

declare dso_local i32 @gettoken(...) #1

declare dso_local i32 @merge(%struct.node**, %struct.node*) #1

declare dso_local i32 @check_tree(%struct.node*) #1

declare dso_local i32 @gen_extract(i32, %struct.node*, i8*) #1

declare dso_local i32 @make_enums(i32, i8**, i32) #1

declare dso_local i32 @gen_tree(%struct.node*, i32) #1

declare dso_local i32 @make_table(%struct.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
