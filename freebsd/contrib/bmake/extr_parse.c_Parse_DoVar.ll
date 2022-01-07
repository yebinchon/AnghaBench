; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_DoVar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_DoVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i8* null, align 8
@oldVars = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VARF_WANTRES = common dso_local global i32 0, align 4
@VARF_ASSIGN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VAR_CMD = common dso_local global i32* null, align 8
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@PARSE_WARNING = common dso_local global i32 0, align 4
@MAKEOVERRIDES = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".CURDIR\00", align 1
@MAKE_JOB_PREFIX = common dso_local global i8* null, align 8
@MAKE_EXPORTED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Parse_DoVar(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  br label %14

29:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %79, %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 61
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ true, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %82

42:                                               ; preds = %40
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 40
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 123
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %79

55:                                               ; preds = %47
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 41
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 125
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %79

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isspace(i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %71, %68
  br label %79

79:                                               ; preds = %78, %65, %52
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  br label %32

82:                                               ; preds = %40
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  store i8 0, i8* %85, align 1
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  switch i32 %89, label %105 [
    i32 43, label %90
    i32 63, label %92
    i32 58, label %101
    i32 33, label %103
  ]

90:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  %91 = load i8*, i8** %7, align 8
  store i8 0, i8* %91, align 1
  br label %106

92:                                               ; preds = %82
  %93 = load i8*, i8** %7, align 8
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i64 @Var_Exists(i8* %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %229

99:                                               ; preds = %92
  store i32 3, i32* %6, align 4
  br label %100

100:                                              ; preds = %99
  br label %106

101:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  %102 = load i8*, i8** %7, align 8
  store i8 0, i8* %102, align 1
  br label %106

103:                                              ; preds = %82
  store i32 2, i32* %6, align 4
  %104 = load i8*, i8** %7, align 8
  store i8 0, i8* %104, align 1
  br label %106

105:                                              ; preds = %82
  store i32 3, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %103, %101, %100, %90
  br label %107

107:                                              ; preds = %112, %106
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @isspace(i8 zeroext %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  br label %107

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i8*, i8** %3, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @Var_Append(i8* %119, i8* %120, i32* %121)
  br label %189

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load i8*, i8** @oldVars, align 8
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** @FALSE, align 8
  store i8* %128, i8** @oldVars, align 8
  %129 = load i8*, i8** %3, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i64 @Var_Exists(i8* %129, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load i8*, i8** %3, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @Var_Set(i8* %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %135, i32 0)
  br label %137

137:                                              ; preds = %133, %126
  %138 = load i8*, i8** %5, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* @VARF_WANTRES, align 4
  %141 = load i32, i32* @VARF_ASSIGN, align 4
  %142 = or i32 %140, %141
  %143 = call i8* @Var_Subst(i32* null, i8* %138, i32* %139, i32 %142)
  store i8* %143, i8** %5, align 8
  %144 = load i8*, i8** %10, align 8
  store i8* %144, i8** @oldVars, align 8
  %145 = load i8*, i8** @TRUE, align 8
  store i8* %145, i8** %8, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @Var_Set(i8* %146, i8* %147, i32* %148, i32 0)
  br label %188

150:                                              ; preds = %123
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %182

153:                                              ; preds = %150
  %154 = load i8*, i8** %5, align 8
  %155 = call i32* @strchr(i8* %154, i8 signext 36)
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i8*, i8** %5, align 8
  %159 = load i32*, i32** @VAR_CMD, align 8
  %160 = load i32, i32* @VARF_UNDEFERR, align 4
  %161 = load i32, i32* @VARF_WANTRES, align 4
  %162 = or i32 %160, %161
  %163 = call i8* @Var_Subst(i32* null, i8* %158, i32* %159, i32 %162)
  store i8* %163, i8** %5, align 8
  %164 = load i8*, i8** @TRUE, align 8
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %157, %153
  %166 = load i8*, i8** %5, align 8
  %167 = call i8* @Cmd_Exec(i8* %166, i8** %12)
  store i8* %167, i8** %11, align 8
  %168 = load i8*, i8** %3, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @Var_Set(i8* %168, i8* %169, i32* %170, i32 0)
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @free(i8* %172)
  %174 = load i8*, i8** %12, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %165
  %177 = load i32, i32* @PARSE_WARNING, align 4
  %178 = load i8*, i8** %12, align 8
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @Parse_Error(i32 %177, i8* %178, i8* %179)
  br label %181

181:                                              ; preds = %176, %165
  br label %187

182:                                              ; preds = %150
  %183 = load i8*, i8** %3, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @Var_Set(i8* %183, i8* %184, i32* %185, i32 0)
  br label %187

187:                                              ; preds = %182, %181
  br label %188

188:                                              ; preds = %187, %137
  br label %189

189:                                              ; preds = %188, %118
  %190 = load i8*, i8** %3, align 8
  %191 = load i8*, i8** @MAKEOVERRIDES, align 8
  %192 = call i64 @strcmp(i8* %190, i8* %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i8*, i8** @FALSE, align 8
  %196 = call i32 @Main_ExportMAKEFLAGS(i8* %195)
  br label %223

197:                                              ; preds = %189
  %198 = load i8*, i8** %3, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @Dir_InitCur(i8* %202)
  %204 = call i32 (...) @Dir_SetPATH()
  br label %222

205:                                              ; preds = %197
  %206 = load i8*, i8** %3, align 8
  %207 = load i8*, i8** @MAKE_JOB_PREFIX, align 8
  %208 = call i64 @strcmp(i8* %206, i8* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = call i32 (...) @Job_SetPrefix()
  br label %221

212:                                              ; preds = %205
  %213 = load i8*, i8** %3, align 8
  %214 = load i8*, i8** @MAKE_EXPORTED, align 8
  %215 = call i64 @strcmp(i8* %213, i8* %214)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i8*, i8** %5, align 8
  %219 = call i32 @Var_Export(i8* %218, i32 0)
  br label %220

220:                                              ; preds = %217, %212
  br label %221

221:                                              ; preds = %220, %210
  br label %222

222:                                              ; preds = %221, %201
  br label %223

223:                                              ; preds = %222, %194
  %224 = load i8*, i8** %8, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i8*, i8** %5, align 8
  %228 = call i32 @free(i8* %227)
  br label %229

229:                                              ; preds = %98, %226, %223
  ret void
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @Var_Exists(i8*, i32*) #1

declare dso_local i32 @Var_Append(i8*, i8*, i32*) #1

declare dso_local i32 @Var_Set(i8*, i8*, i32*, i32) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @Cmd_Exec(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Parse_Error(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Main_ExportMAKEFLAGS(i8*) #1

declare dso_local i32 @Dir_InitCur(i8*) #1

declare dso_local i32 @Dir_SetPATH(...) #1

declare dso_local i32 @Job_SetPrefix(...) #1

declare dso_local i32 @Var_Export(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
