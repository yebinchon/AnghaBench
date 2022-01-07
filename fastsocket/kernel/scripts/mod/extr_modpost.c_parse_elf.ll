; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_parse_elf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_parse_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"section header offset=%lu in file '%s' is bigger than filesize=%lu\0A\00", align 1
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"%s is truncated. sechdrs[i].sh_offset=%lu > sizeof(*hrd)=%zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".modinfo\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s has NOBITS .modinfo\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"__ksymtab_unused\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"__ksymtab_gpl\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"__ksymtab_unused_gpl\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"__ksymtab_gpl_future\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"__markers_strings\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"%s has no symtab?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i8*)* @parse_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_elf(%struct.elf_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %15 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %14, i32 0, i32 0
  %16 = call %struct.TYPE_7__* @grab_file(i8* %13, i32* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @perror(i8* %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %26 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %25, i32 0, i32 13
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %28 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 64
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %595

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @EI_MAG0, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ELFMAG0, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %69, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @EI_MAG1, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ELFMAG1, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %69, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @EI_MAG2, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ELFMAG2, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @EI_MAG3, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ELFMAG3, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60, %51, %42, %33
  store i32 0, i32* %3, align 4
  br label %595

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @TO_NATIVE(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @TO_NATIVE(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @TO_NATIVE(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @TO_NATIVE(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @TO_NATIVE(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @TO_NATIVE(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @TO_NATIVE(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @TO_NATIVE(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @TO_NATIVE(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @TO_NATIVE(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @TO_NATIVE(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 11
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 12
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @TO_NATIVE(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 12
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @TO_NATIVE(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 13
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = bitcast %struct.TYPE_7__* %162 to i8*
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr i8, i8* %163, i64 %167
  %169 = bitcast i8* %168 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %169, %struct.TYPE_6__** %8, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %172 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %171, i32 0, i32 12
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %172, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %177 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ugt i32 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %70
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  %185 = load i8*, i8** %5, align 8
  %186 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %187 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %184, i8* %185, i32 %188)
  store i32 0, i32* %3, align 4
  br label %595

190:                                              ; preds = %70
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %328, %190
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 4
  %196 = icmp ult i32 %192, %195
  br i1 %196, label %197, label %331

197:                                              ; preds = %191
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %199 = load i32, i32* %6, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @TO_NATIVE(i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = load i32, i32* %6, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i32 %205, i32* %210, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = load i32, i32* %6, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @TO_NATIVE(i32 %216)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %220 = load i32, i32* %6, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  store i32 %218, i32* %223, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %225 = load i32, i32* %6, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @TO_NATIVE(i32 %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %233 = load i32, i32* %6, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 2
  store i32 %231, i32* %236, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %238 = load i32, i32* %6, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @TO_NATIVE(i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %246 = load i32, i32* %6, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 3
  store i32 %244, i32* %249, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %251 = load i32, i32* %6, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @TO_NATIVE(i32 %255)
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %259 = load i32, i32* %6, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 4
  store i32 %257, i32* %262, align 4
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %264 = load i32, i32* %6, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @TO_NATIVE(i32 %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %272 = load i32, i32* %6, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 5
  store i32 %270, i32* %275, align 4
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %277 = load i32, i32* %6, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @TO_NATIVE(i32 %281)
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %285 = load i32, i32* %6, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 6
  store i32 %283, i32* %288, align 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %290 = load i32, i32* %6, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = call i8* @TO_NATIVE(i32 %294)
  %296 = ptrtoint i8* %295 to i32
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %298 = load i32, i32* %6, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 7
  store i32 %296, i32* %301, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %303 = load i32, i32* %6, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 8
  %307 = load i32, i32* %306, align 4
  %308 = call i8* @TO_NATIVE(i32 %307)
  %309 = ptrtoint i8* %308 to i32
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %311 = load i32, i32* %6, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 8
  store i32 %309, i32* %314, align 4
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %316 = load i32, i32* %6, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 9
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @TO_NATIVE(i32 %320)
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %324 = load i32, i32* %6, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 9
  store i32 %322, i32* %327, align 4
  br label %328

328:                                              ; preds = %197
  %329 = load i32, i32* %6, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %6, align 4
  br label %191

331:                                              ; preds = %191
  store i32 1, i32* %6, align 4
  br label %332

332:                                              ; preds = %541, %331
  %333 = load i32, i32* %6, align 4
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 4
  %337 = icmp ult i32 %333, %336
  br i1 %337, label %338, label %544

338:                                              ; preds = %332
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %340 = bitcast %struct.TYPE_7__* %339 to i8*
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 13
  %344 = load i32, i32* %343, align 8
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr i8, i8* %340, i64 %349
  store i8* %350, i8** %10, align 8
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %352 = load i32, i32* %6, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* @SHT_NOBITS, align 8
  %359 = icmp eq i64 %357, %358
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %12, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %384, label %363

363:                                              ; preds = %338
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %365 = load i32, i32* %6, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %371 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp ugt i32 %369, %372
  br i1 %373, label %374, label %384

374:                                              ; preds = %363
  %375 = load i8*, i8** %5, align 8
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %377 = load i32, i32* %6, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  %383 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %375, i64 %382, i64 64)
  store i32 0, i32* %3, align 4
  br label %595

384:                                              ; preds = %363, %338
  %385 = load i8*, i8** %10, align 8
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %387 = load i32, i32* %6, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %385, i64 %392
  store i8* %393, i8** %11, align 8
  %394 = load i8*, i8** %11, align 8
  %395 = call i64 @strcmp(i8* %394, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %424

397:                                              ; preds = %384
  %398 = load i32, i32* %12, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load i8*, i8** %5, align 8
  %402 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %401)
  br label %403

403:                                              ; preds = %400, %397
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %405 = bitcast %struct.TYPE_7__* %404 to i8*
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %407 = load i32, i32* %6, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr i8, i8* %405, i64 %412
  %414 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %415 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %414, i32 0, i32 11
  store i8* %413, i8** %415, align 8
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %417 = load i32, i32* %6, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %423 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %422, i32 0, i32 1
  store i32 %421, i32* %423, align 4
  br label %478

424:                                              ; preds = %384
  %425 = load i8*, i8** %11, align 8
  %426 = call i64 @strcmp(i8* %425, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %424
  %429 = load i32, i32* %6, align 4
  %430 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %431 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %430, i32 0, i32 2
  store i32 %429, i32* %431, align 8
  br label %477

432:                                              ; preds = %424
  %433 = load i8*, i8** %11, align 8
  %434 = call i64 @strcmp(i8* %433, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %432
  %437 = load i32, i32* %6, align 4
  %438 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %439 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %438, i32 0, i32 3
  store i32 %437, i32* %439, align 4
  br label %476

440:                                              ; preds = %432
  %441 = load i8*, i8** %11, align 8
  %442 = call i64 @strcmp(i8* %441, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %440
  %445 = load i32, i32* %6, align 4
  %446 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %447 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %446, i32 0, i32 4
  store i32 %445, i32* %447, align 8
  br label %475

448:                                              ; preds = %440
  %449 = load i8*, i8** %11, align 8
  %450 = call i64 @strcmp(i8* %449, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %448
  %453 = load i32, i32* %6, align 4
  %454 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %455 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %454, i32 0, i32 5
  store i32 %453, i32* %455, align 4
  br label %474

456:                                              ; preds = %448
  %457 = load i8*, i8** %11, align 8
  %458 = call i64 @strcmp(i8* %457, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %456
  %461 = load i32, i32* %6, align 4
  %462 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %463 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %462, i32 0, i32 6
  store i32 %461, i32* %463, align 8
  br label %473

464:                                              ; preds = %456
  %465 = load i8*, i8** %11, align 8
  %466 = call i64 @strcmp(i8* %465, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %464
  %469 = load i32, i32* %6, align 4
  %470 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %471 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %470, i32 0, i32 7
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %468, %464
  br label %473

473:                                              ; preds = %472, %460
  br label %474

474:                                              ; preds = %473, %452
  br label %475

475:                                              ; preds = %474, %444
  br label %476

476:                                              ; preds = %475, %436
  br label %477

477:                                              ; preds = %476, %428
  br label %478

478:                                              ; preds = %477, %403
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %480 = load i32, i32* %6, align 4
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = zext i32 %484 to i64
  %486 = load i64, i64* @SHT_SYMTAB, align 8
  %487 = icmp ne i64 %485, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %478
  br label %541

489:                                              ; preds = %478
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %491 = bitcast %struct.TYPE_7__* %490 to i8*
  %492 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %493 = load i32, i32* %6, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 4
  %498 = zext i32 %497 to i64
  %499 = getelementptr i8, i8* %491, i64 %498
  %500 = bitcast i8* %499 to %struct.TYPE_5__*
  %501 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %502 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %501, i32 0, i32 9
  store %struct.TYPE_5__* %500, %struct.TYPE_5__** %502, align 8
  %503 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %504 = bitcast %struct.TYPE_7__* %503 to i8*
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %506 = load i32, i32* %6, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  %512 = getelementptr i8, i8* %504, i64 %511
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %514 = load i32, i32* %6, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = zext i32 %518 to i64
  %520 = getelementptr i8, i8* %512, i64 %519
  %521 = bitcast i8* %520 to %struct.TYPE_5__*
  %522 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %523 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %522, i32 0, i32 8
  store %struct.TYPE_5__* %521, %struct.TYPE_5__** %523, align 8
  %524 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %525 = bitcast %struct.TYPE_7__* %524 to i8*
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %528 = load i32, i32* %6, align 4
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 6
  %532 = load i32, i32* %531, align 4
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  %538 = getelementptr i8, i8* %525, i64 %537
  %539 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %540 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %539, i32 0, i32 10
  store i8* %538, i8** %540, align 8
  br label %541

541:                                              ; preds = %489, %488
  %542 = load i32, i32* %6, align 4
  %543 = add i32 %542, 1
  store i32 %543, i32* %6, align 4
  br label %332

544:                                              ; preds = %332
  %545 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %546 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %545, i32 0, i32 9
  %547 = load %struct.TYPE_5__*, %struct.TYPE_5__** %546, align 8
  %548 = icmp ne %struct.TYPE_5__* %547, null
  br i1 %548, label %552, label %549

549:                                              ; preds = %544
  %550 = load i8*, i8** %5, align 8
  %551 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %550)
  br label %552

552:                                              ; preds = %549, %544
  %553 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %554 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %553, i32 0, i32 9
  %555 = load %struct.TYPE_5__*, %struct.TYPE_5__** %554, align 8
  store %struct.TYPE_5__* %555, %struct.TYPE_5__** %9, align 8
  br label %556

556:                                              ; preds = %591, %552
  %557 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %558 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %559 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %558, i32 0, i32 8
  %560 = load %struct.TYPE_5__*, %struct.TYPE_5__** %559, align 8
  %561 = icmp ult %struct.TYPE_5__* %557, %560
  br i1 %561, label %562, label %594

562:                                              ; preds = %556
  %563 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = call i8* @TO_NATIVE(i32 %565)
  %567 = ptrtoint i8* %566 to i32
  %568 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %569 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %568, i32 0, i32 0
  store i32 %567, i32* %569, align 4
  %570 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %571 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = call i8* @TO_NATIVE(i32 %572)
  %574 = ptrtoint i8* %573 to i32
  %575 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %576 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %575, i32 0, i32 1
  store i32 %574, i32* %576, align 4
  %577 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %578 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = call i8* @TO_NATIVE(i32 %579)
  %581 = ptrtoint i8* %580 to i32
  %582 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 2
  store i32 %581, i32* %583, align 4
  %584 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %585 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 4
  %587 = call i8* @TO_NATIVE(i32 %586)
  %588 = ptrtoint i8* %587 to i32
  %589 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 3
  store i32 %588, i32* %590, align 4
  br label %591

591:                                              ; preds = %562
  %592 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %593 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %592, i32 1
  store %struct.TYPE_5__* %593, %struct.TYPE_5__** %9, align 8
  br label %556

594:                                              ; preds = %556
  store i32 1, i32* %3, align 4
  br label %595

595:                                              ; preds = %594, %374, %180, %69, %32
  %596 = load i32, i32* %3, align 4
  ret i32 %596
}

declare dso_local %struct.TYPE_7__* @grab_file(i8*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
