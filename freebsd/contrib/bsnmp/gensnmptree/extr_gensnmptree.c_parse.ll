; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.node = type { i64, %struct.TYPE_11__, i32, i8*, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8**, i32, i8* }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8*, i64, i8* }

@input = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"'(' expected at begin of node\00", align 1
@TOK_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"node id expected after opening '('\00", align 1
@val = common dso_local global i64 0, align 8
@ASN_MAXID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"subid too large '%lu'\00", align 1
@TOK_STR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"node name expected after '(' ID\00", align 1
@TOK_TYPE = common dso_local global i32 0, align 4
@TOK_DEFTYPE = common dso_local global i32 0, align 4
@TOK_ENUM = common dso_local global i32 0, align 4
@TOK_BITS = common dso_local global i32 0, align 4
@NODE_LEAF = common dso_local global i32 0, align 4
@NODE_COLUMN = common dso_local global i32 0, align 4
@TOK_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"access keyword or ')' expected\00", align 1
@NODE_ENTRY = common dso_local global i32 0, align 4
@SNMP_INDEXES_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"too many table indexes\00", align 1
@SNMP_INDEX_SHIFT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"need at least one index\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"function name expected\00", align 1
@link = common dso_local global i32 0, align 4
@NODE_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (i32)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @parse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = call %struct.node* @xalloc(i32 120)
  store %struct.node* %10, %struct.node** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @input, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.node*, %struct.node** %3, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.node*, %struct.node** %3, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 40
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = call i32 (...) @gettoken()
  %24 = load i32, i32* @TOK_NUM, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i64, i64* @val, align 8
  %30 = load i64, i64* @ASN_MAXID, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @val, align 8
  %34 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i64, i64* @val, align 8
  %37 = load %struct.node*, %struct.node** %3, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = call i32 (...) @gettoken()
  %40 = load i32, i32* @TOK_STR, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = call i8* (...) @savetok()
  %46 = load %struct.node*, %struct.node** %3, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = call i32 (...) @gettoken()
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* @TOK_TYPE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @TOK_DEFTYPE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @TOK_ENUM, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @TOK_BITS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %123

63:                                               ; preds = %59, %55, %51, %44
  %64 = load %struct.node*, %struct.node** %3, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @parse_type(i32* %2, i32* null, i8* %66, i8** %6)
  store i64 %67, i64* %7, align 8
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @TOK_STR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %63
  %72 = load i32, i32* @NODE_LEAF, align 4
  %73 = load %struct.node*, %struct.node** %3, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = call i8* (...) @savetok()
  %76 = load %struct.node*, %struct.node** %3, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i8* %75, i8** %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.node*, %struct.node** %3, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i64 %80, i64* %84, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.node*, %struct.node** %3, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  %90 = call i32 (...) @gettoken()
  store i32 %90, i32* %2, align 4
  br label %105

91:                                               ; preds = %63
  %92 = load i32, i32* @NODE_COLUMN, align 4
  %93 = load %struct.node*, %struct.node** %3, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.node*, %struct.node** %3, align 8
  %97 = getelementptr inbounds %struct.node, %struct.node* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i64 %95, i64* %99, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.node*, %struct.node** %3, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %100, i8** %104, align 8
  br label %105

105:                                              ; preds = %91, %71
  br label %106

106:                                              ; preds = %115, %105
  %107 = load i32, i32* %2, align 4
  %108 = icmp ne i32 %107, 41
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @TOK_ACCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i64, i64* @val, align 8
  %117 = load %struct.node*, %struct.node** %3, align 8
  %118 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = call i32 (...) @gettoken()
  store i32 %121, i32* %2, align 4
  br label %106

122:                                              ; preds = %106
  br label %254

123:                                              ; preds = %59
  %124 = load i32, i32* %2, align 4
  %125 = icmp eq i32 %124, 58
  br i1 %125, label %126, label %229

126:                                              ; preds = %123
  %127 = load i32, i32* @NODE_ENTRY, align 4
  %128 = load %struct.node*, %struct.node** %3, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.node*, %struct.node** %3, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = call i32 @TAILQ_INIT(i32* %133)
  store i64 0, i64* %5, align 8
  %135 = load %struct.node*, %struct.node** %3, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = call i32 (...) @gettoken()
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %168, %126
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @TOK_TYPE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %156, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* @TOK_DEFTYPE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @TOK_ENUM, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* @TOK_BITS, align 4
  %155 = icmp eq i32 %153, %154
  br label %156

156:                                              ; preds = %152, %148, %144, %140
  %157 = phi i1 [ true, %148 ], [ true, %144 ], [ true, %140 ], [ %155, %152 ]
  br i1 %157, label %158, label %189

158:                                              ; preds = %156
  %159 = load %struct.node*, %struct.node** %3, align 8
  %160 = getelementptr inbounds %struct.node, %struct.node* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @parse_type(i32* %2, i32* null, i8* %161, i8** %8)
  store i64 %162, i64* %9, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load i64, i64* @SNMP_INDEXES_MAX, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %158
  %169 = load i8*, i8** %8, align 8
  %170 = load %struct.node*, %struct.node** %3, align 8
  %171 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = load i64, i64* %5, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %5, align 8
  %177 = getelementptr inbounds i8*, i8** %174, i64 %175
  store i8* %169, i8** %177, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* @SNMP_INDEX_SHIFT, align 8
  %180 = load i64, i64* %5, align 8
  %181 = mul nsw i64 %179, %180
  %182 = shl i64 %178, %181
  %183 = load %struct.node*, %struct.node** %3, align 8
  %184 = getelementptr inbounds %struct.node, %struct.node* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = or i64 %187, %182
  store i64 %188, i64* %186, align 8
  br label %140

189:                                              ; preds = %156
  %190 = load i64, i64* %5, align 8
  %191 = load %struct.node*, %struct.node** %3, align 8
  %192 = getelementptr inbounds %struct.node, %struct.node* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = or i64 %195, %190
  store i64 %196, i64* %194, align 8
  %197 = load i64, i64* %5, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %189
  %200 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %189
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @TOK_STR, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %201
  %208 = call i8* (...) @savetok()
  %209 = load %struct.node*, %struct.node** %3, align 8
  %210 = getelementptr inbounds %struct.node, %struct.node* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  store i8* %208, i8** %212, align 8
  %213 = call i32 (...) @gettoken()
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %217, %207
  %215 = load i32, i32* %2, align 4
  %216 = icmp ne i32 %215, 41
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load i32, i32* %2, align 4
  %219 = call %struct.node* @parse(i32 %218)
  store %struct.node* %219, %struct.node** %4, align 8
  %220 = load %struct.node*, %struct.node** %3, align 8
  %221 = getelementptr inbounds %struct.node, %struct.node* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load %struct.node*, %struct.node** %4, align 8
  %225 = load i32, i32* @link, align 4
  %226 = call i32 @TAILQ_INSERT_TAIL(i32* %223, %struct.node* %224, i32 %225)
  %227 = call i32 (...) @gettoken()
  store i32 %227, i32* %2, align 4
  br label %214

228:                                              ; preds = %214
  br label %253

229:                                              ; preds = %123
  %230 = load i32, i32* @NODE_TREE, align 4
  %231 = load %struct.node*, %struct.node** %3, align 8
  %232 = getelementptr inbounds %struct.node, %struct.node* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.node*, %struct.node** %3, align 8
  %234 = getelementptr inbounds %struct.node, %struct.node* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = call i32 @TAILQ_INIT(i32* %236)
  br label %238

238:                                              ; preds = %241, %229
  %239 = load i32, i32* %2, align 4
  %240 = icmp ne i32 %239, 41
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load i32, i32* %2, align 4
  %243 = call %struct.node* @parse(i32 %242)
  store %struct.node* %243, %struct.node** %4, align 8
  %244 = load %struct.node*, %struct.node** %3, align 8
  %245 = getelementptr inbounds %struct.node, %struct.node* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load %struct.node*, %struct.node** %4, align 8
  %249 = load i32, i32* @link, align 4
  %250 = call i32 @TAILQ_INSERT_TAIL(i32* %247, %struct.node* %248, i32 %249)
  %251 = call i32 (...) @gettoken()
  store i32 %251, i32* %2, align 4
  br label %238

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252, %228
  br label %254

254:                                              ; preds = %253, %122
  %255 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %255
}

declare dso_local %struct.node* @xalloc(i32) #1

declare dso_local i32 @report(i8*, ...) #1

declare dso_local i32 @gettoken(...) #1

declare dso_local i8* @savetok(...) #1

declare dso_local i64 @parse_type(i32*, i32*, i8*, i8**) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
