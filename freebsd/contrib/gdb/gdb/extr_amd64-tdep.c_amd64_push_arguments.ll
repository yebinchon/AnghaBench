; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_push_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_push_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@amd64_push_arguments.integer_regnum = internal global [6 x i32] [i32 134, i32 132, i32 133, i32 135, i32 8, i32 9], align 16
@amd64_push_arguments.sse_regnum = internal global [8 x i32] [i32 129, i32 128, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136], align 16
@.str = private unnamed_addr constant [27 x i8] c"Unexpected register class.\00", align 1
@AMD64_RAX_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regcache*, i32, %struct.value**, i32, i32)* @amd64_push_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_push_arguments(%struct.regcache* %0, i32 %1, %struct.value** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.value**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.value**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.type*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca [8 x i8], align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.type*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.value** %2, %struct.value*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.value** @alloca(i32 %34)
  store %struct.value** %35, %struct.value*** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %38, %5
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %189, %41
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %192

46:                                               ; preds = %42
  %47 = load %struct.value**, %struct.value*** %8, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.value*, %struct.value** %47, i64 %49
  %51 = load %struct.value*, %struct.value** %50, align 8
  %52 = call %struct.type* @VALUE_TYPE(%struct.value* %51)
  store %struct.type* %52, %struct.type** %18, align 8
  %53 = load %struct.type*, %struct.type** %18, align 8
  %54 = call i32 @TYPE_LENGTH(%struct.type* %53)
  store i32 %54, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %55 = load %struct.type*, %struct.type** %18, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %57 = call i32 @amd64_classify(%struct.type* %55, i32* %56)
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %81, %46
  %59 = load i32, i32* %23, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load i32, i32* %23, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 136
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %21, align 4
  br label %80

70:                                               ; preds = %61
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 131
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %22, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %22, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79, %67
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %23, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %23, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %21, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @amd64_push_arguments.integer_regnum, i64 0, i64 0))
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @amd64_push_arguments.sse_regnum, i64 0, i64 0))
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %21, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load i32, i32* %22, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %99, %90, %84
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 7
  %105 = sdiv i32 %104, 8
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load %struct.value**, %struct.value*** %8, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.value*, %struct.value** %108, i64 %110
  %112 = load %struct.value*, %struct.value** %111, align 8
  %113 = load %struct.value**, %struct.value*** %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.value*, %struct.value** %113, i64 %116
  store %struct.value* %112, %struct.value** %117, align 8
  br label %188

118:                                              ; preds = %99, %96
  %119 = load %struct.value**, %struct.value*** %8, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.value*, %struct.value** %119, i64 %121
  %123 = load %struct.value*, %struct.value** %122, align 8
  %124 = call i8* @VALUE_CONTENTS(%struct.value* %123)
  store i8* %124, i8** %24, align 8
  %125 = load i32, i32* %19, align 4
  %126 = icmp sle i32 %125, 16
  %127 = zext i1 %126 to i32
  %128 = call i32 @gdb_assert(i32 %127)
  store i32 0, i32* %23, align 4
  br label %129

129:                                              ; preds = %182, %118
  %130 = load i32, i32* %19, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %187

132:                                              ; preds = %129
  store i32 -1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %159 [
    i32 136, label %137
    i32 131, label %143
    i32 130, label %149
  ]

137:                                              ; preds = %132
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* @amd64_push_arguments.integer_regnum, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %26, align 4
  br label %161

143:                                              ; preds = %132
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* @amd64_push_arguments.sse_regnum, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %26, align 4
  br label %161

149:                                              ; preds = %132
  %150 = load i32, i32* %16, align 4
  %151 = icmp sgt i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @gdb_assert(i32 %152)
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* @amd64_push_arguments.sse_regnum, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %26, align 4
  store i32 8, i32* %27, align 4
  br label %161

159:                                              ; preds = %132
  %160 = call i32 @gdb_assert(i32 0)
  br label %161

161:                                              ; preds = %159, %149, %143, %137
  %162 = load i32, i32* %26, align 4
  %163 = icmp ne i32 %162, -1
  %164 = zext i1 %163 to i32
  %165 = call i32 @gdb_assert(i32 %164)
  %166 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %167 = call i32 @memset(i8* %166, i32 0, i32 8)
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %169 = load i8*, i8** %24, align 8
  %170 = load i32, i32* %23, align 4
  %171 = mul nsw i32 %170, 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i32, i32* %19, align 4
  %175 = call i32 @min(i32 %174, i32 8)
  %176 = call i32 @memcpy(i8* %168, i8* %173, i32 %175)
  %177 = load %struct.regcache*, %struct.regcache** %6, align 8
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %27, align 4
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %181 = call i32 @regcache_raw_write_part(%struct.regcache* %177, i32 %178, i32 %179, i32 8, i8* %180)
  br label %182

182:                                              ; preds = %161
  %183 = load i32, i32* %23, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 %185, 8
  store i32 %186, i32* %19, align 4
  br label %129

187:                                              ; preds = %129
  br label %188

188:                                              ; preds = %187, %102
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %17, align 4
  br label %42

192:                                              ; preds = %42
  %193 = load i32, i32* %13, align 4
  %194 = mul nsw i32 %193, 8
  %195 = load i32, i32* %9, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = and i32 %197, -16
  store i32 %198, i32* %9, align 4
  store i32 0, i32* %17, align 4
  br label %199

199:                                              ; preds = %230, %192
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %233

203:                                              ; preds = %199
  %204 = load %struct.value**, %struct.value*** %11, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.value*, %struct.value** %204, i64 %206
  %208 = load %struct.value*, %struct.value** %207, align 8
  %209 = call %struct.type* @VALUE_TYPE(%struct.value* %208)
  store %struct.type* %209, %struct.type** %28, align 8
  %210 = load %struct.value**, %struct.value*** %11, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.value*, %struct.value** %210, i64 %212
  %214 = load %struct.value*, %struct.value** %213, align 8
  %215 = call i8* @VALUE_CONTENTS(%struct.value* %214)
  store i8* %215, i8** %29, align 8
  %216 = load %struct.type*, %struct.type** %28, align 8
  %217 = call i32 @TYPE_LENGTH(%struct.type* %216)
  store i32 %217, i32* %30, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %14, align 4
  %220 = mul nsw i32 %219, 8
  %221 = add nsw i32 %218, %220
  %222 = load i8*, i8** %29, align 8
  %223 = load i32, i32* %30, align 4
  %224 = call i32 @write_memory(i32 %221, i8* %222, i32 %223)
  %225 = load i32, i32* %30, align 4
  %226 = add nsw i32 %225, 7
  %227 = sdiv i32 %226, 8
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %203
  %231 = load i32, i32* %17, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %17, align 4
  br label %199

233:                                              ; preds = %199
  %234 = load %struct.regcache*, %struct.regcache** %6, align 8
  %235 = load i32, i32* @AMD64_RAX_REGNUM, align 4
  %236 = load i32, i32* %16, align 4
  %237 = call i32 @regcache_raw_write_unsigned(%struct.regcache* %234, i32 %235, i32 %236)
  %238 = load i32, i32* %9, align 4
  ret i32 %238
}

declare dso_local %struct.value** @alloca(i32) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @amd64_classify(%struct.type*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regcache_raw_write_part(%struct.regcache*, i32, i32, i32, i8*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @regcache_raw_write_unsigned(%struct.regcache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
