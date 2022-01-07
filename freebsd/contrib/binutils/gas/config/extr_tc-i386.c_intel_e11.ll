; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e11.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_7__*, i32** }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@cur_token = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@intel_parser = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@SReg2 = common dso_local global i32 0, align 4
@SReg3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"`%s' is not a valid segment register\00", align 1
@i = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Extra segment override ignored\00", align 1
@es = common dso_local global i32 0, align 4
@cs = common dso_local global i32 0, align 4
@ss = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Register scaling only allowed in memory operands\00", align 1
@Reg16 = common dso_local global i32 0, align 4
@i386_regtab = common dso_local global i64 0, align 8
@REGNAM_AX = common dso_local global i64 0, align 8
@REGNAM_EAX = common dso_local global i64 0, align 8
@BaseIndex = common dso_local global i32 0, align 4
@this_operand = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"Syntax error: Expecting a constant, got `%s'\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Too many register references in memory operand\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Invalid use of register\00", align 1
@T_PTR = common dso_local global i32 0, align 4
@absolute_section = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Unrecognized token '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_e11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_e11() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  switch i32 %11, label %419 [
    i32 40, label %12
    i32 91, label %25
    i32 46, label %27
    i32 131, label %37
    i32 137, label %266
    i32 129, label %266
    i32 135, label %266
    i32 134, label %266
    i32 132, label %266
    i32 130, label %266
    i32 128, label %266
    i32 133, label %275
    i32 136, label %294
    i32 45, label %294
    i32 43, label %294
  ]

12:                                               ; preds = %0
  %13 = call i32 @intel_match_token(i32 40)
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %15 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @intel_expr()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = call i32 @intel_match_token(i32 41)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %423

24:                                               ; preds = %18, %12
  store i32 0, i32* %1, align 4
  br label %423

25:                                               ; preds = %0
  %26 = call i32 (...) @intel_bracket_expr()
  store i32 %26, i32* %1, align 4
  br label %423

27:                                               ; preds = %0
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %30 = call i32 @strcat(i8* %28, i8* %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %32 = call i32 @intel_match_token(i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  br label %36

36:                                               ; preds = %35, %27
  store i32 1, i32* %1, align 4
  br label %423

37:                                               ; preds = %0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 2), align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 4), align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %2, align 8
  %39 = call i32 @intel_match_token(i32 131)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %41 = icmp eq i32 %40, 58
  br i1 %41, label %42, label %101

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SReg2, align 4
  %47 = load i32, i32* @SReg3, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, ...) @as_bad(i32 %52, i8* %55)
  store i32 0, i32* %1, align 4
  br label %423

57:                                               ; preds = %42
  %58 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @as_warn(i32 %64)
  br label %99

66:                                               ; preds = %57
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %98 [
    i32 0, label %74
    i32 1, label %78
    i32 2, label %82
    i32 3, label %86
    i32 4, label %90
    i32 5, label %94
  ]

74:                                               ; preds = %70
  %75 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  store i32* @es, i32** %77, align 8
  br label %98

78:                                               ; preds = %70
  %79 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  store i32* @cs, i32** %81, align 8
  br label %98

82:                                               ; preds = %70
  %83 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  store i32* @ss, i32** %85, align 8
  br label %98

86:                                               ; preds = %70
  %87 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  store i32* @ds, i32** %89, align 8
  br label %98

90:                                               ; preds = %70
  %91 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  store i32* @fs, i32** %93, align 8
  br label %98

94:                                               ; preds = %70
  %95 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 6), align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  store i32* @gs, i32** %97, align 8
  br label %98

98:                                               ; preds = %70, %94, %90, %86, %82, %78, %74
  br label %99

99:                                               ; preds = %98, %63
  br label %100

100:                                              ; preds = %99
  br label %242

101:                                              ; preds = %37
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %103 = icmp eq i32 %102, 42
  br i1 %103, label %104, label %187

104:                                              ; preds = %101
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 (i32, ...) @as_bad(i32 %108)
  store i32 0, i32* %1, align 4
  br label %423

110:                                              ; preds = %104
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @Reg16, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i64, i64* @i386_regtab, align 8
  %119 = load i64, i64* @REGNAM_AX, align 8
  %120 = add nsw i64 %118, %119
  %121 = add nsw i64 %120, 4
  %122 = inttoptr i64 %121 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %2, align 8
  br label %133

123:                                              ; preds = %110
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %125 = icmp ne %struct.TYPE_7__* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i64, i64* @i386_regtab, align 8
  %128 = load i64, i64* @REGNAM_EAX, align 8
  %129 = add nsw i64 %127, %128
  %130 = add nsw i64 %129, 4
  %131 = inttoptr i64 %130 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %2, align 8
  br label %132

132:                                              ; preds = %126, %123
  br label %133

133:                                              ; preds = %132, %117
  %134 = call i32 @intel_match_token(i32 42)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %136 = load i32, i32* @BaseIndex, align 4
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %138 = load i64, i64* @this_operand, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %143 = icmp eq i32 %142, 43
  br i1 %143, label %147, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %146 = icmp eq i32 %145, 45
  br i1 %146, label %147, label %178

147:                                              ; preds = %144, %133
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %4, align 1
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %151 = call i32 @intel_match_token(i32 %150)
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %153 = icmp ne i32 %152, 136
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %157 = call i32 (i32, ...) @as_bad(i32 %155, i8* %156)
  store i32 0, i32* %1, align 4
  br label %423

158:                                              ; preds = %147
  %159 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %160 = call i32 @strlen(i8* %159)
  %161 = add nsw i32 %160, 2
  %162 = call i64 @xmalloc(i32 %161)
  %163 = inttoptr i64 %162 to i8*
  store i8* %163, i8** %3, align 8
  %164 = load i8*, i8** %3, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = ptrtoint i8* %165 to i32
  %167 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %168 = call i32 @strcpy(i32 %166, i8* %167)
  %169 = load i8, i8* %4, align 1
  %170 = load i8*, i8** %3, align 8
  store i8 %169, i8* %170, align 1
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @i386_scale(i8* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %158
  store i32 0, i32* %1, align 4
  br label %423

175:                                              ; preds = %158
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 @free(i8* %176)
  br label %184

178:                                              ; preds = %144
  %179 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %180 = call i32 @i386_scale(i8* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  store i32 0, i32* %1, align 4
  br label %423

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %175
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %186 = call i32 @intel_match_token(i32 %185)
  br label %241

187:                                              ; preds = %101
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %187
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 5), align 8
  %192 = icmp ne %struct.TYPE_7__* %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %194, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 5), align 8
  br label %204

195:                                              ; preds = %190
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %197 = icmp ne %struct.TYPE_7__* %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %199, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  br label %203

200:                                              ; preds = %195
  %201 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %202 = call i32 (i32, ...) @as_bad(i32 %201)
  store i32 0, i32* %1, align 4
  br label %423

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203, %193
  %205 = load i32, i32* @BaseIndex, align 4
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %207 = load i64, i64* @this_operand, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %205
  store i32 %210, i32* %208, align 4
  br label %240

211:                                              ; preds = %187
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %236, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %236, label %217

217:                                              ; preds = %214
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @BaseIndex, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %225 = load i64, i64* @this_operand, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %223
  store i32 %228, i32* %226, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %231 = load i64, i64* @this_operand, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  store %struct.TYPE_7__* %229, %struct.TYPE_7__** %233, align 8
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 3), align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 3), align 8
  br label %239

236:                                              ; preds = %214, %211
  %237 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %238 = call i32 (i32, ...) @as_bad(i32 %237)
  store i32 0, i32* %1, align 4
  br label %423

239:                                              ; preds = %217
  br label %240

240:                                              ; preds = %239, %204
  br label %241

241:                                              ; preds = %240, %184
  br label %242

242:                                              ; preds = %241, %100
  %243 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %242
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %265, label %250

250:                                              ; preds = %247
  %251 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  store i8* %251, i8** %5, align 8
  %252 = load i8*, i8** %5, align 8
  %253 = call i32 @strlen(i8* %252)
  %254 = sub nsw i32 %253, 1
  %255 = load i8*, i8** %5, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %5, align 8
  %258 = load i8*, i8** %5, align 8
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 43
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i8*, i8** %5, align 8
  store i8 0, i8* %263, align 1
  br label %264

264:                                              ; preds = %262, %250
  br label %265

265:                                              ; preds = %264, %247, %242
  store i32 1, i32* %1, align 4
  br label %423

266:                                              ; preds = %0, %0, %0, %0, %0, %0, %0
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %268 = call i32 @intel_match_token(i32 %267)
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %270 = load i32, i32* @T_PTR, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i32 1, i32* %1, align 4
  br label %423

273:                                              ; preds = %266
  %274 = call i32 (...) @intel_putback_token()
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  br label %275

275:                                              ; preds = %0, %273
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 3), align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %293, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  %280 = icmp sle i32 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %278
  %282 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %283 = call i32* @symbol_find(i8* %282)
  store i32* %283, i32** %6, align 8
  %284 = load i32*, i32** %6, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %281
  %287 = load i32*, i32** %6, align 8
  %288 = call i32 @S_GET_SEGMENT(i32* %287)
  %289 = load i32, i32* @absolute_section, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286, %281
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 1), align 8
  br label %292

292:                                              ; preds = %291, %286
  br label %293

293:                                              ; preds = %292, %278, %275
  br label %294

294:                                              ; preds = %0, %0, %0, %293
  store i8 0, i8* %8, align 1
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %296 = icmp eq i32 %295, 45
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %299 = icmp eq i32 %298, 43
  br i1 %299, label %300, label %312

300:                                              ; preds = %297, %294
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %8, align 1
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %304 = call i32 @intel_match_token(i32 %303)
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %306 = icmp ne i32 %305, 136
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %309 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %310 = call i32 (i32, ...) @as_bad(i32 %308, i8* %309)
  store i32 0, i32* %1, align 4
  br label %423

311:                                              ; preds = %300
  br label %312

312:                                              ; preds = %311, %297
  %313 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %314 = call i32 @strlen(i8* %313)
  %315 = add nsw i32 %314, 2
  %316 = call i64 @xmalloc(i32 %315)
  %317 = inttoptr i64 %316 to i8*
  store i8* %317, i8** %7, align 8
  %318 = load i8*, i8** %7, align 8
  %319 = load i8, i8* %8, align 1
  %320 = icmp ne i8 %319, 0
  %321 = xor i1 %320, true
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %318, i64 %324
  %326 = ptrtoint i8* %325 to i32
  %327 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %328 = call i32 @strcpy(i32 %326, i8* %327)
  %329 = load i8, i8* %8, align 1
  %330 = icmp ne i8 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %312
  %332 = load i8, i8* %8, align 1
  %333 = load i8*, i8** %7, align 8
  store i8 %332, i8* %333, align 1
  br label %334

334:                                              ; preds = %331, %312
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %336 = call i32 @intel_match_token(i32 %335)
  %337 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %338 = icmp eq i32 %337, 42
  br i1 %338, label %339, label %413

339:                                              ; preds = %334
  %340 = call i32 @intel_match_token(i32 42)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %411

342:                                              ; preds = %339
  %343 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 0), align 8
  %344 = icmp eq i32 %343, 131
  br i1 %344, label %345, label %411

345:                                              ; preds = %342
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 2), align 8
  store %struct.TYPE_7__* %346, %struct.TYPE_7__** %9, align 8
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 2), align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %345
  %350 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %351 = call i32 (i32, ...) @as_bad(i32 %350)
  store i32 0, i32* %1, align 4
  br label %423

352:                                              ; preds = %345
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @Reg16, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %352
  %360 = load i64, i64* @i386_regtab, align 8
  %361 = load i64, i64* @REGNAM_AX, align 8
  %362 = add nsw i64 %360, %361
  %363 = add nsw i64 %362, 4
  %364 = inttoptr i64 %363 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %364, %struct.TYPE_7__** %9, align 8
  br label %375

365:                                              ; preds = %352
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %367 = icmp ne %struct.TYPE_7__* %366, null
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = load i64, i64* @i386_regtab, align 8
  %370 = load i64, i64* @REGNAM_EAX, align 8
  %371 = add nsw i64 %369, %370
  %372 = add nsw i64 %371, 4
  %373 = inttoptr i64 %372 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %373, %struct.TYPE_7__** %9, align 8
  br label %374

374:                                              ; preds = %368, %365
  br label %375

375:                                              ; preds = %374, %359
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %376, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2), align 8
  %377 = load i32, i32* @BaseIndex, align 4
  %378 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %379 = load i64, i64* @this_operand, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %381, %377
  store i32 %382, i32* %380, align 4
  %383 = load i8*, i8** %7, align 8
  %384 = call i32 @i386_scale(i8* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %375
  store i32 0, i32* %1, align 4
  br label %423

387:                                              ; preds = %375
  %388 = call i32 @intel_match_token(i32 131)
  %389 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %408

393:                                              ; preds = %387
  %394 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  store i8* %394, i8** %10, align 8
  %395 = load i8*, i8** %10, align 8
  %396 = call i32 @strlen(i8* %395)
  %397 = sub nsw i32 %396, 1
  %398 = load i8*, i8** %10, align 8
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i8, i8* %398, i64 %399
  store i8* %400, i8** %10, align 8
  %401 = load i8*, i8** %10, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 43
  br i1 %404, label %405, label %407

405:                                              ; preds = %393
  %406 = load i8*, i8** %10, align 8
  store i8 0, i8* %406, align 1
  br label %407

407:                                              ; preds = %405, %393
  br label %408

408:                                              ; preds = %407, %387
  %409 = load i8*, i8** %7, align 8
  %410 = call i32 @free(i8* %409)
  store i32 1, i32* %1, align 4
  br label %423

411:                                              ; preds = %342, %339
  %412 = call i32 (...) @intel_putback_token()
  br label %413

413:                                              ; preds = %411, %334
  %414 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_parser, i32 0, i32 0), align 8
  %415 = load i8*, i8** %7, align 8
  %416 = call i32 @strcat(i8* %414, i8* %415)
  %417 = load i8*, i8** %7, align 8
  %418 = call i32 @free(i8* %417)
  store i32 1, i32* %1, align 4
  br label %423

419:                                              ; preds = %0
  %420 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %421 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_token, i32 0, i32 1), align 8
  %422 = call i32 (i32, ...) @as_bad(i32 %420, i8* %421)
  store i32 0, i32* %1, align 4
  br label %423

423:                                              ; preds = %419, %413, %408, %386, %349, %307, %272, %265, %236, %200, %182, %174, %154, %107, %51, %36, %25, %24, %21
  %424 = load i32, i32* %1, align 4
  ret i32 %424
}

declare dso_local i32 @intel_match_token(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @intel_expr(...) #1

declare dso_local i32 @intel_bracket_expr(...) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @i386_scale(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @intel_putback_token(...) #1

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i32 @S_GET_SEGMENT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
