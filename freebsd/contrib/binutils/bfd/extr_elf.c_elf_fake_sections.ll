; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elf_fake_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elf_fake_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, %struct.TYPE_13__, i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.bfd_link_order* }
%struct.bfd_link_order = type { i64, i64 }
%struct.elf_backend_data = type { i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32, i32, i32, i32*, %struct.TYPE_15__*, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@SHT_NULL = common dso_local global i32 0, align 4
@SEC_GROUP = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@GRP_ENTRY_SIZE = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SHF_WRITE = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SHF_EXECINSTR = common dso_local global i32 0, align 4
@SEC_MERGE = common dso_local global i32 0, align 4
@SHF_MERGE = common dso_local global i32 0, align 4
@SEC_STRINGS = common dso_local global i32 0, align 4
@SHF_STRINGS = common dso_local global i32 0, align 4
@SHF_GROUP = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@SHF_TLS = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, i8*)* @elf_fake_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_fake_sections(i32* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bfd_link_order*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %12)
  store %struct.elf_backend_data* %13, %struct.elf_backend_data** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %468

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_15__* %21)
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @elf_shstrtab(i32* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i64 @_bfd_elf_strtab_add(i32 %25, i32 %28, i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i64, i64* @TRUE, align 8
  %40 = load i64*, i64** %8, align 8
  store i64 %39, i64* %40, align 8
  br label %468

41:                                               ; preds = %20
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SEC_ALLOC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %41
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 11
  store i64 %56, i64* %58, align 8
  br label %62

59:                                               ; preds = %48
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 11
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 10
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 9
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 1, %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 8
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 7
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SHT_NULL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %62
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SEC_GROUP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  store i32 137, i32* %97, align 4
  br label %128

98:                                               ; preds = %88
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SEC_ALLOC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SEC_LOAD, align 4
  %110 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114, %105
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  store i32 134, i32* %123, align 4
  br label %127

124:                                              ; preds = %114, %98
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  store i32 131, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %95
  br label %129

129:                                              ; preds = %128, %62
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %133 [
    i32 128, label %134
    i32 135, label %134
    i32 142, label %134
    i32 132, label %134
    i32 133, label %134
    i32 134, label %134
    i32 131, label %134
    i32 136, label %135
    i32 143, label %143
    i32 144, label %151
    i32 129, label %159
    i32 130, label %174
    i32 138, label %189
    i32 140, label %192
    i32 139, label %226
    i32 137, label %260
    i32 141, label %264
  ]

133:                                              ; preds = %129
  br label %275

134:                                              ; preds = %129, %129, %129, %129, %129, %129, %129
  br label %275

135:                                              ; preds = %129
  %136 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %137 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %275

143:                                              ; preds = %129
  %144 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %145 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  br label %275

151:                                              ; preds = %129
  %152 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %153 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  br label %275

159:                                              ; preds = %129
  %160 = load i32*, i32** %4, align 8
  %161 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %160)
  %162 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %167 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %165, %159
  br label %275

174:                                              ; preds = %129
  %175 = load i32*, i32** %4, align 8
  %176 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %175)
  %177 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %182 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %180, %174
  br label %275

189:                                              ; preds = %129
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 4
  store i32 4, i32* %191, align 8
  br label %275

192:                                              ; preds = %129
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 4
  store i32 0, i32* %194, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load i32*, i32** %4, align 8
  %201 = call %struct.TYPE_17__* @elf_tdata(i32* %200)
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  br label %225

206:                                              ; preds = %192
  %207 = load i32*, i32** %4, align 8
  %208 = call %struct.TYPE_17__* @elf_tdata(i32* %207)
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %206
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %4, align 8
  %217 = call %struct.TYPE_17__* @elf_tdata(i32* %216)
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %215, %219
  br label %221

221:                                              ; preds = %212, %206
  %222 = phi i1 [ true, %206 ], [ %220, %212 ]
  %223 = zext i1 %222 to i32
  %224 = call i32 @BFD_ASSERT(i32 %223)
  br label %225

225:                                              ; preds = %221, %199
  br label %275

226:                                              ; preds = %129
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 4
  store i32 0, i32* %228, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load i32*, i32** %4, align 8
  %235 = call %struct.TYPE_17__* @elf_tdata(i32* %234)
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 8
  br label %259

240:                                              ; preds = %226
  %241 = load i32*, i32** %4, align 8
  %242 = call %struct.TYPE_17__* @elf_tdata(i32* %241)
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %255, label %246

246:                                              ; preds = %240
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %4, align 8
  %251 = call %struct.TYPE_17__* @elf_tdata(i32* %250)
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %249, %253
  br label %255

255:                                              ; preds = %246, %240
  %256 = phi i1 [ true, %240 ], [ %254, %246 ]
  %257 = zext i1 %256 to i32
  %258 = call i32 @BFD_ASSERT(i32 %257)
  br label %259

259:                                              ; preds = %255, %233
  br label %275

260:                                              ; preds = %129
  %261 = load i32, i32* @GRP_ENTRY_SIZE, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  br label %275

264:                                              ; preds = %129
  %265 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %266 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %265, i32 0, i32 1
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 64
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 0, i32 4
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %264, %260, %259, %225, %189, %188, %173, %151, %143, %135, %134, %133
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @SEC_ALLOC, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load i32, i32* @SHF_ALLOC, align 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %282, %275
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @SEC_READONLY, align 4
  %293 = and i32 %291, %292
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %288
  %296 = load i32, i32* @SHF_WRITE, align 4
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %295, %288
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @SEC_CODE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %301
  %309 = load i32, i32* @SHF_EXECINSTR, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %308, %301
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @SEC_MERGE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %345

321:                                              ; preds = %314
  %322 = load i32, i32* @SHF_MERGE, align 4
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 4
  store i32 %329, i32* %331, align 8
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @SEC_STRINGS, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %321
  %339 = load i32, i32* @SHF_STRINGS, align 4
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %338, %321
  br label %345

345:                                              ; preds = %344, %314
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @SEC_GROUP, align 4
  %350 = and i32 %348, %349
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %362

352:                                              ; preds = %345
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %354 = call i32* @elf_group_name(%struct.TYPE_15__* %353)
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %362

356:                                              ; preds = %352
  %357 = load i32, i32* @SHF_GROUP, align 4
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %357
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %356, %352, %345
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %415

369:                                              ; preds = %362
  %370 = load i32, i32* @SHF_TLS, align 4
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %414

379:                                              ; preds = %369
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %384 = and i32 %382, %383
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %414

386:                                              ; preds = %379
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 0
  %390 = load %struct.bfd_link_order*, %struct.bfd_link_order** %389, align 8
  store %struct.bfd_link_order* %390, %struct.bfd_link_order** %11, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 1
  store i64 0, i64* %392, align 8
  %393 = load %struct.bfd_link_order*, %struct.bfd_link_order** %11, align 8
  %394 = icmp ne %struct.bfd_link_order* %393, null
  br i1 %394, label %395, label %413

395:                                              ; preds = %386
  %396 = load %struct.bfd_link_order*, %struct.bfd_link_order** %11, align 8
  %397 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.bfd_link_order*, %struct.bfd_link_order** %11, align 8
  %400 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %398, %401
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 1
  store i64 %402, i64* %404, align 8
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %395
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 3
  store i32 134, i32* %411, align 4
  br label %412

412:                                              ; preds = %409, %395
  br label %413

413:                                              ; preds = %412, %386
  br label %414

414:                                              ; preds = %413, %379, %369
  br label %415

415:                                              ; preds = %414, %362
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  store i32 %418, i32* %10, align 4
  %419 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %420 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %419, i32 0, i32 0
  %421 = load i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)** %420, align 8
  %422 = icmp ne i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)* %421, null
  br i1 %422, label %423, label %435

423:                                              ; preds = %415
  %424 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %425 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %424, i32 0, i32 0
  %426 = load i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)** %425, align 8
  %427 = load i32*, i32** %4, align 8
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %430 = call i32 %426(i32* %427, %struct.TYPE_16__* %428, %struct.TYPE_15__* %429)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %423
  %433 = load i64, i64* @TRUE, align 8
  %434 = load i64*, i64** %8, align 8
  store i64 %433, i64* %434, align 8
  br label %435

435:                                              ; preds = %432, %423, %415
  %436 = load i32, i32* %10, align 4
  %437 = icmp eq i32 %436, 134
  br i1 %437, label %438, label %447

438:                                              ; preds = %435
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %438
  %444 = load i32, i32* %10, align 4
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 3
  store i32 %444, i32* %446, align 4
  br label %447

447:                                              ; preds = %443, %438, %435
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @SEC_RELOC, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %468

454:                                              ; preds = %447
  %455 = load i32*, i32** %4, align 8
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %457 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_15__* %456)
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @_bfd_elf_init_reloc_shdr(i32* %455, i32* %458, %struct.TYPE_15__* %459, i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %454
  %466 = load i64, i64* @TRUE, align 8
  %467 = load i64*, i64** %8, align 8
  store i64 %466, i64* %467, align 8
  br label %468

468:                                              ; preds = %19, %38, %465, %454, %447
  ret void
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_18__* @elf_section_data(%struct.TYPE_15__*) #1

declare dso_local i64 @_bfd_elf_strtab_add(i32, i32, i32) #1

declare dso_local i32 @elf_shstrtab(i32*) #1

declare dso_local %struct.TYPE_17__* @elf_tdata(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @elf_group_name(%struct.TYPE_15__*) #1

declare dso_local i32 @_bfd_elf_init_reloc_shdr(i32*, i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
