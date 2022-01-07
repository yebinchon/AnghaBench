; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_input_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_input_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"input:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@INPUT_DEVICE_ID_MATCH_BUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@INPUT_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@INPUT_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@INPUT_DEVICE_ID_MATCH_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"-e*\00", align 1
@INPUT_DEVICE_ID_MATCH_EVBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_EV_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"k*\00", align 1
@INPUT_DEVICE_ID_MATCH_KEYBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_KEY_MIN_INTERESTING = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_KEY_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"r*\00", align 1
@INPUT_DEVICE_ID_MATCH_RELBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_REL_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@INPUT_DEVICE_ID_MATCH_ABSBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_ABS_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"m*\00", align 1
@INPUT_DEVICE_ID_MATCH_MSCIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MSC_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"l*\00", align 1
@INPUT_DEVICE_ID_MATCH_LEDBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_LED_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"s*\00", align 1
@INPUT_DEVICE_ID_MATCH_SNDBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_SND_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"f*\00", align 1
@INPUT_DEVICE_ID_MATCH_FFBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_FF_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@INPUT_DEVICE_ID_MATCH_SWBIT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_SW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.input_device_id*, i8*)* @do_input_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_input_entry(i8* %0, %struct.input_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_device_id*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.input_device_id* %1, %struct.input_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INPUT_DEVICE_ID_MATCH_BUS, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ADD(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VENDOR, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ADD(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INPUT_DEVICE_ID_MATCH_PRODUCT, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ADD(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VERSION, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ADD(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @INPUT_DEVICE_ID_MATCH_EVBIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %3
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %64 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @INPUT_DEVICE_ID_EV_MAX, align 4
  %67 = call i32 @do_input(i8* %62, i32 %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %61, %3
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = call i32 @sprintf(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %75 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %76 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @INPUT_DEVICE_ID_MATCH_KEYBIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %68
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %84 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @INPUT_DEVICE_ID_KEY_MIN_INTERESTING, align 4
  %87 = load i32, i32* @INPUT_DEVICE_ID_KEY_MAX, align 4
  %88 = call i32 @do_input(i8* %82, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %68
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %96 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %97 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @INPUT_DEVICE_ID_MATCH_RELBIT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %89
  %103 = load i8*, i8** %6, align 8
  %104 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %105 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @INPUT_DEVICE_ID_REL_MAX, align 4
  %108 = call i32 @do_input(i8* %103, i32 %106, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %102, %89
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %116 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %117 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @INPUT_DEVICE_ID_MATCH_ABSBIT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %109
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %125 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @INPUT_DEVICE_ID_ABS_MAX, align 4
  %128 = call i32 @do_input(i8* %123, i32 %126, i32 0, i32 %127)
  br label %129

129:                                              ; preds = %122, %109
  %130 = load i8*, i8** %6, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = call i32 @sprintf(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %136 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %137 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @INPUT_DEVICE_ID_MATCH_MSCIT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %129
  %143 = load i8*, i8** %6, align 8
  %144 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %145 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @INPUT_DEVICE_ID_MSC_MAX, align 4
  %148 = call i32 @do_input(i8* %143, i32 %146, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %142, %129
  %150 = load i8*, i8** %6, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = call i32 @sprintf(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %156 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %157 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @INPUT_DEVICE_ID_MATCH_LEDBIT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %149
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %165 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @INPUT_DEVICE_ID_LED_MAX, align 4
  %168 = call i32 @do_input(i8* %163, i32 %166, i32 0, i32 %167)
  br label %169

169:                                              ; preds = %162, %149
  %170 = load i8*, i8** %6, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = call i32 @sprintf(i8* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %176 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %177 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @INPUT_DEVICE_ID_MATCH_SNDBIT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %169
  %183 = load i8*, i8** %6, align 8
  %184 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %185 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @INPUT_DEVICE_ID_SND_MAX, align 4
  %188 = call i32 @do_input(i8* %183, i32 %186, i32 0, i32 %187)
  br label %189

189:                                              ; preds = %182, %169
  %190 = load i8*, i8** %6, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 @strlen(i8* %191)
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = call i32 @sprintf(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %196 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %197 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @INPUT_DEVICE_ID_MATCH_FFBIT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %189
  %203 = load i8*, i8** %6, align 8
  %204 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %205 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @INPUT_DEVICE_ID_FF_MAX, align 4
  %208 = call i32 @do_input(i8* %203, i32 %206, i32 0, i32 %207)
  br label %209

209:                                              ; preds = %202, %189
  %210 = load i8*, i8** %6, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 @strlen(i8* %211)
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = call i32 @sprintf(i8* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %216 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %217 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @INPUT_DEVICE_ID_MATCH_SWBIT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %209
  %223 = load i8*, i8** %6, align 8
  %224 = load %struct.input_device_id*, %struct.input_device_id** %5, align 8
  %225 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @INPUT_DEVICE_ID_SW_MAX, align 4
  %228 = call i32 @do_input(i8* %223, i32 %226, i32 0, i32 %227)
  br label %229

229:                                              ; preds = %222, %209
  ret i32 1
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_input(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
