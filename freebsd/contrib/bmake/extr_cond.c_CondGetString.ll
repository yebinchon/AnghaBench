; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondGetString.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondGetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@condExpr = common dso_local global i8* null, align 8
@VAR_CMD = common dso_local global i32 0, align 4
@VARF_UNDEFERR = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@var_Error = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"!=><)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i8**, i32)* @CondGetString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CondGetString(i32 %0, i32* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = call i32 @Buf_Init(i32* %9, i32 0)
  store i8* null, i8** %11, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** @condExpr, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 34
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i8*, i8** @condExpr, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** @condExpr, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i8*, i8** @condExpr, align 8
  store i8* %30, i8** %14, align 8
  br label %31

31:                                               ; preds = %191, %29
  %32 = load i8*, i8** @condExpr, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i1 [ false, %31 ], [ %38, %36 ]
  br i1 %40, label %41, label %194

41:                                               ; preds = %39
  %42 = load i8*, i8** @condExpr, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %160 [
    i32 92, label %45
    i32 34, label %58
    i32 41, label %69
    i32 33, label %69
    i32 61, label %69
    i32 62, label %69
    i32 60, label %69
    i32 32, label %69
    i32 9, label %69
    i32 36, label %78
  ]

45:                                               ; preds = %41
  %46 = load i8*, i8** @condExpr, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8*, i8** @condExpr, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** @condExpr, align 8
  %54 = load i8*, i8** @condExpr, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @Buf_AddByte(i32* %9, i8 signext %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %190

58:                                               ; preds = %41
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** @condExpr, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** @condExpr, align 8
  br label %195

64:                                               ; preds = %58
  %65 = load i8*, i8** @condExpr, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @Buf_AddByte(i32* %9, i8 signext %66)
  br label %68

68:                                               ; preds = %64
  br label %190

69:                                               ; preds = %41, %41, %41, %41, %41, %41, %41
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %195

73:                                               ; preds = %69
  %74 = load i8*, i8** @condExpr, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @Buf_AddByte(i32* %9, i8 signext %75)
  br label %77

77:                                               ; preds = %73
  br label %190

78:                                               ; preds = %41
  %79 = load i8*, i8** @condExpr, align 8
  %80 = load i32, i32* @VAR_CMD, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @VARF_UNDEFERR, align 4
  br label %89

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = load i32, i32* @VARF_WANTRES, align 4
  %92 = or i32 %90, %91
  %93 = load i8**, i8*** %7, align 8
  %94 = call i8* @Var_Parse(i8* %79, i32 %80, i32 %92, i32* %12, i8** %93)
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** @var_Error, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %89
  %99 = load i8**, i8*** %7, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8**, i8*** %7, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i8**, i8*** %7, align 8
  store i8* null, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %98
  store i8* null, i8** %11, align 8
  br label %199

108:                                              ; preds = %89
  %109 = load i32, i32* %12, align 4
  %110 = load i8*, i8** @condExpr, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** @condExpr, align 8
  %113 = load i8*, i8** @condExpr, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = icmp eq i8* %113, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %108
  %120 = load i8*, i8** @condExpr, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** @condExpr, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @isspace(i8 zeroext %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** @condExpr, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %124, %119
  br label %199

135:                                              ; preds = %129, %108
  %136 = load i8*, i8** %11, align 8
  store i8* %136, i8** %10, align 8
  br label %137

137:                                              ; preds = %145, %135
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i8*, i8** %10, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @Buf_AddByte(i32* %9, i8 signext %143)
  br label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** %10, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %10, align 8
  br label %137

148:                                              ; preds = %137
  %149 = load i8**, i8*** %7, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i8**, i8*** %7, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8**, i8*** %7, align 8
  store i8* null, i8** %156, align 8
  br label %157

157:                                              ; preds = %152, %148
  store i8* null, i8** %11, align 8
  %158 = load i8*, i8** @condExpr, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 -1
  store i8* %159, i8** @condExpr, align 8
  br label %190

160:                                              ; preds = %41
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %163
  %167 = load i8*, i8** %14, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 36
  br i1 %170, label %171, label %186

171:                                              ; preds = %166
  %172 = load i8*, i8** %14, align 8
  %173 = load i8, i8* %172, align 1
  %174 = call i32 @isdigit(i8 zeroext %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load i8**, i8*** %7, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8**, i8*** %7, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8**, i8*** %7, align 8
  store i8* null, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %176
  store i8* null, i8** %11, align 8
  br label %199

186:                                              ; preds = %171, %166, %163, %160
  %187 = load i8*, i8** @condExpr, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i32 @Buf_AddByte(i32* %9, i8 signext %188)
  br label %190

190:                                              ; preds = %186, %157, %77, %68, %57
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** @condExpr, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** @condExpr, align 8
  br label %31

194:                                              ; preds = %39
  br label %195

195:                                              ; preds = %194, %72, %61
  %196 = call i8* @Buf_GetAll(i32* %9, i32* null)
  store i8* %196, i8** %11, align 8
  %197 = load i8*, i8** %11, align 8
  %198 = load i8**, i8*** %7, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %195, %185, %134, %107
  %200 = load i32, i32* @FALSE, align 4
  %201 = call i32 @Buf_Destroy(i32* %9, i32 %200)
  %202 = load i8*, i8** %11, align 8
  ret i8* %202
}

declare dso_local i32 @Buf_Init(i32*, i32) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

declare dso_local i8* @Var_Parse(i8*, i32, i32, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i8* @Buf_GetAll(i32*, i32*) #1

declare dso_local i32 @Buf_Destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
