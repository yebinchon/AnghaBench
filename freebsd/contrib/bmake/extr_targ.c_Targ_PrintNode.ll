; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_PrintNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_PrintNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"# %s%s, flags %x, type %x, made %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@mainTarg = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"# *** MAIN TARGET ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"# %d unmade children\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"# No unmade children\0A\00", align 1
@OP_JOIN = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@OP_EXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"# last modified %s: %s\0A\00", align 1
@UNMADE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"# non-existent (maybe): %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"# unmade\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"# implicit parents: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"# parents: \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"# order_pred: \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"# order_succ: \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@OP_OPMASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c":: \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Targ_PrintNode(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @debug_file, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %25, i32 %28, i32 %31, i64 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %242

41:                                               ; preds = %17
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @OP_NOP(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %241, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @debug_file, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mainTarg, align 8
  %52 = icmp eq %struct.TYPE_3__* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @debug_file, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %136

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @debug_file, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @debug_file, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @OP_JOIN, align 4
  %78 = load i32, i32* @OP_USE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @OP_USEBEFORE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @OP_EXEC, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %76, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %120, label %86

86:                                               ; preds = %73
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32, i32* @debug_file, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @Targ_FmtTime(i64 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @made_name(i64 %99)
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %100)
  br label %119

102:                                              ; preds = %86
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @UNMADE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i32, i32* @debug_file, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @made_name(i64 %112)
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  br label %118

115:                                              ; preds = %102
  %116 = load i32, i32* @debug_file, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %108
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %73
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @Lst_IsEmpty(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @debug_file, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @Lst_ForEach(i32 %131, i32 (i8*, i8*)* @TargPrintName, i32* null)
  %133 = load i32, i32* @debug_file, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %135

135:                                              ; preds = %126, %120
  br label %148

136:                                              ; preds = %56
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* @debug_file, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %141, %136
  br label %148

148:                                              ; preds = %147, %135
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @Lst_IsEmpty(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* @debug_file, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 12
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @Lst_ForEach(i32 %159, i32 (i8*, i8*)* @TargPrintName, i32* null)
  %161 = load i32, i32* @debug_file, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %163

163:                                              ; preds = %154, %148
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @Lst_IsEmpty(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @debug_file, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @Lst_ForEach(i32 %174, i32 (i8*, i8*)* @TargPrintName, i32* null)
  %176 = load i32, i32* @debug_file, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %178

178:                                              ; preds = %169, %163
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @Lst_IsEmpty(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* @debug_file, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @Lst_ForEach(i32 %189, i32 (i8*, i8*)* @TargPrintName, i32* null)
  %191 = load i32, i32* @debug_file, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %193

193:                                              ; preds = %184, %178
  %194 = load i32, i32* @debug_file, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %197)
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @OP_OPMASK, align 4
  %203 = and i32 %201, %202
  switch i32 %203, label %213 [
    i32 130, label %204
    i32 128, label %207
    i32 129, label %210
  ]

204:                                              ; preds = %193
  %205 = load i32, i32* @debug_file, align 4
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %213

207:                                              ; preds = %193
  %208 = load i32, i32* @debug_file, align 4
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %213

210:                                              ; preds = %193
  %211 = load i32, i32* @debug_file, align 4
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %213

213:                                              ; preds = %193, %210, %207, %204
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @Targ_PrintType(i32 %216)
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @Lst_ForEach(i32 %220, i32 (i8*, i8*)* @TargPrintName, i32* null)
  %222 = load i32, i32* @debug_file, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @Lst_ForEach(i32 %226, i32 (i8*, i8*)* @Targ_PrintCmd, i32* null)
  %228 = load i32, i32* @debug_file, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, 129
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %213
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @Lst_ForEach(i32 %238, i32 (i8*, i8*)* @Targ_PrintNode, i32* %7)
  br label %240

240:                                              ; preds = %235, %213
  br label %241

241:                                              ; preds = %240, %41
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %40
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @OP_NOP(i32) #1

declare dso_local i8* @Targ_FmtTime(i64) #1

declare dso_local i8* @made_name(i64) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Lst_ForEach(i32, i32 (i8*, i8*)*, i32*) #1

declare dso_local i32 @TargPrintName(i8*, i8*) #1

declare dso_local i32 @Targ_PrintType(i32) #1

declare dso_local i32 @Targ_PrintCmd(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
