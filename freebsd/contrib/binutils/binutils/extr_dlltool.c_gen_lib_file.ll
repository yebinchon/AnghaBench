; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_gen_lib_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_gen_lib_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }

@imp_name = common dso_local global i8* null, align 8
@HOW_BFD_WRITE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't open .lib file: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Creating library file: %s\00", align 1
@bfd_archive = common dso_local global i32 0, align 4
@d_exports_lexically = common dso_local global %struct.TYPE_13__** null, align 8
@ext_prefix_alias = common dso_local global i64 0, align 8
@PREFIX_ALIAS_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bfd_set_archive_head\00", align 1
@dontdeltemps = common dso_local global i32 0, align 4
@TMP_HEAD_O = common dso_local global i8* null, align 8
@TMP_HEAD_S = common dso_local global i8* null, align 8
@TMP_TAIL_O = common dso_local global i8* null, align 8
@TMP_TAIL_S = common dso_local global i8* null, align 8
@TMP_STUB = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%05d.o\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot delete %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Created lib file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gen_lib_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_lib_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %11 = load i8*, i8** @imp_name, align 8
  %12 = call i64 @unlink(i8* %11)
  %13 = load i8*, i8** @imp_name, align 8
  %14 = load i32, i32* @HOW_BFD_WRITE_TARGET, align 4
  %15 = call %struct.TYPE_14__* @bfd_openw(i8* %13, i32 %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %0
  %19 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** @imp_name, align 8
  %21 = call i32 @fatal(i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** @imp_name, align 8
  %25 = call i32 (i32, ...) @inform(i32 %23, i8* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = load i32, i32* @bfd_archive, align 4
  %28 = call i32 @bfd_set_format(%struct.TYPE_14__* %26, i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = call %struct.TYPE_14__* (...) @make_head()
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %3, align 8
  %32 = call %struct.TYPE_14__* (...) @make_tail()
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %4, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = icmp eq %struct.TYPE_14__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = icmp eq %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %22
  br label %235

39:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %124, %39
  %41 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @d_exports_lexically, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %41, i64 %43
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %2, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %127

47:                                               ; preds = %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %124

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = load i32, i32* %1, align 4
  %56 = call %struct.TYPE_14__* @make_one_lib_file(%struct.TYPE_13__* %54, i32 %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %6, align 8
  %61 = load i64, i64* @ext_prefix_alias, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %123

63:                                               ; preds = %53
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @PREFIX_ALIAS_BASE, align 4
  %66 = icmp slt i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* @ext_prefix_alias, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @make_imp_label(i64 %69, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 10
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 9
  store i32 %81, i32* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 6
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  store i32 %93, i32* %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %105, i32* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* %1, align 4
  %116 = load i32, i32* @PREFIX_ALIAS_BASE, align 4
  %117 = add nsw i32 %115, %116
  %118 = call %struct.TYPE_14__* @make_one_lib_file(%struct.TYPE_13__* %8, i32 %117)
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %7, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %6, align 8
  br label %123

123:                                              ; preds = %63, %53
  br label %124

124:                                              ; preds = %123, %52
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %1, align 4
  br label %40

127:                                              ; preds = %40
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %130, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %134, %struct.TYPE_14__** %6, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = call i32 @bfd_set_archive_head(%struct.TYPE_14__* %135, %struct.TYPE_14__* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %127
  %140 = call i32 @bfd_fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %127
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = call i32 @bfd_close(%struct.TYPE_14__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** @imp_name, align 8
  %147 = call i32 @bfd_fatal(i8* %146)
  br label %148

148:                                              ; preds = %145, %141
  br label %149

149:                                              ; preds = %152, %148
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = icmp ne %struct.TYPE_14__* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  store %struct.TYPE_14__* %155, %struct.TYPE_14__** %9, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = call i32 @bfd_close(%struct.TYPE_14__* %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %6, align 8
  br label %149

159:                                              ; preds = %149
  %160 = load i32, i32* @dontdeltemps, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i8*, i8** @TMP_HEAD_O, align 8
  %164 = call i64 @unlink(i8* %163)
  %165 = load i8*, i8** @TMP_HEAD_S, align 8
  %166 = call i64 @unlink(i8* %165)
  %167 = load i8*, i8** @TMP_TAIL_O, align 8
  %168 = call i64 @unlink(i8* %167)
  %169 = load i8*, i8** @TMP_TAIL_S, align 8
  %170 = call i64 @unlink(i8* %169)
  br label %171

171:                                              ; preds = %162, %159
  %172 = load i32, i32* @dontdeltemps, align 4
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %232

174:                                              ; preds = %171
  %175 = load i8*, i8** @TMP_STUB, align 8
  %176 = call i64 @strlen(i8* %175)
  %177 = add nsw i64 %176, 10
  %178 = call i64 @alloca(i64 %177)
  %179 = inttoptr i64 %178 to i8*
  store i8* %179, i8** %10, align 8
  store i32 0, i32* %1, align 4
  br label %180

180:                                              ; preds = %228, %174
  %181 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @d_exports_lexically, align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %181, i64 %183
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  store %struct.TYPE_13__* %185, %struct.TYPE_13__** %2, align 8
  %186 = icmp ne %struct.TYPE_13__* %185, null
  br i1 %186, label %187, label %231

187:                                              ; preds = %180
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %228

193:                                              ; preds = %187
  %194 = load i8*, i8** %10, align 8
  %195 = load i8*, i8** @TMP_STUB, align 8
  %196 = load i32, i32* %1, align 4
  %197 = call i32 @sprintf(i8* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %195, i32 %196)
  %198 = load i8*, i8** %10, align 8
  %199 = call i64 @unlink(i8* %198)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %203 = load i8*, i8** %10, align 8
  %204 = load i32, i32* @errno, align 4
  %205 = call i32 @strerror(i32 %204)
  %206 = call i32 @non_fatal(i32 %202, i8* %203, i32 %205)
  br label %207

207:                                              ; preds = %201, %193
  %208 = load i64, i64* @ext_prefix_alias, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %207
  %211 = load i8*, i8** %10, align 8
  %212 = load i8*, i8** @TMP_STUB, align 8
  %213 = load i32, i32* %1, align 4
  %214 = load i32, i32* @PREFIX_ALIAS_BASE, align 4
  %215 = add nsw i32 %213, %214
  %216 = call i32 @sprintf(i8* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %212, i32 %215)
  %217 = load i8*, i8** %10, align 8
  %218 = call i64 @unlink(i8* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %210
  %221 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %222 = load i8*, i8** %10, align 8
  %223 = load i32, i32* @errno, align 4
  %224 = call i32 @strerror(i32 %223)
  %225 = call i32 @non_fatal(i32 %221, i8* %222, i32 %224)
  br label %226

226:                                              ; preds = %220, %210
  br label %227

227:                                              ; preds = %226, %207
  br label %228

228:                                              ; preds = %227, %192
  %229 = load i32, i32* %1, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %1, align 4
  br label %180

231:                                              ; preds = %180
  br label %232

232:                                              ; preds = %231, %171
  %233 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %234 = call i32 (i32, ...) @inform(i32 %233)
  br label %235

235:                                              ; preds = %232, %38
  ret void
}

declare dso_local i64 @unlink(i8*) #1

declare dso_local %struct.TYPE_14__* @bfd_openw(i8*, i32) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @inform(i32, ...) #1

declare dso_local i32 @bfd_set_format(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @make_head(...) #1

declare dso_local %struct.TYPE_14__* @make_tail(...) #1

declare dso_local %struct.TYPE_14__* @make_one_lib_file(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @make_imp_label(i64, i32) #1

declare dso_local i32 @bfd_set_archive_head(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_14__*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @non_fatal(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
