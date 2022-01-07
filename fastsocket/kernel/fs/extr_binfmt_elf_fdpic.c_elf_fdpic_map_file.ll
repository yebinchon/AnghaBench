; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_map_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_map_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_fdpic_params = type { i64, i32, i64, i64, i64, i32, %struct.TYPE_9__, %struct.elf32_phdr*, %struct.elf32_fdpic_loadmap* }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.elf32_phdr = type { i64, i64, i64, i64, i32 }
%struct.elf32_fdpic_loadmap = type { i32, %struct.elf32_fdpic_loadseg*, i32 }
%struct.elf32_fdpic_loadseg = type { i64, i64, i64 }
%struct.file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.TYPE_10__ = type { i64 }

@PT_LOAD = common dso_local global i64 0, align 8
@ELIBBAD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ELF32_FDPIC_LOADMAP_VERSION = common dso_local global i32 0, align 4
@ELF_FDPIC_FLAG_ARRANGEMENT = common dso_local global i32 0, align 4
@PT_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Mapped Object [%s]:\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"- elfhdr   : %lx\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"- entry    : %lx\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"- PHDR[]   : %lx\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"- DYNAMIC[]: %lx\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"- LOAD[%d] : %08x-%08x [va=%x ms=%x]\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"ELF FDPIC %s with invalid DYNAMIC section (inode=%lu)\0A\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_fdpic_params*, %struct.file*, %struct.mm_struct*, i8*)* @elf_fdpic_map_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_fdpic_map_file(%struct.elf_fdpic_params* %0, %struct.file* %1, %struct.mm_struct* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.elf_fdpic_params*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.elf32_fdpic_loadmap*, align 8
  %11 = alloca %struct.elf32_fdpic_loadseg*, align 8
  %12 = alloca %struct.elf32_phdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.elf_fdpic_params* %0, %struct.elf_fdpic_params** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.mm_struct* %2, %struct.mm_struct** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %20

20:                                               ; preds = %42, %4
  %21 = load i32, i32* %18, align 4
  %22 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %23 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %29 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %28, i32 0, i32 7
  %30 = load %struct.elf32_phdr*, %struct.elf32_phdr** %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %30, i64 %32
  %34 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PT_LOAD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %15, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %18, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %18, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ELIBBAD, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %462

51:                                               ; preds = %45
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 24
  %55 = add i64 24, %54
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.elf32_fdpic_loadmap* @kzalloc(i64 %56, i32 %57)
  store %struct.elf32_fdpic_loadmap* %58, %struct.elf32_fdpic_loadmap** %10, align 8
  %59 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %60 = icmp ne %struct.elf32_fdpic_loadmap* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %462

64:                                               ; preds = %51
  %65 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %66 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %67 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %66, i32 0, i32 8
  store %struct.elf32_fdpic_loadmap* %65, %struct.elf32_fdpic_loadmap** %67, align 8
  %68 = load i32, i32* @ELF32_FDPIC_LOADMAP_VERSION, align 4
  %69 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %70 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %73 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %75 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  %77 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %78 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %77, i32 0, i32 1
  %79 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %78, align 8
  store %struct.elf32_fdpic_loadseg* %79, %struct.elf32_fdpic_loadseg** %11, align 8
  %80 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %81 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ELF_FDPIC_FLAG_ARRANGEMENT, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %95 [
    i32 129, label %85
    i32 128, label %85
  ]

85:                                               ; preds = %64, %64
  %86 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %87 = load %struct.file*, %struct.file** %7, align 8
  %88 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %89 = call i32 @elf_fdpic_map_file_constdisp_on_uclinux(%struct.elf_fdpic_params* %86, %struct.file* %87, %struct.mm_struct* %88)
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %19, align 4
  store i32 %93, i32* %5, align 4
  br label %462

94:                                               ; preds = %85
  br label %105

95:                                               ; preds = %64
  %96 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %97 = load %struct.file*, %struct.file** %7, align 8
  %98 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %99 = call i32 @elf_fdpic_map_file_by_direct_mmap(%struct.elf_fdpic_params* %96, %struct.file* %97, %struct.mm_struct* %98)
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %19, align 4
  store i32 %103, i32* %5, align 4
  br label %462

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %94
  %106 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %107 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %165

111:                                              ; preds = %105
  %112 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %113 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %112, i32 0, i32 1
  %114 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %113, align 8
  store %struct.elf32_fdpic_loadseg* %114, %struct.elf32_fdpic_loadseg** %11, align 8
  %115 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %116 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %159, %111
  %119 = load i32, i32* %18, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %164

121:                                              ; preds = %118
  %122 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %123 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %127 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %125, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %121
  %131 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %132 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %136 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %139 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = icmp slt i64 %134, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %130
  %144 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %145 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %149 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %153 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  %156 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %157 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  br label %164

158:                                              ; preds = %130, %121
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %18, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %18, align 4
  %162 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %163 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %162, i32 1
  store %struct.elf32_fdpic_loadseg* %163, %struct.elf32_fdpic_loadseg** %11, align 8
  br label %118

164:                                              ; preds = %143, %118
  br label %165

165:                                              ; preds = %164, %105
  %166 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %167 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %14, align 8
  %170 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %171 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %14, align 8
  %178 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %179 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %178, i32 0, i32 7
  %180 = load %struct.elf32_phdr*, %struct.elf32_phdr** %179, align 8
  store %struct.elf32_phdr* %180, %struct.elf32_phdr** %12, align 8
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %279, %165
  %182 = load i32, i32* %18, align 4
  %183 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %184 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %182, %186
  br i1 %187, label %188, label %284

188:                                              ; preds = %181
  %189 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %190 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @PT_LOAD, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %279

195:                                              ; preds = %188
  %196 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %197 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %200 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ugt i64 %198, %202
  br i1 %203, label %214, label %204

204:                                              ; preds = %195
  %205 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %206 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %209 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = add i64 %207, %210
  %212 = load i64, i64* %14, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %204, %195
  br label %279

215:                                              ; preds = %204
  %216 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %217 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %216, i32 0, i32 1
  %218 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %217, align 8
  store %struct.elf32_fdpic_loadseg* %218, %struct.elf32_fdpic_loadseg** %11, align 8
  %219 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %220 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %18, align 4
  br label %222

222:                                              ; preds = %273, %215
  %223 = load i32, i32* %18, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %278

225:                                              ; preds = %222
  %226 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %227 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %230 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp sge i64 %228, %231
  br i1 %232, label %233, label %272

233:                                              ; preds = %225
  %234 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %235 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %238 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %236, %239
  %241 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %242 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %245 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = icmp ule i64 %240, %247
  br i1 %248, label %249, label %272

249:                                              ; preds = %233
  %250 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %251 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %254 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %252, %255
  %257 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %258 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %256, %259
  %261 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %262 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = add i64 %260, %264
  %266 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %267 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = sub i64 %265, %268
  %270 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %271 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %270, i32 0, i32 3
  store i64 %269, i64* %271, align 8
  br label %278

272:                                              ; preds = %233, %225
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %18, align 4
  %276 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %277 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %276, i32 1
  store %struct.elf32_fdpic_loadseg* %277, %struct.elf32_fdpic_loadseg** %11, align 8
  br label %222

278:                                              ; preds = %249, %222
  br label %284

279:                                              ; preds = %214, %194
  %280 = load i32, i32* %18, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %18, align 4
  %282 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %283 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %282, i32 1
  store %struct.elf32_phdr* %283, %struct.elf32_phdr** %12, align 8
  br label %181

284:                                              ; preds = %278, %181
  %285 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %286 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %285, i32 0, i32 7
  %287 = load %struct.elf32_phdr*, %struct.elf32_phdr** %286, align 8
  store %struct.elf32_phdr* %287, %struct.elf32_phdr** %12, align 8
  store i32 0, i32* %18, align 4
  br label %288

288:                                              ; preds = %390, %284
  %289 = load i32, i32* %18, align 4
  %290 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %291 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %290, i32 0, i32 6
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %289, %293
  br i1 %294, label %295, label %395

295:                                              ; preds = %288
  %296 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %297 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @PT_DYNAMIC, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  br label %390

302:                                              ; preds = %295
  %303 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %304 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %303, i32 0, i32 1
  %305 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %304, align 8
  store %struct.elf32_fdpic_loadseg* %305, %struct.elf32_fdpic_loadseg** %11, align 8
  %306 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %307 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  store i32 %308, i32* %18, align 4
  br label %309

309:                                              ; preds = %384, %302
  %310 = load i32, i32* %18, align 4
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %389

312:                                              ; preds = %309
  %313 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %314 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %317 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp sge i64 %315, %318
  br i1 %319, label %320, label %383

320:                                              ; preds = %312
  %321 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %322 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %325 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %323, %327
  %329 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %330 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %333 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %331, %334
  %336 = icmp sle i64 %328, %335
  br i1 %336, label %337, label %383

337:                                              ; preds = %320
  %338 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %339 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %342 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = sub nsw i64 %340, %343
  %345 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %346 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %344, %347
  %349 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %350 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %349, i32 0, i32 4
  store i64 %348, i64* %350, align 8
  %351 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %352 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %351, i32 0, i32 4
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %362, label %355

355:                                              ; preds = %337
  %356 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %357 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = urem i64 %359, 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %355, %337
  br label %449

363:                                              ; preds = %355
  %364 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %365 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = udiv i64 %367, 8
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %16, align 4
  %370 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %371 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = inttoptr i64 %372 to %struct.TYPE_10__*
  %374 = load i32, i32* %16, align 4
  %375 = sub i32 %374, 1
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %363
  br label %449

382:                                              ; preds = %363
  br label %389

383:                                              ; preds = %320, %312
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %18, align 4
  %387 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %388 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %387, i32 1
  store %struct.elf32_fdpic_loadseg* %388, %struct.elf32_fdpic_loadseg** %11, align 8
  br label %309

389:                                              ; preds = %382, %309
  br label %395

390:                                              ; preds = %301
  %391 = load i32, i32* %18, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %18, align 4
  %393 = load %struct.elf32_phdr*, %struct.elf32_phdr** %12, align 8
  %394 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %393, i32 1
  store %struct.elf32_phdr* %394, %struct.elf32_phdr** %12, align 8
  br label %288

395:                                              ; preds = %389, %288
  %396 = load i8*, i8** %9, align 8
  %397 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %396)
  %398 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %399 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 8
  %401 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %400)
  %402 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %403 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %404)
  %406 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %407 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %408)
  %410 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %6, align 8
  %411 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %410, i32 0, i32 4
  %412 = load i64, i64* %411, align 8
  %413 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %412)
  %414 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %415 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %414, i32 0, i32 1
  %416 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %415, align 8
  store %struct.elf32_fdpic_loadseg* %416, %struct.elf32_fdpic_loadseg** %11, align 8
  store i32 0, i32* %18, align 4
  br label %417

417:                                              ; preds = %443, %395
  %418 = load i32, i32* %18, align 4
  %419 = load %struct.elf32_fdpic_loadmap*, %struct.elf32_fdpic_loadmap** %10, align 8
  %420 = getelementptr inbounds %struct.elf32_fdpic_loadmap, %struct.elf32_fdpic_loadmap* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = icmp ult i32 %418, %421
  br i1 %422, label %423, label %448

423:                                              ; preds = %417
  %424 = load i32, i32* %18, align 4
  %425 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %426 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %429 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %432 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = add nsw i64 %430, %433
  %435 = sub nsw i64 %434, 1
  %436 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %437 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %440 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = call i32 (i8*, ...) @kdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %424, i64 %427, i64 %435, i64 %438, i64 %441)
  br label %443

443:                                              ; preds = %423
  %444 = load i32, i32* %18, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %18, align 4
  %446 = load %struct.elf32_fdpic_loadseg*, %struct.elf32_fdpic_loadseg** %11, align 8
  %447 = getelementptr inbounds %struct.elf32_fdpic_loadseg, %struct.elf32_fdpic_loadseg* %446, i32 1
  store %struct.elf32_fdpic_loadseg* %447, %struct.elf32_fdpic_loadseg** %11, align 8
  br label %417

448:                                              ; preds = %417
  store i32 0, i32* %5, align 4
  br label %462

449:                                              ; preds = %381, %362
  %450 = load i8*, i8** %9, align 8
  %451 = load %struct.file*, %struct.file** %7, align 8
  %452 = getelementptr inbounds %struct.file, %struct.file* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_7__*, %struct.TYPE_7__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 0
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %450, i32 %458)
  %460 = load i32, i32* @ELIBBAD, align 4
  %461 = sub nsw i32 0, %460
  store i32 %461, i32* %5, align 4
  br label %462

462:                                              ; preds = %449, %448, %102, %92, %61, %48
  %463 = load i32, i32* %5, align 4
  ret i32 %463
}

declare dso_local %struct.elf32_fdpic_loadmap* @kzalloc(i64, i32) #1

declare dso_local i32 @elf_fdpic_map_file_constdisp_on_uclinux(%struct.elf_fdpic_params*, %struct.file*, %struct.mm_struct*) #1

declare dso_local i32 @elf_fdpic_map_file_by_direct_mmap(%struct.elf_fdpic_params*, %struct.file*, %struct.mm_struct*) #1

declare dso_local i32 @kdebug(i8*, ...) #1

declare dso_local i32 @printk(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
