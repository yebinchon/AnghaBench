; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_write_coff_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_write_coff_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_19__* }
%struct.coff_write_info = type { i64, i32, i64, i32*, i32*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_20__, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_18__*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"filename required for COFF output\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bfd_set_format\00", align 1
@bfd_arch_i386 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"bfd_set_arch_mach(i386)\00", align 1
@HAS_SYMS = common dso_local global i32 0, align 4
@HAS_RELOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"bfd_set_file_flags\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".rsrc\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bfd_make_section\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"bfd_set_section_flags\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"bfd_set_symtab\00", align 1
@WR_KIND_BFD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"bfd_set_section_size\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"bfd_set_section_contents\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bfd_close\00", align 1
@bfd_arch_arm = common dso_local global i32 0, align 4
@bfd_arch_mips = common dso_local global i32 0, align 4
@bfd_arch_sh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_coff_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.coff_write_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @fatal(i32 %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @bfd_openw(i8* %22, i8* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @bfd_fatal(i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @bfd_object, align 4
  %33 = call i32 @bfd_set_format(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @bfd_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @bfd_arch_i386, align 4
  %40 = call i32 @bfd_set_arch_mach(i32* %38, i32 %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @bfd_fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @HAS_SYMS, align 4
  %47 = load i32, i32* @HAS_RELOC, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @bfd_set_file_flags(i32* %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = call i32 @bfd_fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_19__* @bfd_make_section(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %8, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = icmp eq %struct.TYPE_19__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @bfd_fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %64 = load i32, i32* @SEC_ALLOC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SEC_LOAD, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SEC_DATA, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @bfd_set_section_flags(i32* %61, %struct.TYPE_19__* %62, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %60
  %73 = call i32 @bfd_fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bfd_set_symtab(i32* %75, i32 %78, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = call i32 @bfd_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %74
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = load i32, i32* @WR_KIND_BFD, align 4
  %90 = call i32 @set_windres_bfd(i32* %10, i32* %87, %struct.TYPE_19__* %88, i32 %89)
  %91 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 4
  store i32* %10, i32** %91, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 10
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 1
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %100, align 8
  %101 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %106, align 8
  %107 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  store i32* null, i32** %108, align 8
  %109 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %112, align 8
  %113 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %118, align 8
  %119 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  store i32* null, i32** %120, align 8
  %121 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 9
  store i64 0, i64* %124, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @coff_bin_sizes(i32* %125, %struct.coff_write_info* %9)
  %127 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 3
  %130 = and i32 %129, -4
  %131 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @coff_to_bin(i32* %132, %struct.coff_write_info* %9)
  %134 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 3
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %83
  %140 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %141 = call i64* @coff_alloc(%struct.TYPE_20__* %140, i32 2)
  store i64* %141, i64** %15, align 8
  %142 = load i64*, i64** %15, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  store i64 0, i64* %143, align 8
  %144 = load i64*, i64** %15, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %139, %83
  %147 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %149, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %157, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %165, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = add i64 %172, %175
  %177 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %176, %178
  %180 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %179, %182
  store i64 %183, i64* %13, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %186 = load i64, i64* %13, align 8
  %187 = call i32 @bfd_set_section_size(i32* %184, %struct.TYPE_19__* %185, i64 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %146
  %190 = call i32 @bfd_fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %146
  %192 = load i32*, i32** %7, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %194 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @bfd_set_reloc(i32* %192, %struct.TYPE_19__* %193, i32* %195, i64 %197)
  store i64 0, i64* %14, align 8
  %199 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  store %struct.TYPE_18__* %201, %struct.TYPE_18__** %11, align 8
  br label %202

202:                                              ; preds = %225, %191
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %204 = icmp ne %struct.TYPE_18__* %203, null
  br i1 %204, label %205, label %229

205:                                              ; preds = %202
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i64, i64* %14, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @bfd_set_section_contents(i32* %206, %struct.TYPE_19__* %207, i32 %210, i64 %211, i64 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %205
  %218 = call i32 @bfd_fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %205
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %14, align 8
  %224 = add i64 %223, %222
  store i64 %224, i64* %14, align 8
  br label %225

225:                                              ; preds = %219
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %227, align 8
  store %struct.TYPE_18__* %228, %struct.TYPE_18__** %11, align 8
  br label %202

229:                                              ; preds = %202
  %230 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 7
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  store %struct.TYPE_18__* %232, %struct.TYPE_18__** %11, align 8
  br label %233

233:                                              ; preds = %250, %229
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %235 = icmp ne %struct.TYPE_18__* %234, null
  br i1 %235, label %236, label %254

236:                                              ; preds = %233
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* %14, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @set_windres_bfd_content(i32* %10, i32 %239, i64 %240, i64 %243)
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %14, align 8
  %249 = add i64 %248, %247
  store i64 %249, i64* %14, align 8
  br label %250

250:                                              ; preds = %236
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  store %struct.TYPE_18__* %253, %struct.TYPE_18__** %11, align 8
  br label %233

254:                                              ; preds = %233
  %255 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  store %struct.TYPE_18__* %257, %struct.TYPE_18__** %11, align 8
  br label %258

258:                                              ; preds = %275, %254
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %260 = icmp ne %struct.TYPE_18__* %259, null
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i64, i64* %14, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @set_windres_bfd_content(i32* %10, i32 %264, i64 %265, i64 %268)
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %14, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %14, align 8
  br label %275

275:                                              ; preds = %261
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  store %struct.TYPE_18__* %278, %struct.TYPE_18__** %11, align 8
  br label %258

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  store %struct.TYPE_17__* %282, %struct.TYPE_17__** %12, align 8
  br label %283

283:                                              ; preds = %300, %279
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %285 = icmp ne %struct.TYPE_17__* %284, null
  br i1 %285, label %286, label %304

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* %14, align 8
  %290 = trunc i64 %289 to i32
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @res_to_bin(i32* %288, i32 %290, i32 %293)
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* %14, align 8
  %299 = add i64 %298, %297
  store i64 %299, i64* %14, align 8
  br label %300

300:                                              ; preds = %286
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  store %struct.TYPE_17__* %303, %struct.TYPE_17__** %12, align 8
  br label %283

304:                                              ; preds = %283
  %305 = load i64, i64* %14, align 8
  %306 = load i64, i64* %13, align 8
  %307 = icmp eq i64 %305, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @assert(i32 %308)
  %310 = load i32*, i32** %7, align 8
  %311 = call i32 @bfd_close(i32* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %304
  %314 = call i32 @bfd_fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %315

315:                                              ; preds = %313, %304
  %316 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %9, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @free(i32* %317)
  ret void
}

declare dso_local i32 @fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_openw(i8*, i8*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local i32 @bfd_set_file_flags(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @bfd_make_section(i32*, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @bfd_set_symtab(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd(i32*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @coff_bin_sizes(i32*, %struct.coff_write_info*) #1

declare dso_local i32 @coff_to_bin(i32*, %struct.coff_write_info*) #1

declare dso_local i64* @coff_alloc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @bfd_set_reloc(i32*, %struct.TYPE_19__*, i32*, i64) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_19__*, i32, i64, i64) #1

declare dso_local i32 @set_windres_bfd_content(i32*, i32, i64, i64) #1

declare dso_local i32 @res_to_bin(i32*, i32, i32) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
