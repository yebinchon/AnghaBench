; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_12__*, i32*, i32*, i32*, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32, i32, i64, i32*, i64, i32 }

@DT_DM_LOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".SUNW_ctf\00", align 1
@SHT_PROGBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@SHT_SYMTAB = common dso_local global i32 0, align 4
@dt_modops_64 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@SHT_STRTAB = common dso_local global i32 0, align 4
@_dtrace_strbuckets = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"hashed %s [%s] (%u symbols)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"sorted %s [%s] (%u symbols)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_module_load(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DT_DM_LOADED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %231

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = call i32 @dt_module_load_proc(i32* %19, %struct.TYPE_10__* %20)
  store i32 %21, i32* %3, align 4
  br label %231

22:                                               ; preds = %13
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 14
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @SHT_PROGBITS, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 14
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 6
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 14
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 14
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 14
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 14
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 14
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @SHT_SYMTAB, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp eq %struct.TYPE_12__* %63, @dt_modops_64
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i64 4, i64 4
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 13
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %76, align 8
  %77 = load i32, i32* @SHT_STRTAB, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 13
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 6
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 13
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 13
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 13
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 13
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 13
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 14
  %100 = call i32 @dt_module_load_sect(i32* %96, %struct.TYPE_10__* %97, %struct.TYPE_11__* %99)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %116, label %102

102:                                              ; preds = %22
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = call i32 @dt_module_load_sect(i32* %103, %struct.TYPE_10__* %104, %struct.TYPE_11__* %106)
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 13
  %114 = call i32 @dt_module_load_sect(i32* %110, %struct.TYPE_10__* %111, %struct.TYPE_11__* %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %109, %102, %22
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = call i32 @dt_module_unload(i32* %117, %struct.TYPE_10__* %118)
  store i32 -1, i32* %3, align 4
  br label %231

120:                                              ; preds = %109
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %124, %128
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @_dtrace_strbuckets, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  store i32 1, i32* %136, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @calloc(i32 %139, i32 4)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 12
  store i32* %141, i32** %143, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  %148 = call i8* @calloc(i32 %147, i32 4)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 11
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 12
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %120
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 11
  %159 = load i32*, i32** %158, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %156, %120
  %162 = load i32*, i32** %4, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = call i32 @dt_module_unload(i32* %162, %struct.TYPE_10__* %163)
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* @EDT_NOMEM, align 4
  %167 = call i32 @dt_set_errno(i32* %165, i32 %166)
  store i32 %167, i32* %3, align 4
  br label %231

168:                                              ; preds = %156
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 9
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = call i32 %173(%struct.TYPE_10__* %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @dt_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %180, i8* %184, i32 %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 8, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32* @malloc(i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 10
  store i32* %196, i32** %198, align 8
  %199 = icmp eq i32* %196, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %168
  %201 = load i32*, i32** %4, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %203 = call i32 @dt_module_unload(i32* %201, %struct.TYPE_10__* %202)
  %204 = load i32*, i32** %4, align 8
  %205 = load i32, i32* @EDT_NOMEM, align 4
  %206 = call i32 @dt_set_errno(i32* %204, i32 %205)
  store i32 %206, i32* %3, align 4
  br label %231

207:                                              ; preds = %168
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 9
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = call i32 %212(%struct.TYPE_10__* %213)
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 7
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @dt_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %217, i8* %221, i32 %224)
  %226 = load i32, i32* @DT_DM_LOADED, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %207, %200, %161, %116, %18, %12
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @dt_module_load_proc(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @dt_module_load_sect(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @dt_module_unload(i32*, %struct.TYPE_10__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32 @dt_dprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
