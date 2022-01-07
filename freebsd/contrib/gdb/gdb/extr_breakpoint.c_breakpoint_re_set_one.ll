; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_breakpoint_re_set_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_breakpoint_re_set_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, i8*, i32, i8*, %struct.TYPE_11__*, i32*, %struct.TYPE_11__*, i32*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.value = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.TYPE_11__* }
%struct.symtab = type { i32 }
%struct.block = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"attempted to reset apparently deleted breakpoint #%d?\00", align 1
@bp_shlib_disabled = common dso_local global i32 0, align 4
@bp_disabled = common dso_local global i32 0, align 4
@input_radix = common dso_local global i32 0, align 4
@innermost_block = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Deleting unknown breakpoint type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @breakpoint_re_set_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @breakpoint_re_set_one(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.breakpoint*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.breakpoint*
  store %struct.breakpoint* %12, %struct.breakpoint** %4, align 8
  %13 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %14 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %381 [
    i32 136, label %16
    i32 150, label %21
    i32 140, label %21
    i32 145, label %21
    i32 143, label %21
    i32 129, label %285
    i32 139, label %285
    i32 134, label %285
    i32 151, label %285
    i32 148, label %379
    i32 144, label %379
    i32 146, label %380
    i32 142, label %380
    i32 147, label %380
    i32 138, label %386
    i32 137, label %386
    i32 135, label %386
    i32 133, label %389
    i32 131, label %389
    i32 130, label %389
    i32 141, label %389
    i32 128, label %389
    i32 149, label %389
    i32 132, label %389
  ]

16:                                               ; preds = %1
  %17 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %18 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %391

21:                                               ; preds = %1, %1, %1, %1
  %22 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %23 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %28 = call i32 @delete_breakpoint(%struct.breakpoint* %27)
  store i32 0, i32* %2, align 4
  br label %391

29:                                               ; preds = %21
  %30 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %31 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %30, i32 0, i32 14
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %390

35:                                               ; preds = %29
  %36 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %37 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %40 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @bp_shlib_disabled, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @bp_disabled, align 4
  %46 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %47 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %35
  %49 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %50 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_language(i32 %51)
  %53 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %54 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* @input_radix, align 4
  %56 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %57 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  %59 = call { i32, %struct.TYPE_11__* } @decode_line_1(i8** %8, i32 1, %struct.symtab* null, i32 0, i8*** null, i32* null)
  %60 = bitcast %struct.symtabs_and_lines* %10 to { i32, %struct.TYPE_11__* }*
  %61 = getelementptr inbounds { i32, %struct.TYPE_11__* }, { i32, %struct.TYPE_11__* }* %60, i32 0, i32 0
  %62 = extractvalue { i32, %struct.TYPE_11__* } %59, 0
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds { i32, %struct.TYPE_11__* }, { i32, %struct.TYPE_11__* }* %60, i32 0, i32 1
  %64 = extractvalue { i32, %struct.TYPE_11__* } %59, 1
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %63, align 8
  %65 = bitcast %struct.symtabs_and_lines* %7 to i8*
  %66 = bitcast %struct.symtabs_and_lines* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %278, %48
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %281

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = call i32 @resolve_sal_pc(%struct.TYPE_11__* %77)
  %79 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %80 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %72
  %84 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %85 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %8, align 8
  %87 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %88 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %87, i32 0, i32 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %93 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @xfree(%struct.TYPE_11__* %94)
  %96 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %97 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %96, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %97, align 8
  br label %98

98:                                               ; preds = %91, %83
  %99 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.block* @block_for_pc(i32 %105)
  %107 = call i8* @parse_exp_1(i8** %8, %struct.block* %106, i32 0)
  %108 = bitcast i8* %107 to %struct.TYPE_11__*
  %109 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %110 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %109, i32 0, i32 4
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %110, align 8
  br label %111

111:                                              ; preds = %98, %72
  %112 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %113 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %112, i32 0, i32 9
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %116, %123
  br i1 %124, label %182, label %125

125:                                              ; preds = %111
  %126 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %127 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %126, i32 0, i32 11
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = icmp ne %struct.TYPE_11__* %128, null
  br i1 %129, label %130, label %166

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = icmp ne %struct.TYPE_9__* %137, null
  br i1 %138, label %139, label %166

139:                                              ; preds = %130
  %140 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %141 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %140, i32 0, i32 11
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @strcmp(%struct.TYPE_11__* %142, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %182, label %154

154:                                              ; preds = %139
  %155 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %156 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %157, %164
  br i1 %165, label %182, label %166

166:                                              ; preds = %154, %130, %125
  %167 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %168 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %167, i32 0, i32 11
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = icmp eq %struct.TYPE_11__* %169, null
  %171 = zext i1 %170 to i32
  %172 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = icmp eq %struct.TYPE_9__* %178, null
  %180 = zext i1 %179 to i32
  %181 = icmp ne i32 %171, %180
  br i1 %181, label %182, label %261

182:                                              ; preds = %166, %154, %139, %111
  %183 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %184 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %183, i32 0, i32 11
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = icmp ne %struct.TYPE_11__* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %189 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %188, i32 0, i32 11
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = call i32 @xfree(%struct.TYPE_11__* %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = icmp eq %struct.TYPE_9__* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  %202 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %203 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %202, i32 0, i32 11
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %203, align 8
  br label %227

204:                                              ; preds = %192
  %205 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @strlen(i32 %222)
  %224 = call %struct.TYPE_11__* @savestring(i32 %213, i32 %223)
  %225 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %226 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %225, i32 0, i32 11
  store %struct.TYPE_11__* %224, %struct.TYPE_11__** %226, align 8
  br label %227

227:                                              ; preds = %204, %201
  %228 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %236 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %235, i32 0, i32 10
  store i32 %234, i32* %236, align 8
  %237 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %245 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %244, i32 0, i32 9
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  store i32 %243, i32* %247, align 4
  %248 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %249 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %248, i32 0, i32 9
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @adjust_breakpoint_address(i32 %252)
  %254 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %255 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %254, i32 0, i32 9
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  store i32 %253, i32* %257, align 4
  %258 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %259 = call i32 @mention(%struct.breakpoint* %258)
  %260 = call i32 (...) @breakpoints_changed()
  br label %261

261:                                              ; preds = %227, %166
  %262 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %270 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %269, i32 0, i32 9
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 4
  %273 = load i32, i32* %9, align 4
  %274 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %275 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %277 = call i32 @check_duplicates(%struct.breakpoint* %276)
  br label %278

278:                                              ; preds = %261
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %67

281:                                              ; preds = %67
  %282 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = call i32 @xfree(%struct.TYPE_11__* %283)
  br label %390

285:                                              ; preds = %1, %1, %1, %1
  store i32* null, i32** @innermost_block, align 8
  %286 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %287 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %286, i32 0, i32 6
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %287, align 8
  %289 = icmp ne %struct.TYPE_11__* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %285
  %291 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %292 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %291, i32 0, i32 6
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = call i32 @xfree(%struct.TYPE_11__* %293)
  %295 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %296 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %295, i32 0, i32 6
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %296, align 8
  br label %297

297:                                              ; preds = %290, %285
  %298 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %299 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %298, i32 0, i32 8
  %300 = load i32, i32* %299, align 8
  %301 = call %struct.TYPE_11__* @parse_expression(i32 %300)
  %302 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %303 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %302, i32 0, i32 6
  store %struct.TYPE_11__* %301, %struct.TYPE_11__** %303, align 8
  %304 = load i32*, i32** @innermost_block, align 8
  %305 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %306 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %305, i32 0, i32 7
  store i32* %304, i32** %306, align 8
  %307 = call %struct.value* (...) @value_mark()
  store %struct.value* %307, %struct.value** %5, align 8
  %308 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %309 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = icmp ne i32* %310, null
  br i1 %311, label %312, label %319

312:                                              ; preds = %297
  %313 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %314 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %313, i32 0, i32 5
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @value_free(i32* %315)
  %317 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %318 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %317, i32 0, i32 5
  store i32* null, i32** %318, align 8
  br label %319

319:                                              ; preds = %312, %297
  %320 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %321 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %320, i32 0, i32 6
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %321, align 8
  %323 = call i32* @evaluate_expression(%struct.TYPE_11__* %322)
  %324 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %325 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %324, i32 0, i32 5
  store i32* %323, i32** %325, align 8
  %326 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %327 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %326, i32 0, i32 5
  %328 = load i32*, i32** %327, align 8
  %329 = call i32 @release_value(i32* %328)
  %330 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %331 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %330, i32 0, i32 5
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @VALUE_LAZY(i32* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %319
  %336 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %337 = call i32 @breakpoint_enabled(%struct.breakpoint* %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %335
  %340 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %341 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %340, i32 0, i32 5
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @value_fetch_lazy(i32* %342)
  br label %344

344:                                              ; preds = %339, %335, %319
  %345 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %346 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %345, i32 0, i32 3
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %369

349:                                              ; preds = %344
  %350 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %351 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %350, i32 0, i32 3
  %352 = load i8*, i8** %351, align 8
  store i8* %352, i8** %8, align 8
  %353 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %354 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %353, i32 0, i32 4
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = icmp ne %struct.TYPE_11__* %355, null
  br i1 %356, label %357, label %364

357:                                              ; preds = %349
  %358 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %359 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %358, i32 0, i32 4
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %359, align 8
  %361 = call i32 @xfree(%struct.TYPE_11__* %360)
  %362 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %363 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %362, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %363, align 8
  br label %364

364:                                              ; preds = %357, %349
  %365 = call i8* @parse_exp_1(i8** %8, %struct.block* null, i32 0)
  %366 = bitcast i8* %365 to %struct.TYPE_11__*
  %367 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %368 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %367, i32 0, i32 4
  store %struct.TYPE_11__* %366, %struct.TYPE_11__** %368, align 8
  br label %369

369:                                              ; preds = %364, %344
  %370 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %371 = call i32 @breakpoint_enabled(%struct.breakpoint* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %375 = call i32 @mention(%struct.breakpoint* %374)
  br label %376

376:                                              ; preds = %373, %369
  %377 = load %struct.value*, %struct.value** %5, align 8
  %378 = call i32 @value_free_to_mark(%struct.value* %377)
  br label %390

379:                                              ; preds = %1, %1
  br label %390

380:                                              ; preds = %1, %1, %1
  br label %390

381:                                              ; preds = %1
  %382 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %383 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @printf_filtered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %1, %1, %1, %381
  %387 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %388 = call i32 @delete_breakpoint(%struct.breakpoint* %387)
  br label %390

389:                                              ; preds = %1, %1, %1, %1, %1, %1, %1
  br label %390

390:                                              ; preds = %389, %386, %380, %379, %376, %281, %34
  store i32 0, i32* %2, align 4
  br label %391

391:                                              ; preds = %390, %26, %16
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @delete_breakpoint(%struct.breakpoint*) #1

declare dso_local i32 @set_language(i32) #1

declare dso_local { i32, %struct.TYPE_11__* } @decode_line_1(i8**, i32, %struct.symtab*, i32, i8***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resolve_sal_pc(%struct.TYPE_11__*) #1

declare dso_local i32 @xfree(%struct.TYPE_11__*) #1

declare dso_local i8* @parse_exp_1(i8**, %struct.block*, i32) #1

declare dso_local %struct.block* @block_for_pc(i32) #1

declare dso_local i32 @strcmp(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @savestring(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @adjust_breakpoint_address(i32) #1

declare dso_local i32 @mention(%struct.breakpoint*) #1

declare dso_local i32 @breakpoints_changed(...) #1

declare dso_local i32 @check_duplicates(%struct.breakpoint*) #1

declare dso_local %struct.TYPE_11__* @parse_expression(i32) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local i32 @value_free(i32*) #1

declare dso_local i32* @evaluate_expression(%struct.TYPE_11__*) #1

declare dso_local i32 @release_value(i32*) #1

declare dso_local i32 @VALUE_LAZY(i32*) #1

declare dso_local i32 @breakpoint_enabled(%struct.breakpoint*) #1

declare dso_local i32 @value_fetch_lazy(i32*) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
