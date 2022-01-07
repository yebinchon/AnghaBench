; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_create_symtab_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_create_symtab_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, i32, %struct.section*, %struct.section* }
%struct.section = type { i32, i32, %struct.symbuf* }
%struct.symbuf = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.strbuf = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i32, i32, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gelf_getshdr() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"elf_newdata() failed: %s.\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@ELF_T_SYM = common dso_local global i8* null, align 8
@EV_CURRENT = common dso_local global i8* null, align 8
@ELF_T_BYTE = common dso_local global i8* null, align 8
@SHT_SYMTAB = common dso_local global i32 0, align 4
@SHT_STRTAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"gelf_update_shdr() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_symtab_data(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.symbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %13 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %14 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %13, i32 0, i32 3
  %15 = load %struct.section*, %struct.section** %14, align 8
  store %struct.section* %15, %struct.section** %3, align 8
  %16 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %17 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %16, i32 0, i32 2
  %18 = load %struct.section*, %struct.section** %17, align 8
  store %struct.section* %18, %struct.section** %4, align 8
  %19 = load %struct.section*, %struct.section** %3, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @gelf_getshdr(i32 %21, %struct.TYPE_10__* %11)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @elf_errmsg(i32 -1)
  %27 = call i32 @errx(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.section*, %struct.section** %4, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @gelf_getshdr(i32 %31, %struct.TYPE_10__* %12)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @elf_errmsg(i32 -1)
  %37 = call i32 @errx(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.section*, %struct.section** %3, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 2
  %41 = load %struct.symbuf*, %struct.symbuf** %40, align 8
  store %struct.symbuf* %41, %struct.symbuf** %5, align 8
  %42 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %43 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %111

46:                                               ; preds = %38
  %47 = load %struct.section*, %struct.section** %3, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_11__* @elf_newdata(i32 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %8, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @EXIT_FAILURE, align 4
  %54 = call i32 @elf_errmsg(i32 -1)
  %55 = call i32 @errx(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %58 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ELFCLASS32, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %68 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %73 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** @ELF_T_SYM, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @EV_CURRENT, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  br label %110

86:                                               ; preds = %56
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 8, i32* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %92 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %97 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @ELF_T_SYM, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @EV_CURRENT, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %86, %62
  br label %111

111:                                              ; preds = %110, %38
  %112 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %113 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %193

116:                                              ; preds = %111
  %117 = load %struct.section*, %struct.section** %3, align 8
  %118 = getelementptr inbounds %struct.section, %struct.section* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_11__* @elf_newdata(i32 %119)
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %7, align 8
  %121 = icmp eq %struct.TYPE_11__* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* @EXIT_FAILURE, align 4
  %124 = call i32 @elf_errmsg(i32 -1)
  %125 = call i32 @errx(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %128 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ELFCLASS32, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %126
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 4, i32* %134, align 8
  %135 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %136 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %144 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %149 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load i8*, i8** @ELF_T_SYM, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @EV_CURRENT, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  br label %192

162:                                              ; preds = %126
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 8, i32* %164, align 8
  %165 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %166 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %174 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 8
  %178 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %179 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load i8*, i8** @ELF_T_SYM, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @EV_CURRENT, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %162, %132
  br label %193

193:                                              ; preds = %192, %111
  %194 = load %struct.section*, %struct.section** %4, align 8
  %195 = getelementptr inbounds %struct.section, %struct.section* %194, i32 0, i32 2
  %196 = load %struct.symbuf*, %struct.symbuf** %195, align 8
  %197 = bitcast %struct.symbuf* %196 to %struct.strbuf*
  store %struct.strbuf* %197, %struct.strbuf** %6, align 8
  %198 = load %struct.section*, %struct.section** %4, align 8
  %199 = getelementptr inbounds %struct.section, %struct.section* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call %struct.TYPE_11__* @elf_newdata(i32 %200)
  store %struct.TYPE_11__* %201, %struct.TYPE_11__** %10, align 8
  %202 = icmp eq %struct.TYPE_11__* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %193
  %204 = load i32, i32* @EXIT_FAILURE, align 4
  %205 = call i32 @elf_errmsg(i32 -1)
  %206 = call i32 @errx(i32 %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %193
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  store i32 0, i32* %211, align 4
  %212 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %213 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 8
  %218 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %219 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load i8*, i8** @ELF_T_BYTE, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 4
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** @EV_CURRENT, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  store i8* %227, i8** %229, align 8
  %230 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %231 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %272

235:                                              ; preds = %207
  %236 = load %struct.section*, %struct.section** %4, align 8
  %237 = getelementptr inbounds %struct.section, %struct.section* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call %struct.TYPE_11__* @elf_newdata(i32 %238)
  store %struct.TYPE_11__* %239, %struct.TYPE_11__** %9, align 8
  %240 = icmp eq %struct.TYPE_11__* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i32, i32* @EXIT_FAILURE, align 4
  %243 = call i32 @elf_errmsg(i32 -1)
  %244 = call i32 @errx(i32 %242, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %241, %235
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  %253 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %254 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %260 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  %266 = load i8*, i8** @ELF_T_BYTE, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 4
  store i8* %266, i8** %268, align 8
  %269 = load i8*, i8** @EV_CURRENT, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 3
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %245, %207
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  store i64 0, i64* %273, align 8
  %274 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %275 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @ELFCLASS32, align 8
  %278 = icmp eq i64 %276, %277
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 4, i32 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %280, i32* %281, align 8
  %282 = load %struct.section*, %struct.section** %3, align 8
  %283 = getelementptr inbounds %struct.section, %struct.section* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  store i32 %284, i32* %285, align 4
  %286 = load i32, i32* @SHT_SYMTAB, align 4
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  store i32 %286, i32* %287, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i64 0, i64* %288, align 8
  %289 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %290 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i8*, i8** @ELF_T_SYM, align 8
  %293 = load i8*, i8** @EV_CURRENT, align 8
  %294 = call i64 @gelf_fsize(i32 %291, i8* %292, i32 1, i8* %293)
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i64 %294, i64* %295, align 8
  %296 = load %struct.symbuf*, %struct.symbuf** %5, align 8
  %297 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %298, i32* %299, align 4
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 7
  store i64 0, i64* %300, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 1, i32* %301, align 8
  %302 = load %struct.section*, %struct.section** %4, align 8
  %303 = getelementptr inbounds %struct.section, %struct.section* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  store i32 %304, i32* %305, align 4
  %306 = load i32, i32* @SHT_STRTAB, align 4
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  store i32 %306, i32* %307, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  store i64 0, i64* %308, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i64 0, i64* %309, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 0, i32* %310, align 4
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store i64 0, i64* %311, align 8
  %312 = load %struct.section*, %struct.section** %3, align 8
  %313 = getelementptr inbounds %struct.section, %struct.section* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @gelf_update_shdr(i32 %314, %struct.TYPE_10__* %11)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %272
  %318 = load i32, i32* @EXIT_FAILURE, align 4
  %319 = call i32 @elf_errmsg(i32 -1)
  %320 = call i32 @errx(i32 %318, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %319)
  br label %321

321:                                              ; preds = %317, %272
  %322 = load %struct.section*, %struct.section** %4, align 8
  %323 = getelementptr inbounds %struct.section, %struct.section* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @gelf_update_shdr(i32 %324, %struct.TYPE_10__* %12)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %321
  %328 = load i32, i32* @EXIT_FAILURE, align 4
  %329 = call i32 @elf_errmsg(i32 -1)
  %330 = call i32 @errx(i32 %328, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %327, %321
  ret void
}

declare dso_local i32* @gelf_getshdr(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.TYPE_11__* @elf_newdata(i32) #1

declare dso_local i64 @gelf_fsize(i32, i8*, i32, i8*) #1

declare dso_local i32 @gelf_update_shdr(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
