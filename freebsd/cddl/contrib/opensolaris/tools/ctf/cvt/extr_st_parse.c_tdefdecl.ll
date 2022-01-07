; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_tdefdecl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_tdefdecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"tdefdecl h=%d\00", align 1
@FORWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sue\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tdefdecl/x-redefine\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[sue]\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Stabs error: Attempt to redefine type (%d,%d) as something else: %s\0A\00", align 1
@faketypenumber = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Stabs error: Attempting to redefine type (%d,%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"tdefdecl unres type %d\00", align 1
@TYPEDEF_UNRES = common dso_local global i32 0, align 4
@TYPEDEF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"No duplicate typedef anon for ref\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tdefdecl/*\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@POINTER = common dso_local global i32 0, align 4
@FUNCTION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"tdefdecl/[az]\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ARRAY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"tdefdecl/x\00", align 1
@VOLATILE = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4
@RESTRICT = common dso_local global i32 0, align 4
@UNION = common dso_local global i32 0, align 4
@STRUCT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"tdefdecl\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"<type code>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.TYPE_11__**)* @tdefdecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tdefdecl(i8* %0, i32 %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, i8*, ...) @parse_debug(i32 3, i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %11, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %414 [
    i32 98, label %20
    i32 82, label %20
    i32 40, label %24
    i32 42, label %167
    i32 102, label %206
    i32 97, label %236
    i32 122, label %236
    i32 120, label %263
    i32 66, label %294
    i32 107, label %327
    i32 75, label %360
    i32 117, label %393
    i32 115, label %393
  ]

20:                                               ; preds = %3, %3
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %23 = call i8* @intrinsic(i8* %21, %struct.TYPE_11__** %22)
  store i8* %23, i8** %4, align 8
  br label %417

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @id(i8* %25, i32* %10)
  store i8* %26, i8** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.TYPE_11__* @lookup(i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %90

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 61
  br i1 %35, label %36, label %90

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FORWARD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 120
  br i1 %47, label %48, label %83

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %12, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = call i32 @expected(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i8*, i8** %12, align 8
  %63 = call i8* @name(i8* %62, i8** %13)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %64, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @TYPEFILE(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @TYPENUM(i32 %73)
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = call i32 (i8*, i32, i32, ...) @terminate(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %74, i8* %76)
  br label %78

78:                                               ; preds = %70, %61
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32, i32* @faketypenumber, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @faketypenumber, align 4
  store i32 %81, i32* %10, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  br label %89

83:                                               ; preds = %42, %36
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @TYPEFILE(i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @TYPENUM(i32 %86)
  %88 = call i32 (i8*, i32, i32, ...) @terminate(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %31, %24
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = icmp eq %struct.TYPE_11__* %91, null
  br i1 %92, label %93, label %147

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 61
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i32, i8*, i8*, ...) @parse_debug(i32 3, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = call %struct.TYPE_11__* @calloc(i32 40, i32 1)
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %102, align 8
  %103 = load i32, i32* @TYPEDEF_UNRES, align 4
  %104 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  br label %417

111:                                              ; preds = %93
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %118 = call i8* @tdefdecl(i8* %115, i32 %116, %struct.TYPE_11__** %117)
  store i8* %118, i8** %4, align 8
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %114
  %125 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = call %struct.TYPE_11__* @calloc(i32 40, i32 1)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %7, align 8
  %133 = load i32, i32* @TYPEDEF, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %141, align 8
  br label %142

142:                                              ; preds = %131, %124, %114
  %143 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @addhash(%struct.TYPE_11__* %144, i32 %145)
  br label %166

147:                                              ; preds = %90
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TYPEDEF, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %147
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %160, align 8
  br label %165

161:                                              ; preds = %153
  %162 = call i32 (i32, i8*, i8*, ...) @parse_debug(i32 3, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %164, align 8
  br label %165

165:                                              ; preds = %161, %158
  br label %166

166:                                              ; preds = %165, %142
  br label %417

167:                                              ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i32, i32* %5, align 4
  %171 = call i8* @tdefdecl(i8* %169, i32 %170, %struct.TYPE_11__** %7)
  store i8* %171, i8** %4, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %173 = icmp eq %struct.TYPE_11__* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 @expected(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %167
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @faketypenumber, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @faketypenumber, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 8
  br label %187

187:                                              ; preds = %182, %177
  %188 = call i8* @xcalloc(i32 40)
  %189 = bitcast i8* %188 to %struct.TYPE_11__*
  %190 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %189, %struct.TYPE_11__** %190, align 8
  %191 = load i32, i32* @POINTER, align 4
  %192 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  store i32 %191, i32* %194, align 4
  %195 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  store i32 0, i32* %197, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %203 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  store %struct.TYPE_11__* %202, %struct.TYPE_11__** %205, align 8
  br label %417

206:                                              ; preds = %3
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i32, i32* %5, align 4
  %210 = call i8* @tdefdecl(i8* %208, i32 %209, %struct.TYPE_11__** %7)
  store i8* %210, i8** %4, align 8
  %211 = call i8* @xcalloc(i32 40)
  %212 = bitcast i8* %211 to %struct.TYPE_11__*
  %213 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %212, %struct.TYPE_11__** %213, align 8
  %214 = load i32, i32* @FUNCTION, align 4
  %215 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 4
  store i32 %214, i32* %217, align 4
  %218 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  store i32 0, i32* %220, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  store i32 %221, i32* %224, align 8
  %225 = call i8* @xcalloc(i32 4)
  %226 = bitcast i8* %225 to %struct.TYPE_10__*
  %227 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 5
  store %struct.TYPE_10__* %226, %struct.TYPE_10__** %229, align 8
  %230 = call i32 @lookupname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %231 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  store i32 %230, i32* %235, align 4
  br label %417

236:                                              ; preds = %3, %3
  %237 = load i8*, i8** %4, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %4, align 8
  %239 = load i8*, i8** %4, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %4, align 8
  %241 = load i8, i8* %239, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 114
  br i1 %243, label %244, label %248

244:                                              ; preds = %236
  %245 = load i8*, i8** %4, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 -1
  %247 = call i32 @expected(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %244, %236
  %249 = call i8* @xcalloc(i32 40)
  %250 = bitcast i8* %249 to %struct.TYPE_11__*
  %251 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %250, %struct.TYPE_11__** %251, align 8
  %252 = load i32, i32* @ARRAY, align 4
  %253 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 4
  store i32 %252, i32* %255, align 4
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %262 = call i8* @arraydef(i8* %260, %struct.TYPE_11__** %261)
  store i8* %262, i8** %4, align 8
  br label %417

263:                                              ; preds = %3
  %264 = load i8*, i8** %4, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %4, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 115
  br i1 %269, label %270, label %280

270:                                              ; preds = %263
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 117
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 101
  br i1 %275, label %276, label %280

276:                                              ; preds = %273
  %277 = load i8*, i8** %4, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 -1
  %279 = call i32 @expected(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %278)
  br label %280

280:                                              ; preds = %276, %273, %270, %263
  %281 = load i8*, i8** %4, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  %283 = call i8* @name(i8* %282, i8** %8)
  store i8* %283, i8** %4, align 8
  %284 = call i8* @xcalloc(i32 40)
  %285 = bitcast i8* %284 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %285, %struct.TYPE_11__** %7, align 8
  %286 = load i32, i32* @FORWARD, align 4
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 4
  store i32 %286, i32* %288, align 4
  %289 = load i8*, i8** %8, align 8
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  store i8* %289, i8** %291, align 8
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %293 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %292, %struct.TYPE_11__** %293, align 8
  br label %417

294:                                              ; preds = %3
  %295 = load i8*, i8** %4, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = load i32, i32* %5, align 4
  %298 = call i8* @tdefdecl(i8* %296, i32 %297, %struct.TYPE_11__** %7)
  store i8* %298, i8** %4, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %294
  %304 = load i32, i32* @faketypenumber, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* @faketypenumber, align 4
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  store i32 %304, i32* %307, align 8
  br label %308

308:                                              ; preds = %303, %294
  %309 = call i8* @xcalloc(i32 40)
  %310 = bitcast i8* %309 to %struct.TYPE_11__*
  %311 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %310, %struct.TYPE_11__** %311, align 8
  %312 = load i32, i32* @VOLATILE, align 4
  %313 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 4
  store i32 %312, i32* %315, align 4
  %316 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 3
  store i32 0, i32* %318, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %320 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 2
  store %struct.TYPE_11__* %319, %struct.TYPE_11__** %322, align 8
  %323 = load i32, i32* %5, align 4
  %324 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  store i32 %323, i32* %326, align 8
  br label %417

327:                                              ; preds = %3
  %328 = load i8*, i8** %4, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 1
  %330 = load i32, i32* %5, align 4
  %331 = call i8* @tdefdecl(i8* %329, i32 %330, %struct.TYPE_11__** %7)
  store i8* %331, i8** %4, align 8
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %327
  %337 = load i32, i32* @faketypenumber, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* @faketypenumber, align 4
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  store i32 %337, i32* %340, align 8
  br label %341

341:                                              ; preds = %336, %327
  %342 = call i8* @xcalloc(i32 40)
  %343 = bitcast i8* %342 to %struct.TYPE_11__*
  %344 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %343, %struct.TYPE_11__** %344, align 8
  %345 = load i32, i32* @CONST, align 4
  %346 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 4
  store i32 %345, i32* %348, align 4
  %349 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 3
  store i32 0, i32* %351, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %353 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 2
  store %struct.TYPE_11__* %352, %struct.TYPE_11__** %355, align 8
  %356 = load i32, i32* %5, align 4
  %357 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 1
  store i32 %356, i32* %359, align 8
  br label %417

360:                                              ; preds = %3
  %361 = load i8*, i8** %4, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 1
  %363 = load i32, i32* %5, align 4
  %364 = call i8* @tdefdecl(i8* %362, i32 %363, %struct.TYPE_11__** %7)
  store i8* %364, i8** %4, align 8
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %360
  %370 = load i32, i32* @faketypenumber, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* @faketypenumber, align 4
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 1
  store i32 %370, i32* %373, align 8
  br label %374

374:                                              ; preds = %369, %360
  %375 = call i8* @xcalloc(i32 40)
  %376 = bitcast i8* %375 to %struct.TYPE_11__*
  %377 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %376, %struct.TYPE_11__** %377, align 8
  %378 = load i32, i32* @RESTRICT, align 4
  %379 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 4
  store i32 %378, i32* %381, align 4
  %382 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 3
  store i32 0, i32* %384, align 8
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %386 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 2
  store %struct.TYPE_11__* %385, %struct.TYPE_11__** %388, align 8
  %389 = load i32, i32* %5, align 4
  %390 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 1
  store i32 %389, i32* %392, align 8
  br label %417

393:                                              ; preds = %3, %3
  %394 = load i8*, i8** %4, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %4, align 8
  %396 = call i8* @xcalloc(i32 40)
  %397 = bitcast i8* %396 to %struct.TYPE_11__*
  %398 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %397, %struct.TYPE_11__** %398, align 8
  %399 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 0
  store i8* null, i8** %401, align 8
  %402 = load i8*, i8** %4, align 8
  %403 = load i8, i8* %11, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 117
  br i1 %405, label %406, label %408

406:                                              ; preds = %393
  %407 = load i32, i32* @UNION, align 4
  br label %410

408:                                              ; preds = %393
  %409 = load i32, i32* @STRUCT, align 4
  br label %410

410:                                              ; preds = %408, %406
  %411 = phi i32 [ %407, %406 ], [ %409, %408 ]
  %412 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %413 = call i8* @soudef(i8* %402, i32 %411, %struct.TYPE_11__** %412)
  store i8* %413, i8** %4, align 8
  br label %417

414:                                              ; preds = %3
  %415 = load i8*, i8** %4, align 8
  %416 = call i32 @expected(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %415)
  br label %417

417:                                              ; preds = %414, %410, %374, %341, %308, %280, %248, %206, %187, %166, %98, %20
  %418 = load i8*, i8** %4, align 8
  ret i8* %418
}

declare dso_local i32 @parse_debug(i32, i8*, i8*, ...) #1

declare dso_local i8* @intrinsic(i8*, %struct.TYPE_11__**) #1

declare dso_local i8* @id(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @lookup(i32) #1

declare dso_local i32 @strchr(i8*, i32) #1

declare dso_local i32 @expected(i8*, i8*, i8*) #1

declare dso_local i8* @name(i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @terminate(i8*, i32, i32, ...) #1

declare dso_local i32 @TYPEFILE(i32) #1

declare dso_local i32 @TYPENUM(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_11__* @calloc(i32, i32) #1

declare dso_local i32 @addhash(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @xcalloc(i32) #1

declare dso_local i32 @lookupname(i8*) #1

declare dso_local i8* @arraydef(i8*, %struct.TYPE_11__**) #1

declare dso_local i8* @soudef(i8*, i32, %struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
