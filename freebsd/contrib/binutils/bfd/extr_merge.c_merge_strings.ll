; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_merge_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_merge_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_merge_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.sec_merge_hash_entry* }
%struct.sec_merge_hash_entry = type { i32, i32, %struct.TYPE_6__, %struct.sec_merge_sec_info*, %struct.sec_merge_hash_entry* }
%struct.TYPE_6__ = type { i32, %struct.sec_merge_hash_entry* }
%struct.sec_merge_sec_info = type { %struct.TYPE_4__*, %struct.sec_merge_hash_entry* }
%struct.TYPE_4__ = type { i32, i32 }

@strrevcmp_align = common dso_local global i32 0, align 4
@strrevcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_merge_info*)* @merge_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_strings(%struct.sec_merge_info* %0) #0 {
  %2 = alloca %struct.sec_merge_info*, align 8
  %3 = alloca %struct.sec_merge_hash_entry**, align 8
  %4 = alloca %struct.sec_merge_hash_entry**, align 8
  %5 = alloca %struct.sec_merge_hash_entry*, align 8
  %6 = alloca %struct.sec_merge_sec_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sec_merge_hash_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.sec_merge_info* %0, %struct.sec_merge_info** %2, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %13 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.sec_merge_hash_entry** @bfd_malloc(i32 %20)
  store %struct.sec_merge_hash_entry** %21, %struct.sec_merge_hash_entry*** %3, align 8
  %22 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  %23 = icmp eq %struct.sec_merge_hash_entry** %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %183

25:                                               ; preds = %1
  %26 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %27 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %29, align 8
  store %struct.sec_merge_hash_entry* %30, %struct.sec_merge_hash_entry** %5, align 8
  %31 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  store %struct.sec_merge_hash_entry** %31, %struct.sec_merge_hash_entry*** %4, align 8
  br label %32

32:                                               ; preds = %69, %25
  %33 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %34 = icmp ne %struct.sec_merge_hash_entry* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  %36 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %37 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %42 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  %43 = getelementptr inbounds %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %42, i32 1
  store %struct.sec_merge_hash_entry** %43, %struct.sec_merge_hash_entry*** %4, align 8
  store %struct.sec_merge_hash_entry* %41, %struct.sec_merge_hash_entry** %42, align 8
  %44 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %45 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %50 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %55 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %40
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %63 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %9, align 4
  br label %66

65:                                               ; preds = %58
  store i32 -1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67, %35
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %71 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %70, i32 0, i32 4
  %72 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %71, align 8
  store %struct.sec_merge_hash_entry* %72, %struct.sec_merge_hash_entry** %5, align 8
  br label %32

73:                                               ; preds = %32
  %74 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  %75 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  %76 = ptrtoint %struct.sec_merge_hash_entry** %74 to i64
  %77 = ptrtoint %struct.sec_merge_hash_entry** %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %82 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %86 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %182

91:                                               ; preds = %73
  %92 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  %93 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %94 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %104 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ugt i32 %102, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @strrevcmp_align, align 4
  br label %113

111:                                              ; preds = %101, %91
  %112 = load i32, i32* @strrevcmp, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = call i32 @qsort(%struct.sec_merge_hash_entry** %92, i64 %98, i32 8, i32 %114)
  %116 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  %117 = getelementptr inbounds %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %116, i32 -1
  store %struct.sec_merge_hash_entry** %117, %struct.sec_merge_hash_entry*** %4, align 8
  %118 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %117, align 8
  store %struct.sec_merge_hash_entry* %118, %struct.sec_merge_hash_entry** %5, align 8
  %119 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %120 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %125 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %180, %113
  %129 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  %130 = getelementptr inbounds %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %129, i32 -1
  store %struct.sec_merge_hash_entry** %130, %struct.sec_merge_hash_entry*** %4, align 8
  %131 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  %132 = icmp uge %struct.sec_merge_hash_entry** %130, %131
  br i1 %132, label %133, label %181

133:                                              ; preds = %128
  %134 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  %135 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %134, align 8
  store %struct.sec_merge_hash_entry* %135, %struct.sec_merge_hash_entry** %10, align 8
  %136 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %137 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %142 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %146 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %149 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %147, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %133
  %153 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %154 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %157 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %161 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  %164 = and i32 %159, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %152
  %167 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %168 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %169 = call i64 @is_suffix(%struct.sec_merge_hash_entry* %167, %struct.sec_merge_hash_entry* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %173 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %174 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  store %struct.sec_merge_hash_entry* %172, %struct.sec_merge_hash_entry** %175, align 8
  %176 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %177 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %176, i32 0, i32 0
  store i32 0, i32* %177, align 8
  br label %180

178:                                              ; preds = %166, %152, %133
  %179 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  store %struct.sec_merge_hash_entry* %179, %struct.sec_merge_hash_entry** %5, align 8
  br label %180

180:                                              ; preds = %178, %171
  br label %128

181:                                              ; preds = %128
  br label %182

182:                                              ; preds = %181, %73
  br label %183

183:                                              ; preds = %182, %24
  %184 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  %185 = icmp ne %struct.sec_merge_hash_entry** %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %3, align 8
  %188 = call i32 @free(%struct.sec_merge_hash_entry** %187)
  br label %189

189:                                              ; preds = %186, %183
  store i32 0, i32* %7, align 4
  %190 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %191 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %193, align 8
  %195 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %194, i32 0, i32 3
  %196 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %195, align 8
  store %struct.sec_merge_sec_info* %196, %struct.sec_merge_sec_info** %6, align 8
  %197 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %198 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %200, align 8
  store %struct.sec_merge_hash_entry* %201, %struct.sec_merge_hash_entry** %5, align 8
  br label %202

202:                                              ; preds = %261, %189
  %203 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %204 = icmp ne %struct.sec_merge_hash_entry* %203, null
  br i1 %204, label %205, label %265

205:                                              ; preds = %202
  %206 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %207 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %206, i32 0, i32 3
  %208 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %207, align 8
  %209 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %210 = icmp ne %struct.sec_merge_sec_info* %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %214 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  store i32 %212, i32* %216, align 4
  %217 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %218 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %217, i32 0, i32 3
  %219 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %218, align 8
  store %struct.sec_merge_sec_info* %219, %struct.sec_merge_sec_info** %6, align 8
  br label %220

220:                                              ; preds = %211, %205
  %221 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %222 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %260

225:                                              ; preds = %220
  %226 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %227 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %226, i32 0, i32 3
  %228 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %227, align 8
  %229 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %228, i32 0, i32 1
  %230 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %229, align 8
  %231 = icmp eq %struct.sec_merge_hash_entry* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %234 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %235 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %234, i32 0, i32 3
  %236 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %235, align 8
  %237 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %236, i32 0, i32 1
  store %struct.sec_merge_hash_entry* %233, %struct.sec_merge_hash_entry** %237, align 8
  store i32 0, i32* %7, align 4
  br label %238

238:                                              ; preds = %232, %225
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %241 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %239, %242
  %244 = sub nsw i32 %243, 1
  %245 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %246 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 1
  %249 = xor i32 %248, -1
  %250 = and i32 %244, %249
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %253 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  store i32 %251, i32* %254, align 8
  %255 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %256 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %7, align 4
  br label %260

260:                                              ; preds = %238, %220
  br label %261

261:                                              ; preds = %260
  %262 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %263 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %262, i32 0, i32 4
  %264 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %263, align 8
  store %struct.sec_merge_hash_entry* %264, %struct.sec_merge_hash_entry** %5, align 8
  br label %202

265:                                              ; preds = %202
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %268 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %267, i32 0, i32 0
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  store i32 %266, i32* %270, align 4
  %271 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %272 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %271, i32 0, i32 0
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %299

277:                                              ; preds = %265
  %278 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %279 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %278, i32 0, i32 0
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 1, %282
  store i32 %283, i32* %11, align 4
  %284 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %285 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %288, %289
  %291 = sub nsw i32 %290, 1
  %292 = load i32, i32* %11, align 4
  %293 = sub nsw i32 0, %292
  %294 = and i32 %291, %293
  %295 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %296 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %295, i32 0, i32 0
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  store i32 %294, i32* %298, align 4
  br label %299

299:                                              ; preds = %277, %265
  %300 = load %struct.sec_merge_info*, %struct.sec_merge_info** %2, align 8
  %301 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %300, i32 0, i32 0
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 2
  store %struct.sec_merge_hash_entry** %303, %struct.sec_merge_hash_entry*** %4, align 8
  %304 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  %305 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %304, align 8
  store %struct.sec_merge_hash_entry* %305, %struct.sec_merge_hash_entry** %5, align 8
  br label %306

306:                                              ; preds = %366, %299
  %307 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %308 = icmp ne %struct.sec_merge_hash_entry* %307, null
  br i1 %308, label %309, label %370

309:                                              ; preds = %306
  %310 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %311 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %316 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %315, i32 0, i32 4
  store %struct.sec_merge_hash_entry** %316, %struct.sec_merge_hash_entry*** %4, align 8
  br label %365

317:                                              ; preds = %309
  %318 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %319 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %318, i32 0, i32 4
  %320 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %319, align 8
  %321 = load %struct.sec_merge_hash_entry**, %struct.sec_merge_hash_entry*** %4, align 8
  store %struct.sec_merge_hash_entry* %320, %struct.sec_merge_hash_entry** %321, align 8
  %322 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %323 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %364

326:                                              ; preds = %317
  %327 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %328 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  %330 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %329, align 8
  %331 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %330, i32 0, i32 3
  %332 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %331, align 8
  %333 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %334 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %333, i32 0, i32 3
  store %struct.sec_merge_sec_info* %332, %struct.sec_merge_sec_info** %334, align 8
  %335 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %336 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %337, align 8
  %339 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %342 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %341, i32 0, i32 0
  store i32 %340, i32* %342, align 8
  %343 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %344 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %345, align 8
  %347 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %351 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  %353 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %352, align 8
  %354 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %357 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = sub nsw i32 %355, %358
  %360 = add nsw i32 %349, %359
  %361 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %362 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  store i32 %360, i32* %363, align 8
  br label %364

364:                                              ; preds = %326, %317
  br label %365

365:                                              ; preds = %364, %314
  br label %366

366:                                              ; preds = %365
  %367 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %368 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %367, i32 0, i32 4
  %369 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %368, align 8
  store %struct.sec_merge_hash_entry* %369, %struct.sec_merge_hash_entry** %5, align 8
  br label %306

370:                                              ; preds = %306
  ret void
}

declare dso_local %struct.sec_merge_hash_entry** @bfd_malloc(i32) #1

declare dso_local i32 @qsort(%struct.sec_merge_hash_entry**, i64, i32, i32) #1

declare dso_local i64 @is_suffix(%struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry*) #1

declare dso_local i32 @free(%struct.sec_merge_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
