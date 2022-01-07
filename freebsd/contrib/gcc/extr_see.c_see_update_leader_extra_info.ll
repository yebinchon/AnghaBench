; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_update_leader_extra_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_update_leader_extra_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_entry = type { i64 }
%struct.see_entry_extra_info = type { i64, i32, i32, i32 }

@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.web_entry*, %struct.web_entry*)* @see_update_leader_extra_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_update_leader_extra_info(%struct.web_entry* %0, %struct.web_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.web_entry*, align 8
  %5 = alloca %struct.web_entry*, align 8
  %6 = alloca %struct.see_entry_extra_info*, align 8
  %7 = alloca %struct.see_entry_extra_info*, align 8
  store %struct.web_entry* %0, %struct.web_entry** %4, align 8
  store %struct.web_entry* %1, %struct.web_entry** %5, align 8
  %8 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %9 = call %struct.web_entry* @unionfind_root(%struct.web_entry* %8)
  store %struct.web_entry* %9, %struct.web_entry** %4, align 8
  %10 = load %struct.web_entry*, %struct.web_entry** %5, align 8
  %11 = call %struct.web_entry* @unionfind_root(%struct.web_entry* %10)
  store %struct.web_entry* %11, %struct.web_entry** %5, align 8
  %12 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %13 = load %struct.web_entry*, %struct.web_entry** %5, align 8
  %14 = call i64 @unionfind_union(%struct.web_entry* %12, %struct.web_entry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %479

17:                                               ; preds = %2
  %18 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %19 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.see_entry_extra_info*
  store %struct.see_entry_extra_info* %21, %struct.see_entry_extra_info** %6, align 8
  %22 = load %struct.web_entry*, %struct.web_entry** %5, align 8
  %23 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.see_entry_extra_info*
  store %struct.see_entry_extra_info* %25, %struct.see_entry_extra_info** %7, align 8
  %26 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %27 = icmp ne %struct.see_entry_extra_info* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %30 = icmp ne %struct.see_entry_extra_info* %29, null
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi i1 [ false, %17 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %36 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 131
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %41 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %40, i32 0, i32 0
  store i64 131, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %479

42:                                               ; preds = %31
  %43 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %44 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  switch i64 %45, label %476 [
    i64 131, label %46
    i64 130, label %47
    i64 129, label %82
    i64 128, label %143
    i64 132, label %204
  ]

46:                                               ; preds = %42
  br label %478

47:                                               ; preds = %42
  %48 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %49 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  switch i64 %50, label %79 [
    i64 130, label %51
    i64 132, label %52
    i64 129, label %68
    i64 128, label %68
  ]

51:                                               ; preds = %47
  br label %81

52:                                               ; preds = %47
  %53 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %54 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %57 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %59 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %62 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %64 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %67 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  br label %81

68:                                               ; preds = %47, %47
  %69 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %70 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %73 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %75 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %78 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %81

79:                                               ; preds = %47
  %80 = call i32 (...) @gcc_unreachable()
  br label %81

81:                                               ; preds = %79, %68, %52, %51
  br label %478

82:                                               ; preds = %42
  %83 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %84 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  switch i64 %85, label %140 [
    i64 129, label %86
    i64 130, label %106
    i64 128, label %107
    i64 132, label %110
  ]

86:                                               ; preds = %82
  %87 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %88 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %91 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %96 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  br label %102

98:                                               ; preds = %86
  %99 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %100 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %97, %94 ], [ %101, %98 ]
  %104 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %105 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %142

106:                                              ; preds = %82
  br label %142

107:                                              ; preds = %82
  %108 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %109 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %108, i32 0, i32 0
  store i64 131, i64* %109, align 8
  br label %142

110:                                              ; preds = %82
  %111 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %112 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %118 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %117, i32 0, i32 0
  store i64 131, i64* %118, align 8
  br label %139

119:                                              ; preds = %110
  %120 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %121 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %124 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %129 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  br label %135

131:                                              ; preds = %119
  %132 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %133 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %130, %127 ], [ %134, %131 ]
  %137 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %138 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %116
  br label %142

140:                                              ; preds = %82
  %141 = call i32 (...) @gcc_unreachable()
  br label %142

142:                                              ; preds = %140, %139, %107, %106, %102
  br label %478

143:                                              ; preds = %42
  %144 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %145 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  switch i64 %146, label %201 [
    i64 129, label %147
    i64 130, label %150
    i64 128, label %151
    i64 132, label %171
  ]

147:                                              ; preds = %143
  %148 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %149 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %148, i32 0, i32 0
  store i64 131, i64* %149, align 8
  br label %203

150:                                              ; preds = %143
  br label %203

151:                                              ; preds = %143
  %152 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %153 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %156 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %161 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  br label %167

163:                                              ; preds = %151
  %164 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %165 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i32 [ %162, %159 ], [ %166, %163 ]
  %169 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %170 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  br label %203

171:                                              ; preds = %143
  %172 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %173 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %179 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %178, i32 0, i32 0
  store i64 131, i64* %179, align 8
  br label %200

180:                                              ; preds = %171
  %181 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %182 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %185 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %190 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  br label %196

192:                                              ; preds = %180
  %193 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %194 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  br label %196

196:                                              ; preds = %192, %188
  %197 = phi i32 [ %191, %188 ], [ %195, %192 ]
  %198 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %199 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %196, %177
  br label %203

201:                                              ; preds = %143
  %202 = call i32 (...) @gcc_unreachable()
  br label %203

203:                                              ; preds = %201, %200, %167, %150, %147
  br label %478

204:                                              ; preds = %42
  %205 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %206 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %321

210:                                              ; preds = %204
  %211 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %212 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %321

216:                                              ; preds = %210
  %217 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %218 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  switch i64 %219, label %318 [
    i64 129, label %220
    i64 130, label %242
    i64 128, label %243
    i64 132, label %265
  ]

220:                                              ; preds = %216
  %221 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %222 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %221, i32 0, i32 0
  store i64 129, i64* %222, align 8
  %223 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %224 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %227 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = icmp sgt i32 %225, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %220
  %231 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %232 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  br label %238

234:                                              ; preds = %220
  %235 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %236 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  br label %238

238:                                              ; preds = %234, %230
  %239 = phi i32 [ %233, %230 ], [ %237, %234 ]
  %240 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %241 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  br label %320

242:                                              ; preds = %216
  br label %320

243:                                              ; preds = %216
  %244 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %245 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %244, i32 0, i32 0
  store i64 128, i64* %245, align 8
  %246 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %247 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %250 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %243
  %254 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %255 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  br label %261

257:                                              ; preds = %243
  %258 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %259 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  br label %261

261:                                              ; preds = %257, %253
  %262 = phi i32 [ %256, %253 ], [ %260, %257 ]
  %263 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %264 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  br label %320

265:                                              ; preds = %216
  %266 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %267 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %265
  %272 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %273 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %276 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = icmp sgt i32 %274, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %271
  %280 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %281 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  br label %287

283:                                              ; preds = %271
  %284 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %285 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  br label %287

287:                                              ; preds = %283, %279
  %288 = phi i32 [ %282, %279 ], [ %286, %283 ]
  %289 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %290 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %287, %265
  %292 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %293 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %317

297:                                              ; preds = %291
  %298 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %299 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %302 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp sgt i32 %300, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %297
  %306 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %307 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  br label %313

309:                                              ; preds = %297
  %310 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %311 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  br label %313

313:                                              ; preds = %309, %305
  %314 = phi i32 [ %308, %305 ], [ %312, %309 ]
  %315 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %316 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 8
  br label %317

317:                                              ; preds = %313, %291
  br label %320

318:                                              ; preds = %216
  %319 = call i32 (...) @gcc_unreachable()
  br label %320

320:                                              ; preds = %318, %317, %261, %242, %238
  br label %475

321:                                              ; preds = %210, %204
  %322 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %323 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %397

327:                                              ; preds = %321
  %328 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %329 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %332 = icmp ne i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @gcc_assert(i32 %333)
  %335 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %336 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  switch i64 %337, label %394 [
    i64 129, label %338
    i64 130, label %341
    i64 128, label %342
    i64 132, label %364
  ]

338:                                              ; preds = %327
  %339 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %340 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %339, i32 0, i32 0
  store i64 131, i64* %340, align 8
  br label %396

341:                                              ; preds = %327
  br label %396

342:                                              ; preds = %327
  %343 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %344 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %343, i32 0, i32 0
  store i64 128, i64* %344, align 8
  %345 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %346 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %349 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = icmp sgt i32 %347, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %342
  %353 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %354 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  br label %360

356:                                              ; preds = %342
  %357 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %358 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  br label %360

360:                                              ; preds = %356, %352
  %361 = phi i32 [ %355, %352 ], [ %359, %356 ]
  %362 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %363 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 4
  br label %396

364:                                              ; preds = %327
  %365 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %366 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  %371 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %372 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %371, i32 0, i32 0
  store i64 131, i64* %372, align 8
  br label %393

373:                                              ; preds = %364
  %374 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %375 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %378 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = icmp sgt i32 %376, %379
  br i1 %380, label %381, label %385

381:                                              ; preds = %373
  %382 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %383 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  br label %389

385:                                              ; preds = %373
  %386 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %387 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  br label %389

389:                                              ; preds = %385, %381
  %390 = phi i32 [ %384, %381 ], [ %388, %385 ]
  %391 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %392 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %391, i32 0, i32 3
  store i32 %390, i32* %392, align 8
  br label %393

393:                                              ; preds = %389, %370
  br label %396

394:                                              ; preds = %327
  %395 = call i32 (...) @gcc_unreachable()
  br label %396

396:                                              ; preds = %394, %393, %360, %341, %338
  br label %474

397:                                              ; preds = %321
  %398 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %399 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %402 = icmp eq i32 %400, %401
  %403 = zext i1 %402 to i32
  %404 = call i32 @gcc_assert(i32 %403)
  %405 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %406 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %409 = icmp ne i32 %407, %408
  %410 = zext i1 %409 to i32
  %411 = call i32 @gcc_assert(i32 %410)
  %412 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %413 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  switch i64 %414, label %471 [
    i64 129, label %415
    i64 130, label %437
    i64 128, label %438
    i64 132, label %441
  ]

415:                                              ; preds = %397
  %416 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %417 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %416, i32 0, i32 0
  store i64 129, i64* %417, align 8
  %418 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %419 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %422 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = icmp sgt i32 %420, %423
  br i1 %424, label %425, label %429

425:                                              ; preds = %415
  %426 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %427 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  br label %433

429:                                              ; preds = %415
  %430 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %431 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  br label %433

433:                                              ; preds = %429, %425
  %434 = phi i32 [ %428, %425 ], [ %432, %429 ]
  %435 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %436 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %435, i32 0, i32 2
  store i32 %434, i32* %436, align 4
  br label %473

437:                                              ; preds = %397
  br label %473

438:                                              ; preds = %397
  %439 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %440 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %439, i32 0, i32 0
  store i64 131, i64* %440, align 8
  br label %473

441:                                              ; preds = %397
  %442 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %443 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %441
  %448 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %449 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %448, i32 0, i32 0
  store i64 131, i64* %449, align 8
  br label %470

450:                                              ; preds = %441
  %451 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %452 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %455 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = icmp sgt i32 %453, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %450
  %459 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %460 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  br label %466

462:                                              ; preds = %450
  %463 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %7, align 8
  %464 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  br label %466

466:                                              ; preds = %462, %458
  %467 = phi i32 [ %461, %458 ], [ %465, %462 ]
  %468 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %6, align 8
  %469 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %468, i32 0, i32 1
  store i32 %467, i32* %469, align 8
  br label %470

470:                                              ; preds = %466, %447
  br label %473

471:                                              ; preds = %397
  %472 = call i32 (...) @gcc_unreachable()
  br label %473

473:                                              ; preds = %471, %470, %438, %437, %433
  br label %474

474:                                              ; preds = %473, %396
  br label %475

475:                                              ; preds = %474, %320
  br label %478

476:                                              ; preds = %42
  %477 = call i32 (...) @gcc_unreachable()
  br label %478

478:                                              ; preds = %476, %475, %203, %142, %81, %46
  store i32 0, i32* %3, align 4
  br label %479

479:                                              ; preds = %478, %39, %16
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

declare dso_local %struct.web_entry* @unionfind_root(%struct.web_entry*) #1

declare dso_local i64 @unionfind_union(%struct.web_entry*, %struct.web_entry*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
