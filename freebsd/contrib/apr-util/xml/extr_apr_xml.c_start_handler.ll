; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/xml/extr_apr_xml.c_start_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/xml/extr_apr_xml.c_start_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__*, i8*, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_10__*, i32 }

@APR_KW_xmlns = common dso_local global i32 0, align 4
@APR_XML_NS_ERROR_INVALID_DECL = common dso_local global i8* null, align 8
@APR_KW_xmlns_lang = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@APR_XML_NS_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @start_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_handler(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %390

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @apr_pcalloc(i32 %27, i32 72)
  %29 = bitcast i8* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @apr_pstrdup(i32 %32, i8* %33)
  store i8* %34, i8** %13, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %41, %24
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_12__* @apr_palloc(i32 %44, i32 32)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %6, align 8
  %51 = load i8*, i8** %49, align 8
  %52 = call i8* @apr_pstrdup(i32 %48, i8* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %6, align 8
  %60 = load i8*, i8** %58, align 8
  %61 = call i8* @apr_pstrdup(i32 %57, i8* %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %71, align 8
  br label %37

72:                                               ; preds = %37
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp eq %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %84, align 8
  br label %124

85:                                               ; preds = %72
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = icmp eq %struct.TYPE_11__* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 6
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 8
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %106, align 8
  br label %120

107:                                              ; preds = %85
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 7
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 6
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %119, align 8
  br label %120

120:                                              ; preds = %107, %97
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store %struct.TYPE_11__* %121, %struct.TYPE_11__** %123, align 8
  br label %124

124:                                              ; preds = %120, %77
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %9, align 8
  br label %128

128:                                              ; preds = %262, %124
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = icmp ne %struct.TYPE_12__* %129, null
  br i1 %130, label %131, label %266

131:                                              ; preds = %128
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @APR_KW_xmlns, align 4
  %136 = call i64 @strncmp(i8* %134, i32 %135, i32 5)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %225

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 5
  store i8* %142, i8** %14, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 58
  br i1 %146, label %147, label %162

147:                                              ; preds = %138
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i8*, i8** @APR_XML_NS_ERROR_INVALID_DECL, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  br label %390

159:                                              ; preds = %147
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %14, align 8
  br label %170

162:                                              ; preds = %138
  %163 = load i8*, i8** %14, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %168, %struct.TYPE_12__** %10, align 8
  br label %262

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %159
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @apr_xml_quote_string(i32 %173, i8* %176, i32 1)
  store i8* %177, i8** %12, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i8* @apr_pcalloc(i32 %180, i32 32)
  %182 = bitcast i8* %181 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %182, %struct.TYPE_10__** %15, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 @apr_xml_insert_uri(i32 %190, i8* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  store %struct.TYPE_10__* %204, %struct.TYPE_10__** %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 5
  store %struct.TYPE_10__* %207, %struct.TYPE_10__** %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %211 = icmp eq %struct.TYPE_12__* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %170
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  store %struct.TYPE_12__* %215, %struct.TYPE_12__** %217, align 8
  br label %224

218:                                              ; preds = %170
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  store %struct.TYPE_12__* %221, %struct.TYPE_12__** %223, align 8
  br label %224

224:                                              ; preds = %218, %212
  br label %261

225:                                              ; preds = %131
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* @APR_KW_xmlns_lang, align 4
  %230 = call i64 @strcmp(i8* %228, i32 %229)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %225
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i8* @apr_xml_quote_string(i32 %235, i8* %238, i32 1)
  %240 = bitcast i8* %239 to i32*
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  store i32* %240, i32** %242, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %244 = icmp eq %struct.TYPE_12__* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %232
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  store %struct.TYPE_12__* %248, %struct.TYPE_12__** %250, align 8
  br label %257

251:                                              ; preds = %232
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 3
  store %struct.TYPE_12__* %254, %struct.TYPE_12__** %256, align 8
  br label %257

257:                                              ; preds = %251, %245
  br label %260

258:                                              ; preds = %225
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %259, %struct.TYPE_12__** %10, align 8
  br label %260

260:                                              ; preds = %258, %257
  br label %261

261:                                              ; preds = %260, %224
  br label %262

262:                                              ; preds = %261, %167
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  store %struct.TYPE_12__* %265, %struct.TYPE_12__** %9, align 8
  br label %128

266:                                              ; preds = %128
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = icmp eq i32* %269, null
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = icmp ne %struct.TYPE_11__* %274, null
  br i1 %275, label %276, label %284

276:                                              ; preds = %271
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  store i32* %281, i32** %283, align 8
  br label %284

284:                                              ; preds = %276, %271, %266
  %285 = load i8*, i8** %13, align 8
  %286 = call i8* @strchr(i8* %285, i32 58)
  store i8* %286, i8** %11, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = icmp eq i8* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %291 = call i8* @find_prefix(%struct.TYPE_9__* %290, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 2
  store i8* %291, i8** %293, align 8
  br label %330

294:                                              ; preds = %284
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 @APR_XML_NS_IS_RESERVED(i8* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = load i8*, i8** @APR_XML_NS_NONE, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  br label %329

304:                                              ; preds = %294
  %305 = load i8*, i8** %11, align 8
  store i8 0, i8* %305, align 1
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = call i8* @find_prefix(%struct.TYPE_9__* %306, i8* %309)
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  store i8* %310, i8** %312, align 8
  %313 = load i8*, i8** %11, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  store i8* %314, i8** %316, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = call i64 @APR_XML_NS_IS_ERROR(i8* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %304
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  store i8* %325, i8** %327, align 8
  br label %390

328:                                              ; preds = %304
  br label %329

329:                                              ; preds = %328, %300
  br label %330

330:                                              ; preds = %329, %289
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %332, align 8
  store %struct.TYPE_12__* %333, %struct.TYPE_12__** %9, align 8
  br label %334

334:                                              ; preds = %386, %330
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %336 = icmp ne %struct.TYPE_12__* %335, null
  br i1 %336, label %337, label %390

337:                                              ; preds = %334
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  store i8* %340, i8** %16, align 8
  %341 = load i8*, i8** %16, align 8
  %342 = call i8* @strchr(i8* %341, i32 58)
  store i8* %342, i8** %11, align 8
  %343 = load i8*, i8** %11, align 8
  %344 = icmp eq i8* %343, null
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = load i8*, i8** @APR_XML_NS_NONE, align 8
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 2
  store i8* %346, i8** %348, align 8
  br label %385

349:                                              ; preds = %337
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = call i64 @APR_XML_NS_IS_RESERVED(i8* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %349
  %356 = load i8*, i8** @APR_XML_NS_NONE, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 2
  store i8* %356, i8** %358, align 8
  br label %384

359:                                              ; preds = %349
  %360 = load i8*, i8** %11, align 8
  store i8 0, i8* %360, align 1
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = call i8* @find_prefix(%struct.TYPE_9__* %361, i8* %364)
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 2
  store i8* %365, i8** %367, align 8
  %368 = load i8*, i8** %11, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 1
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 0
  store i8* %369, i8** %371, align 8
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 2
  %374 = load i8*, i8** %373, align 8
  %375 = call i64 @APR_XML_NS_IS_ERROR(i8* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %359
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 0
  store i8* %380, i8** %382, align 8
  br label %390

383:                                              ; preds = %359
  br label %384

384:                                              ; preds = %383, %355
  br label %385

385:                                              ; preds = %384, %345
  br label %386

386:                                              ; preds = %385
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 3
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  store %struct.TYPE_12__* %389, %struct.TYPE_12__** %9, align 8
  br label %334

390:                                              ; preds = %23, %155, %322, %377, %334
  ret void
}

declare dso_local i8* @apr_pcalloc(i32, i32) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @apr_palloc(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @apr_xml_quote_string(i32, i8*, i32) #1

declare dso_local i32 @apr_xml_insert_uri(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @find_prefix(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @APR_XML_NS_IS_RESERVED(i8*) #1

declare dso_local i64 @APR_XML_NS_IS_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
