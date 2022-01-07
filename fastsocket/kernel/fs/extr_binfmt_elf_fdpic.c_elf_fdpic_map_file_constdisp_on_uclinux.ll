; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_map_file_constdisp_on_uclinux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_map_file_constdisp_on_uclinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_fdpic_params = type { i64, i32, i64, %struct.elf32_phdr*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.elf32_phdr = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.elf32_fdpic_loadseg* }
%struct.elf32_fdpic_loadseg = type { i64, i64, i64 }
%struct.file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.file*, i8*, i64, i64*)* }
%struct.mm_struct = type { i64, i64, i64, i64, i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i64 0, align 8
@ELF_FDPIC_FLAG_EXECUTABLE = common dso_local global i32 0, align 4
@MAP_EXECUTABLE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_fdpic_params*, %struct.file*, %struct.mm_struct*)* @elf_fdpic_map_file_constdisp_on_uclinux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_fdpic_map_file_constdisp_on_uclinux(%struct.elf_fdpic_params* %0, %struct.file* %1, %struct.mm_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_fdpic_params*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.elf32_fdpic_loadseg*, align 8
  %9 = alloca %struct.elf32_phdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.elf_fdpic_params* %0, %struct.elf_fdpic_params** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.mm_struct* %2, %struct.mm_struct** %7, align 8
  %18 = load i64, i64* @ULONG_MAX, align 8
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %20 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %23 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %25, align 8
  store %struct.elf32_fdpic_loadseg* %26, %struct.elf32_fdpic_loadseg** %8, align 8
  %27 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %28 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %27, i32 0, i32 3
  %29 = load %struct.elf32_phdr*, %struct.elf32_phdr** %28, align 8
  store %struct.elf32_phdr* %29, %struct.elf32_phdr** %9, align 8
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %78, %3
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %33 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %30
  %38 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %39 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %38, i32 0, i32 3
  %40 = load %struct.elf32_phdr*, %struct.elf32_phdr** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %40, i64 %42
  %44 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PT_LOAD, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %78

49:                                               ; preds = %37
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %52 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %57 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %62 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %65 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = icmp ult i64 %60, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %71 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %74 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %72, %75
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %69, %59
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  %81 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %82 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %81, i32 1
  store %struct.elf32_phdr* %82, %struct.elf32_phdr** %9, align 8
  br label %30

83:                                               ; preds = %30
  %84 = load i64, i64* @MAP_PRIVATE, align 8
  store i64 %84, i64* %14, align 8
  %85 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %86 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ELF_FDPIC_FLAG_EXECUTABLE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i64, i64* @MAP_EXECUTABLE, align 8
  %93 = load i64, i64* %14, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %14, align 8
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %97 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %96, i32 0, i32 4
  %98 = call i32 @down_write(i32* %97)
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %100, %101
  %103 = load i32, i32* @PROT_READ, align 4
  %104 = load i32, i32* @PROT_WRITE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @PROT_EXEC, align 4
  %107 = or i32 %105, %106
  %108 = load i64, i64* %14, align 8
  %109 = call i64 @do_mmap(i32* null, i64 %99, i64 %102, i32 %107, i64 %108, i32 0)
  store i64 %109, i64* %13, align 8
  %110 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %111 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %110, i32 0, i32 4
  %112 = call i32 @up_write(i32* %111)
  %113 = load i64, i64* %13, align 8
  %114 = call i64 @IS_ERR_VALUE(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %95
  %117 = load i64, i64* %13, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %296

119:                                              ; preds = %95
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %11, align 8
  %125 = sub i64 %123, %124
  %126 = call i64 @PAGE_ALIGN(i64 %125)
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %122, %119
  %130 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %131 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %130, i32 0, i32 3
  %132 = load %struct.elf32_phdr*, %struct.elf32_phdr** %131, align 8
  store %struct.elf32_phdr* %132, %struct.elf32_phdr** %9, align 8
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %290, %129
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %136 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %295

140:                                              ; preds = %133
  %141 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %142 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %141, i32 0, i32 3
  %143 = load %struct.elf32_phdr*, %struct.elf32_phdr** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %143, i64 %145
  %147 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PT_LOAD, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %290

152:                                              ; preds = %140
  %153 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %154 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %15, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %158 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = sub i64 %159, %160
  %162 = add i64 %156, %161
  %163 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %164 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %166 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %169 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %171 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %174 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  %175 = load %struct.file*, %struct.file** %6, align 8
  %176 = getelementptr inbounds %struct.file, %struct.file* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, i8*, i64, i64*)** %178, align 8
  %180 = load %struct.file*, %struct.file** %6, align 8
  %181 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %182 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i8*
  %185 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %186 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = call i32 %179(%struct.file* %180, i8* %184, i64 %187, i64* %15)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %152
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %4, align 4
  br label %296

193:                                              ; preds = %152
  %194 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %195 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %200 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %5, align 8
  %203 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %198, %193
  %205 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %206 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %209 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ult i64 %207, %210
  br i1 %211, label %212, label %234

212:                                              ; preds = %204
  %213 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %214 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %217 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %215, %218
  %220 = inttoptr i64 %219 to i8*
  %221 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %222 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %225 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = sub i64 %223, %226
  %228 = call i32 @clear_user(i8* %220, i64 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %212
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %4, align 4
  br label %296

233:                                              ; preds = %212
  br label %234

234:                                              ; preds = %233, %204
  %235 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %236 = icmp ne %struct.mm_struct* %235, null
  br i1 %236, label %237, label %287

237:                                              ; preds = %234
  %238 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %239 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @PF_X, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %265

244:                                              ; preds = %237
  %245 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %246 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %264, label %249

249:                                              ; preds = %244
  %250 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %251 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %254 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %256 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %259 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %257, %260
  %262 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %263 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %262, i32 0, i32 1
  store i64 %261, i64* %263, align 8
  br label %264

264:                                              ; preds = %249, %244
  br label %286

265:                                              ; preds = %237
  %266 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %267 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %285, label %270

270:                                              ; preds = %265
  %271 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %272 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %275 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %274, i32 0, i32 2
  store i64 %273, i64* %275, align 8
  %276 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %277 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %280 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %278, %281
  %283 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %284 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %283, i32 0, i32 3
  store i64 %282, i64* %284, align 8
  br label %285

285:                                              ; preds = %270, %265
  br label %286

286:                                              ; preds = %285, %264
  br label %287

287:                                              ; preds = %286, %234
  %288 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %8, align 8
  %289 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %288, i32 1
  store %struct.elf32_fdpic_loadseg* %289, %struct.elf32_fdpic_loadseg** %8, align 8
  br label %290

290:                                              ; preds = %287, %151
  %291 = load i32, i32* %16, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %16, align 4
  %293 = load %struct.elf32_phdr*, %struct.elf32_phdr** %9, align 8
  %294 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %293, i32 1
  store %struct.elf32_phdr* %294, %struct.elf32_phdr** %9, align 8
  br label %133

295:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %296

296:                                              ; preds = %295, %231, %191, %116
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_mmap(i32*, i64, i64, i32, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @clear_user(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
