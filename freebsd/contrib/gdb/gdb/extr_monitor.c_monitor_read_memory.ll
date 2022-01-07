; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_read_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i64, i32 }
%struct.re_registers = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"Zero length call to monitor_read_memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MON read block ta(%s) ha(%lx) %d\0A\00", align 1
@current_monitor = common dso_local global %struct.TYPE_4__* null, align 8
@MO_ADDR_BITS_REMOVE = common dso_local global i32 0, align 4
@MO_GETMEM_READ_SINGLE = common dso_local global i32 0, align 4
@MO_EXACT_DUMPADDR = common dso_local global i32 0, align 4
@MO_GETMEM_NEEDS_RANGE = common dso_local global i32 0, align 4
@MO_GETMEM_16_BOUNDARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"monitor_read_memory\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"excessive response from monitor\00", align 1
@monitor_desc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"MON getmem.resp_delim %s\0A\00", align 1
@getmem_resp_delim_pattern = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"bad response from monitor\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"MON scanning  %d ,%lx '%s'\0A\00", align 1
@monitor_debug_p = common dso_local global i64 0, align 8
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"[%02x]\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to read via monitor\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"MON scanning bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"badly terminated response from monitor\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"bad value from monitor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @monitor_read_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_read_memory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.re_registers, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %363

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @paddr_nz(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %28, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MO_ADDR_BITS_REMOVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ADDR_BITS_REMOVE(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MO_GETMEM_READ_SINGLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @monitor_read_memory_single(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %363

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @min(i32 %53, i32 16)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MO_EXACT_DUMPADDR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  br label %66

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, -16
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %62, %61 ], [ %65, %63 ]
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = xor i32 %68, %72
  %74 = and i32 %73, -16
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = and i32 %79, -16
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %66
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MO_GETMEM_NEEDS_RANGE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 (i32, i32, ...) @monitor_printf(i32 %94, i32 %95, i32 %98)
  br label %123

100:                                              ; preds = %83
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MO_GETMEM_16_BOUNDARY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 (i32, i32, ...) @monitor_printf(i32 %111, i32 %112)
  br label %122

114:                                              ; preds = %100
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32, i32, ...) @monitor_printf(i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %107
  br label %123

123:                                              ; preds = %122, %90
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %123
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %135 = call i32 @monitor_expect(i64 %133, i8* %134, i32 512)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %12, align 4
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %142 = call i32 @monitor_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %140, i8* %141, i32 0)
  br label %143

143:                                              ; preds = %138, %129
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  %150 = load i32, i32* @monitor_desc, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = call i32 @serial_write(i32 %150, i8* %154, i32 %159)
  %161 = call i32 @monitor_expect_prompt(i8* null, i32 0)
  br label %162

162:                                              ; preds = %149, %143
  br label %166

163:                                              ; preds = %123
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %165 = call i32 @monitor_expect_prompt(i8* %164, i32 512)
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %163, %162
  %167 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8* %167, i8** %10, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %201

173:                                              ; preds = %166
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %177)
  %179 = call i32 @memset(%struct.re_registers* %17, i32 0, i32 8)
  %180 = load i8*, i8** %10, align 8
  %181 = call i32 @strlen(i8* %180)
  store i32 %181, i32* %16, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @re_search(i32* @getmem_resp_delim_pattern, i8* %182, i32 %183, i32 0, i32 %184, %struct.re_registers* %17)
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %173
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %12, align 4
  %191 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %192 = call i32 @monitor_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %190, i8* %191, i32 0)
  br label %193

193:                                              ; preds = %188, %173
  %194 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %17, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %10, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %10, align 8
  br label %201

201:                                              ; preds = %193, %166
  %202 = load i32, i32* %7, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = ptrtoint i8* %203 to i64
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %202, i64 %204, i8* %205)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @MO_GETMEM_16_BOUNDARY, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %298

213:                                              ; preds = %201
  store i32 0, i32* %19, align 4
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %13, align 4
  %215 = load i8*, i8** %10, align 8
  %216 = load i8, i8* %215, align 1
  store i8 %216, i8* %18, align 1
  br label %217

217:                                              ; preds = %277, %213
  %218 = load i8, i8* %18, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %232, label %221

221:                                              ; preds = %217
  %222 = load i8, i8* %18, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 10
  br i1 %224, label %232, label %225

225:                                              ; preds = %221
  %226 = load i8, i8* %18, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 13
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %13, align 4
  %231 = icmp sgt i32 %230, 0
  br label %232

232:                                              ; preds = %229, %225, %221, %217
  %233 = phi i1 [ false, %225 ], [ false, %221 ], [ false, %217 ], [ %231, %229 ]
  br i1 %233, label %234, label %282

234:                                              ; preds = %232
  %235 = load i8, i8* %18, align 1
  %236 = call i64 @isxdigit(i8 signext %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %277

238:                                              ; preds = %234
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %5, align 4
  %241 = icmp sge i32 %239, %240
  br i1 %241, label %242, label %272

242:                                              ; preds = %238
  %243 = load i32, i32* %13, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %272

245:                                              ; preds = %242
  %246 = load i8, i8* %18, align 1
  %247 = call i32 @fromhex(i8 signext %246)
  %248 = mul nsw i32 %247, 16
  %249 = load i8*, i8** %10, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 1
  %251 = load i8, i8* %250, align 1
  %252 = call i32 @fromhex(i8 signext %251)
  %253 = add nsw i32 %248, %252
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = trunc i32 %254 to i8
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %6, align 8
  store i8 %255, i8* %256, align 1
  %258 = load i64, i64* @monitor_debug_p, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %245
  %261 = load i64, i64* @remote_debug, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %260, %245
  %264 = load i32, i32* @gdb_stdlog, align 4
  %265 = load i32, i32* %8, align 4
  %266 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %263, %260
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %13, align 4
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %19, align 4
  br label %272

272:                                              ; preds = %267, %242, %238
  %273 = load i32, i32* %14, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %14, align 4
  %275 = load i8*, i8** %10, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %10, align 8
  br label %277

277:                                              ; preds = %272, %234
  %278 = load i8*, i8** %10, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %10, align 8
  %280 = load i8*, i8** %10, align 8
  %281 = load i8, i8* %280, align 1
  store i8 %281, i8* %18, align 1
  br label %217

282:                                              ; preds = %232
  %283 = load i32, i32* %19, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %282
  %288 = load i64, i64* @monitor_debug_p, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i64, i64* @remote_debug, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290, %287
  %294 = load i32, i32* @gdb_stdlog, align 4
  %295 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %294, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %19, align 4
  store i32 %297, i32* %4, align 4
  br label %363

298:                                              ; preds = %201
  %299 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %300 = load i32, i32* %7, align 4
  store i32 %300, i32* %13, align 4
  br label %301

301:                                              ; preds = %358, %298
  %302 = load i32, i32* %13, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %361

304:                                              ; preds = %301
  br label %305

305:                                              ; preds = %304, %331
  %306 = load i8*, i8** %10, align 8
  %307 = load i8, i8* %306, align 1
  %308 = call i64 @isxdigit(i8 signext %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %334

311:                                              ; preds = %305
  %312 = load i8*, i8** %10, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %326, label %316

316:                                              ; preds = %311
  %317 = load i8*, i8** %10, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 10
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  %322 = load i8*, i8** %10, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 13
  br i1 %325, label %326, label %331

326:                                              ; preds = %321, %316, %311
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %12, align 4
  %329 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %330 = call i32 @monitor_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %327, i32 %328, i8* %329, i32 0)
  br label %331

331:                                              ; preds = %326, %321
  %332 = load i8*, i8** %10, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %10, align 8
  br label %305

334:                                              ; preds = %310
  %335 = load i8*, i8** %10, align 8
  %336 = call i32 @strtoul(i8* %335, i8** %11, i32 16)
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load i8*, i8** %10, align 8
  %341 = load i8*, i8** %11, align 8
  %342 = icmp eq i8* %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = load i32, i32* %5, align 4
  %345 = load i32, i32* %12, align 4
  %346 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %347 = call i32 @monitor_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %344, i32 %345, i8* %346, i32 0)
  br label %348

348:                                              ; preds = %343, %339, %334
  %349 = load i32, i32* %8, align 4
  %350 = trunc i32 %349 to i8
  %351 = load i8*, i8** %6, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %6, align 8
  store i8 %350, i8* %351, align 1
  %353 = load i32, i32* %13, align 4
  %354 = icmp eq i32 %353, 1
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  br label %361

356:                                              ; preds = %348
  %357 = load i8*, i8** %11, align 8
  store i8* %357, i8** %10, align 8
  br label %358

358:                                              ; preds = %356
  %359 = load i32, i32* %13, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %13, align 4
  br label %301

361:                                              ; preds = %355, %301
  %362 = load i32, i32* %7, align 4
  store i32 %362, i32* %4, align 4
  br label %363

363:                                              ; preds = %361, %296, %47, %22
  %364 = load i32, i32* %4, align 4
  ret i32 %364
}

declare dso_local i32 @monitor_debug(i8*, ...) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @monitor_read_memory_single(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @monitor_printf(i32, i32, ...) #1

declare dso_local i32 @monitor_expect(i64, i8*, i32) #1

declare dso_local i32 @monitor_error(i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @monitor_expect_prompt(i8*, i32) #1

declare dso_local i32 @memset(%struct.re_registers*, i32, i32) #1

declare dso_local i32 @re_search(i32*, i8*, i32, i32, i32, %struct.re_registers*) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @fromhex(i8 signext) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
