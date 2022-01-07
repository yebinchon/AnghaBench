; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_merge_gots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_merge_gots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_got_entry = type { i64, i64, i64, %struct.alpha_elf_got_entry*, i32*, i32 }
%struct.alpha_elf_link_hash_entry = type { %struct.alpha_elf_got_entry*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32*, %struct.alpha_elf_got_entry** }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @elf64_alpha_merge_gots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf64_alpha_merge_gots(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.alpha_elf_got_entry**, align 8
  %9 = alloca %struct.alpha_elf_link_hash_entry**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.alpha_elf_got_entry*, align 8
  %14 = alloca %struct.alpha_elf_got_entry*, align 8
  %15 = alloca %struct.alpha_elf_got_entry*, align 8
  %16 = alloca %struct.alpha_elf_got_entry**, align 8
  %17 = alloca %struct.alpha_elf_got_entry**, align 8
  %18 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %4, align 8
  store i32* %37, i32** %6, align 8
  br label %38

38:                                               ; preds = %234, %2
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %239

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  %45 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %44, align 8
  store %struct.alpha_elf_got_entry** %45, %struct.alpha_elf_got_entry*** %8, align 8
  %46 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %8, align 8
  %47 = icmp ne %struct.alpha_elf_got_entry** %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = call %struct.TYPE_14__* @elf_tdata(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %76, %48
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %59, i64 %61
  %63 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %62, align 8
  store %struct.alpha_elf_got_entry* %63, %struct.alpha_elf_got_entry** %13, align 8
  br label %64

64:                                               ; preds = %71, %58
  %65 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %66 = icmp ne %struct.alpha_elf_got_entry* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %70 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %73 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %72, i32 0, i32 3
  %74 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %73, align 8
  store %struct.alpha_elf_got_entry* %74, %struct.alpha_elf_got_entry** %13, align 8
  br label %64

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %54

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32*, i32** %6, align 8
  %82 = call %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32* %81)
  store %struct.alpha_elf_link_hash_entry** %82, %struct.alpha_elf_link_hash_entry*** %9, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call %struct.TYPE_14__* @elf_tdata(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %10, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_13__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %226, %80
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %229

96:                                               ; preds = %92
  %97 = load %struct.alpha_elf_link_hash_entry**, %struct.alpha_elf_link_hash_entry*** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %97, i64 %99
  %101 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %100, align 8
  store %struct.alpha_elf_link_hash_entry* %101, %struct.alpha_elf_link_hash_entry** %18, align 8
  br label %102

102:                                              ; preds = %120, %96
  %103 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %18, align 8
  %104 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @bfd_link_hash_indirect, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %102
  %111 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %18, align 8
  %112 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @bfd_link_hash_warning, align 8
  %117 = icmp eq i64 %115, %116
  br label %118

118:                                              ; preds = %110, %102
  %119 = phi i1 [ true, %102 ], [ %117, %110 ]
  br i1 %119, label %120, label %129

120:                                              ; preds = %118
  %121 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %18, align 8
  %122 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %128, %struct.alpha_elf_link_hash_entry** %18, align 8
  br label %102

129:                                              ; preds = %118
  %130 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %18, align 8
  %131 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %130, i32 0, i32 0
  store %struct.alpha_elf_got_entry** %131, %struct.alpha_elf_got_entry*** %17, align 8
  store %struct.alpha_elf_got_entry** %131, %struct.alpha_elf_got_entry*** %16, align 8
  br label %132

132:                                              ; preds = %224, %129
  %133 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %16, align 8
  %134 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %133, align 8
  store %struct.alpha_elf_got_entry* %134, %struct.alpha_elf_got_entry** %15, align 8
  %135 = icmp ne %struct.alpha_elf_got_entry* %134, null
  br i1 %135, label %136, label %225

136:                                              ; preds = %132
  %137 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %138 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %143 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %142, i32 0, i32 3
  %144 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %143, align 8
  %145 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %16, align 8
  store %struct.alpha_elf_got_entry* %144, %struct.alpha_elf_got_entry** %145, align 8
  %146 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %147 = call i32 @memset(%struct.alpha_elf_got_entry* %146, i32 165, i32 48)
  br label %224

148:                                              ; preds = %136
  %149 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %150 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = icmp ne i32* %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %221

155:                                              ; preds = %148
  %156 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %17, align 8
  %157 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %156, align 8
  store %struct.alpha_elf_got_entry* %157, %struct.alpha_elf_got_entry** %14, align 8
  br label %158

158:                                              ; preds = %205, %155
  %159 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %160 = icmp ne %struct.alpha_elf_got_entry* %159, null
  br i1 %160, label %161, label %209

161:                                              ; preds = %158
  %162 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %163 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** %3, align 8
  %166 = icmp eq i32* %164, %165
  br i1 %166, label %167, label %204

167:                                              ; preds = %161
  %168 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %169 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %172 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %167
  %176 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %177 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %180 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %175
  %184 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %185 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %188 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %192 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %195 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %193
  store i64 %197, i64* %195, align 8
  %198 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %199 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %198, i32 0, i32 3
  %200 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %199, align 8
  %201 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %16, align 8
  store %struct.alpha_elf_got_entry* %200, %struct.alpha_elf_got_entry** %201, align 8
  %202 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %203 = call i32 @memset(%struct.alpha_elf_got_entry* %202, i32 165, i32 48)
  br label %224

204:                                              ; preds = %175, %167, %161
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %14, align 8
  %207 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %206, i32 0, i32 3
  %208 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %207, align 8
  store %struct.alpha_elf_got_entry* %208, %struct.alpha_elf_got_entry** %14, align 8
  br label %158

209:                                              ; preds = %158
  %210 = load i32*, i32** %3, align 8
  %211 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %212 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %211, i32 0, i32 4
  store i32* %210, i32** %212, align 8
  %213 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %214 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @alpha_got_entry_size(i64 %215)
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %209, %154
  %222 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %15, align 8
  %223 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %222, i32 0, i32 3
  store %struct.alpha_elf_got_entry** %223, %struct.alpha_elf_got_entry*** %16, align 8
  br label %224

224:                                              ; preds = %221, %183, %141
  br label %132

225:                                              ; preds = %132
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %92

229:                                              ; preds = %92
  %230 = load i32*, i32** %3, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %231)
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 3
  store i32* %230, i32** %233, align 8
  br label %234

234:                                              ; preds = %229
  %235 = load i32*, i32** %6, align 8
  %236 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %235)
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %6, align 8
  br label %38

239:                                              ; preds = %38
  %240 = load i32, i32* %5, align 4
  %241 = load i32*, i32** %3, align 8
  %242 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %241)
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  %244 = load i32*, i32** %3, align 8
  store i32* %244, i32** %6, align 8
  br label %245

245:                                              ; preds = %251, %239
  %246 = load i32*, i32** %6, align 8
  %247 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %246)
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  store i32* %249, i32** %19, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32*, i32** %19, align 8
  store i32* %252, i32** %6, align 8
  br label %245

253:                                              ; preds = %245
  %254 = load i32*, i32** %4, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %255)
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 2
  store i32* %254, i32** %257, align 8
  ret void
}

declare dso_local %struct.TYPE_15__* @alpha_elf_tdata(i32*) #1

declare dso_local %struct.TYPE_14__* @elf_tdata(i32*) #1

declare dso_local %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32*) #1

declare dso_local i32 @NUM_SHDR_ENTRIES(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.alpha_elf_got_entry*, i32, i32) #1

declare dso_local i64 @alpha_got_entry_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
