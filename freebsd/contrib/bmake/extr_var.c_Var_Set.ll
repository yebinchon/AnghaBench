; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_Var_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32, i32 }

@VARF_WANTRES = common dso_local global i32 0, align 4
@VAR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Var_Set(\22%s\22, \22%s\22, ...) name expands to empty string - ignored\0A\00", align 1
@VAR_GLOBAL = common dso_local global %struct.TYPE_14__* null, align 8
@VAR_CMD = common dso_local global %struct.TYPE_14__* null, align 8
@VAR_FROM_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s:%s = %s ignored!\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@VAR_NO_EXPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s:%s = %s\0A\00", align 1
@VAR_EXPORTED = common dso_local global i32 0, align 4
@VAR_EXPORT_PARENT = common dso_local global i32 0, align 4
@varNoExportEnv = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAKEOVERRIDES = common dso_local global i32 0, align 4
@SAVE_DOLLARS = common dso_local global i32 0, align 4
@save_dollars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Var_Set(i8* %0, i8* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @strchr(i8* %11, i8 signext 36)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = load i32, i32* @VARF_WANTRES, align 4
  %18 = call i8* @Var_Subst(i32* null, i8* %15, %struct.TYPE_14__* %16, i32 %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = load i32, i32* @VAR, align 4
  %26 = call i64 @DEBUG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @debug_file, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @free(i8* %34)
  br label %203

36:                                               ; preds = %14
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %36, %4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VAR_GLOBAL, align 8
  %41 = icmp eq %struct.TYPE_14__* %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VAR_CMD, align 8
  %45 = call %struct.TYPE_13__* @VarFind(i8* %43, %struct.TYPE_14__* %44, i32 0)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %9, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VAR_FROM_CMD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load i32, i32* @VAR, align 4
  %57 = call i64 @DEBUG(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @debug_file, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %59, %55
  br label %194

68:                                               ; preds = %48
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = call i32 @VarFreeEnv(%struct.TYPE_13__* %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %42
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = call %struct.TYPE_13__* @VarFind(i8* %74, %struct.TYPE_14__* %75, i32 0)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %9, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = icmp eq %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VAR_CMD, align 8
  %82 = icmp eq %struct.TYPE_14__* %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @VAR_NO_EXPORT, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VAR_GLOBAL, align 8
  %91 = call i32 @Var_Delete(i8* %89, %struct.TYPE_14__* %90)
  br label %92

92:                                               ; preds = %88, %83, %79
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = call i32 @VarAdd(i8* %93, i8* %94, %struct.TYPE_14__* %95)
  br label %134

97:                                               ; preds = %73
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = call i32 @Buf_Empty(i32* %99)
  %101 = load i8*, i8** %6, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @Buf_AddBytes(i32* %105, i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %103, %97
  %111 = load i32, i32* @VAR, align 4
  %112 = call i64 @DEBUG(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* @debug_file, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %118, i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %114, %110
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VAR_EXPORTED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* @VAR_EXPORT_PARENT, align 4
  %132 = call i32 @Var_Export1(i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %122
  br label %134

134:                                              ; preds = %133, %92
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VAR_CMD, align 8
  %137 = icmp eq %struct.TYPE_14__* %135, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @VAR_NO_EXPORT, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %178

143:                                              ; preds = %138
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = icmp eq %struct.TYPE_13__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i8*, i8** %5, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = call %struct.TYPE_13__* @VarFind(i8* %147, %struct.TYPE_14__* %148, i32 0)
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %9, align 8
  br label %150

150:                                              ; preds = %146, %143
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %152 = icmp ne %struct.TYPE_13__* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* @VAR_FROM_CMD, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i64, i64* @varNoExportEnv, align 8
  %161 = load i64, i64* @TRUE, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i8*, i8** %6, align 8
  br label %170

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i8* [ %168, %167 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %169 ]
  %172 = call i32 @setenv(i8* %164, i8* %171, i32 1)
  br label %173

173:                                              ; preds = %170, %159
  %174 = load i32, i32* @MAKEOVERRIDES, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VAR_GLOBAL, align 8
  %177 = call i32 @Var_Append(i32 %174, i8* %175, %struct.TYPE_14__* %176)
  br label %178

178:                                              ; preds = %173, %138, %134
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 46
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load i8*, i8** %5, align 8
  %185 = load i32, i32* @SAVE_DOLLARS, align 4
  %186 = call i64 @strcmp(i8* %184, i32 %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* @save_dollars, align 4
  %191 = call i32 @s2Boolean(i8* %189, i32 %190)
  store i32 %191, i32* @save_dollars, align 4
  br label %192

192:                                              ; preds = %188, %183
  br label %193

193:                                              ; preds = %192, %178
  br label %194

194:                                              ; preds = %193, %67
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %198 = icmp ne %struct.TYPE_13__* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %201 = load i64, i64* @TRUE, align 8
  %202 = call i32 @VarFreeEnv(%struct.TYPE_13__* %200, i64 %201)
  br label %203

203:                                              ; preds = %33, %199, %194
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @Var_Subst(i32*, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_13__* @VarFind(i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @VarFreeEnv(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @Var_Delete(i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @VarAdd(i8*, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @Buf_Empty(i32*) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Var_Export1(i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @Var_Append(i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @s2Boolean(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
