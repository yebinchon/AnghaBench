; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32*, i64, %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.section* }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.section = type { i64, i8*, i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Symbol table (%s)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" contains %d entries:\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%7s%9s%14s%5s%8s%6s%9s%5s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Num:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Bind\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Vis\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Ndx\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"gelf_getsym failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%6d:\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" %16.16jx\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %5ju\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" %-7s\00", align 1
@EI_OSABI = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" %3s\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@SHT_DYNSYM = common dso_local global i64 0, align 8
@VERSYM_VERSION = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"invalid versym version index %u\00", align 1
@VERSYM_HIDDEN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"@%s (%d)\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"@@%s (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32)* @dump_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_symtab(%struct.readelf* %0, i32 %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.readelf*, %struct.readelf** %3, align 8
  %15 = getelementptr inbounds %struct.readelf, %struct.readelf* %14, i32 0, i32 6
  %16 = load %struct.section*, %struct.section** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.section, %struct.section* %16, i64 %18
  store %struct.section* %19, %struct.section** %5, align 8
  %20 = load %struct.section*, %struct.section** %5, align 8
  %21 = getelementptr inbounds %struct.section, %struct.section* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.readelf*, %struct.readelf** %3, align 8
  %24 = getelementptr inbounds %struct.readelf, %struct.readelf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %229

28:                                               ; preds = %2
  %29 = load %struct.section*, %struct.section** %5, align 8
  %30 = getelementptr inbounds %struct.section, %struct.section* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = call i32 (...) @elf_errno()
  %33 = load %struct.section*, %struct.section** %5, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_12__* @elf_getdata(i32 %35, i32* null)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %6, align 8
  %37 = icmp eq %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = call i32 (...) @elf_errno()
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @elf_errmsg(i32 %43)
  %45 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %229

47:                                               ; preds = %28
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %229

53:                                               ; preds = %47
  %54 = load %struct.section*, %struct.section** %5, align 8
  %55 = call i32 @get_ent_count(%struct.section* %54, i32* %12)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %229

58:                                               ; preds = %53
  %59 = load %struct.section*, %struct.section** %5, align 8
  %60 = getelementptr inbounds %struct.section, %struct.section* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %226, %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %229

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_12__* %71, i32 %72, %struct.TYPE_11__* %7)
  %74 = icmp ne %struct.TYPE_11__* %73, %7
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = call i64 @elf_errmsg(i32 -1)
  %77 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %76)
  br label %226

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %87)
  %89 = load %struct.readelf*, %struct.readelf** %3, align 8
  %90 = getelementptr inbounds %struct.readelf, %struct.readelf* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.readelf*, %struct.readelf** %3, align 8
  %94 = getelementptr inbounds %struct.readelf, %struct.readelf* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @EI_OSABI, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @GELF_ST_TYPE(i32 %101)
  %103 = call i8* @st_type(i32 %92, i32 %99, i32 %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @GELF_ST_BIND(i32 %106)
  %108 = call i8* @st_bind(i32 %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @GELF_ST_VISIBILITY(i32 %111)
  %113 = call i8* @st_vis(i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %113)
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @st_shndx(i32 %116)
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %117)
  %119 = load %struct.readelf*, %struct.readelf** %3, align 8
  %120 = getelementptr inbounds %struct.readelf, %struct.readelf* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @elf_strptr(i32 %121, i64 %122, i32 %124)
  store i8* %125, i8** %8, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %78
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %127, %78
  %131 = load %struct.section*, %struct.section** %5, align 8
  %132 = getelementptr inbounds %struct.section, %struct.section* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SHT_DYNSYM, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %224

136:                                              ; preds = %130
  %137 = load %struct.readelf*, %struct.readelf** %3, align 8
  %138 = getelementptr inbounds %struct.readelf, %struct.readelf* %137, i32 0, i32 3
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = icmp ne %struct.TYPE_10__* %139, null
  br i1 %140, label %141, label %224

141:                                              ; preds = %136
  %142 = load %struct.readelf*, %struct.readelf** %3, align 8
  %143 = getelementptr inbounds %struct.readelf, %struct.readelf* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %224

146:                                              ; preds = %141
  %147 = load %struct.readelf*, %struct.readelf** %3, align 8
  %148 = getelementptr inbounds %struct.readelf, %struct.readelf* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %224

155:                                              ; preds = %146
  %156 = load %struct.readelf*, %struct.readelf** %3, align 8
  %157 = getelementptr inbounds %struct.readelf, %struct.readelf* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @VERSYM_VERSION, align 8
  %165 = and i64 %163, %164
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load %struct.readelf*, %struct.readelf** %3, align 8
  %168 = getelementptr inbounds %struct.readelf, %struct.readelf* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp uge i64 %166, %169
  br i1 %170, label %180, label %171

171:                                              ; preds = %155
  %172 = load %struct.readelf*, %struct.readelf** %3, align 8
  %173 = getelementptr inbounds %struct.readelf, %struct.readelf* %172, i32 0, i32 3
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i64, i64* %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %171, %155
  %181 = load i64, i64* %13, align 8
  %182 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i64 %181)
  br label %229

183:                                              ; preds = %171
  %184 = load %struct.readelf*, %struct.readelf** %3, align 8
  %185 = getelementptr inbounds %struct.readelf, %struct.readelf* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @VERSYM_HIDDEN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %183
  %195 = load %struct.readelf*, %struct.readelf** %3, align 8
  %196 = getelementptr inbounds %struct.readelf, %struct.readelf* %195, i32 0, i32 3
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %194, %183
  %204 = load %struct.readelf*, %struct.readelf** %3, align 8
  %205 = getelementptr inbounds %struct.readelf, %struct.readelf* %204, i32 0, i32 3
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load i64, i64* %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i64, i64* %13, align 8
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* %210, i64 %211)
  br label %223

213:                                              ; preds = %194
  %214 = load %struct.readelf*, %struct.readelf** %3, align 8
  %215 = getelementptr inbounds %struct.readelf, %struct.readelf* %214, i32 0, i32 3
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = load i64, i64* %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i64, i64* %13, align 8
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* %220, i64 %221)
  br label %223

223:                                              ; preds = %213, %203
  br label %224

224:                                              ; preds = %223, %146, %141, %136, %130
  %225 = call i32 @putchar(i8 signext 10)
  br label %226

226:                                              ; preds = %224, %75
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %66

229:                                              ; preds = %27, %46, %52, %57, %180, %66
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_12__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i64 @elf_errmsg(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

declare dso_local i8* @st_type(i32, i32, i32) #1

declare dso_local i32 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @st_bind(i32) #1

declare dso_local i32 @GELF_ST_BIND(i32) #1

declare dso_local i8* @st_vis(i32) #1

declare dso_local i32 @GELF_ST_VISIBILITY(i32) #1

declare dso_local i8* @st_shndx(i32) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
