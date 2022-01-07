; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_final_link_postscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_final_link_postscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_final_link_info = type { %struct.bfd_link_info* }
%struct.bfd_link_info = type { i32 }
%struct.coff_link_hash_entry = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".idata$2\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PE_IMPORT_TABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"%B: unable to fill in DataDictionary[1] because .idata$2 is missing\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".idata$4\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"%B: unable to fill in DataDictionary[1] because .idata$4 is missing\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c".idata$5\00", align 1
@PE_IMPORT_ADDRESS_TABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"%B: unable to fill in DataDictionary[12] because .idata$5 is missing\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".idata$6\00", align 1
@.str.7 = private unnamed_addr constant [95 x i8] c"%B: unable to fill in DataDictionary[PE_IMPORT_ADDRESS_TABLE (12)] because .idata$6 is missing\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__tls_used\00", align 1
@PE_TLS_TABLE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [70 x i8] c"%B: unable to fill in DataDictionary[9] because __tls_used is missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_XXi_final_link_postscript(i32* %0, %struct.coff_final_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.coff_final_link_info*, align 8
  %5 = alloca %struct.coff_link_hash_entry*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.coff_final_link_info* %1, %struct.coff_final_link_info** %4, align 8
  %8 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %4, align 8
  %9 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %8, i32 0, i32 0
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  store %struct.bfd_link_info* %10, %struct.bfd_link_info** %6, align 8
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %13 = call i32 @coff_hash_table(%struct.bfd_link_info* %12)
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = call %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  store %struct.coff_link_hash_entry* %17, %struct.coff_link_hash_entry** %5, align 8
  %18 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %19 = icmp ne %struct.coff_link_hash_entry* %18, null
  br i1 %19, label %20, label %300

20:                                               ; preds = %2
  %21 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %22 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %73

28:                                               ; preds = %20
  %29 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %30 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %73

38:                                               ; preds = %28
  %39 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %40 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %46 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %44, %54
  %56 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %57 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %55, %63
  %65 = load i32*, i32** %3, align 8
  %66 = call %struct.TYPE_16__* @pe_data(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load i64, i64* @PE_IMPORT_TABLE, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 %64, i32* %72, align 4
  br label %78

73:                                               ; preds = %28, %20
  %74 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @_bfd_error_handler(i32 %74, i32* %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %38
  %79 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %80 = call i32 @coff_hash_table(%struct.bfd_link_info* %79)
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = call %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  store %struct.coff_link_hash_entry* %84, %struct.coff_link_hash_entry** %5, align 8
  %85 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %86 = icmp ne %struct.coff_link_hash_entry* %85, null
  br i1 %86, label %87, label %150

87:                                               ; preds = %78
  %88 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %89 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = icmp ne %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %150

95:                                               ; preds = %87
  %96 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %97 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %150

105:                                              ; preds = %95
  %106 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %107 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %113 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %111, %121
  %123 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %124 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %122, %130
  %132 = load i32*, i32** %3, align 8
  %133 = call %struct.TYPE_16__* @pe_data(i32* %132)
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load i64, i64* @PE_IMPORT_TABLE, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %131, %140
  %142 = load i32*, i32** %3, align 8
  %143 = call %struct.TYPE_16__* @pe_data(i32* %142)
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load i64, i64* @PE_IMPORT_TABLE, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i32 %141, i32* %149, align 4
  br label %155

150:                                              ; preds = %95, %87, %78
  %151 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @_bfd_error_handler(i32 %151, i32* %152)
  %154 = load i32, i32* @FALSE, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %150, %105
  %156 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %157 = call i32 @coff_hash_table(%struct.bfd_link_info* %156)
  %158 = load i32, i32* @FALSE, align 4
  %159 = load i32, i32* @FALSE, align 4
  %160 = load i32, i32* @TRUE, align 4
  %161 = call %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %159, i32 %160)
  store %struct.coff_link_hash_entry* %161, %struct.coff_link_hash_entry** %5, align 8
  %162 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %163 = icmp ne %struct.coff_link_hash_entry* %162, null
  br i1 %163, label %164, label %217

164:                                              ; preds = %155
  %165 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %166 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = icmp ne %struct.TYPE_10__* %170, null
  br i1 %171, label %172, label %217

172:                                              ; preds = %164
  %173 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %174 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = icmp ne %struct.TYPE_9__* %180, null
  br i1 %181, label %182, label %217

182:                                              ; preds = %172
  %183 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %184 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %190 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %188, %198
  %200 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %201 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %199, %207
  %209 = load i32*, i32** %3, align 8
  %210 = call %struct.TYPE_16__* @pe_data(i32* %209)
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = load i64, i64* @PE_IMPORT_ADDRESS_TABLE, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  store i32 %208, i32* %216, align 4
  br label %222

217:                                              ; preds = %172, %164, %155
  %218 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %219 = load i32*, i32** %3, align 8
  %220 = call i32 @_bfd_error_handler(i32 %218, i32* %219)
  %221 = load i32, i32* @FALSE, align 4
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %217, %182
  %223 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %224 = call i32 @coff_hash_table(%struct.bfd_link_info* %223)
  %225 = load i32, i32* @FALSE, align 4
  %226 = load i32, i32* @FALSE, align 4
  %227 = load i32, i32* @TRUE, align 4
  %228 = call %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %225, i32 %226, i32 %227)
  store %struct.coff_link_hash_entry* %228, %struct.coff_link_hash_entry** %5, align 8
  %229 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %230 = icmp ne %struct.coff_link_hash_entry* %229, null
  br i1 %230, label %231, label %294

231:                                              ; preds = %222
  %232 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %233 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = icmp ne %struct.TYPE_10__* %237, null
  br i1 %238, label %239, label %294

239:                                              ; preds = %231
  %240 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %241 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = icmp ne %struct.TYPE_9__* %247, null
  br i1 %248, label %249, label %294

249:                                              ; preds = %239
  %250 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %251 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %257 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %255, %265
  %267 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %268 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %266, %274
  %276 = load i32*, i32** %3, align 8
  %277 = call %struct.TYPE_16__* @pe_data(i32* %276)
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = load i64, i64* @PE_IMPORT_ADDRESS_TABLE, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %275, %284
  %286 = load i32*, i32** %3, align 8
  %287 = call %struct.TYPE_16__* @pe_data(i32* %286)
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %289, align 8
  %291 = load i64, i64* @PE_IMPORT_ADDRESS_TABLE, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  store i32 %285, i32* %293, align 4
  br label %299

294:                                              ; preds = %239, %231, %222
  %295 = call i32 @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0))
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @_bfd_error_handler(i32 %295, i32* %296)
  %298 = load i32, i32* @FALSE, align 4
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %294, %249
  br label %300

300:                                              ; preds = %299, %2
  %301 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %302 = call i32 @coff_hash_table(%struct.bfd_link_info* %301)
  %303 = load i32, i32* @FALSE, align 4
  %304 = load i32, i32* @FALSE, align 4
  %305 = load i32, i32* @TRUE, align 4
  %306 = call %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32 %302, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %303, i32 %304, i32 %305)
  store %struct.coff_link_hash_entry* %306, %struct.coff_link_hash_entry** %5, align 8
  %307 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %308 = icmp ne %struct.coff_link_hash_entry* %307, null
  br i1 %308, label %309, label %382

309:                                              ; preds = %300
  %310 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %311 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %314, align 8
  %316 = icmp ne %struct.TYPE_10__* %315, null
  br i1 %316, label %317, label %368

317:                                              ; preds = %309
  %318 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %319 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = icmp ne %struct.TYPE_9__* %325, null
  br i1 %326, label %327, label %368

327:                                              ; preds = %317
  %328 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %329 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %335 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %333, %343
  %345 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %5, align 8
  %346 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = add nsw i32 %344, %352
  %354 = load i32*, i32** %3, align 8
  %355 = call %struct.TYPE_16__* @pe_data(i32* %354)
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %353, %358
  %360 = load i32*, i32** %3, align 8
  %361 = call %struct.TYPE_16__* @pe_data(i32* %360)
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = load i64, i64* @PE_TLS_TABLE, align 8
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  store i32 %359, i32* %367, align 4
  br label %373

368:                                              ; preds = %317, %309
  %369 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %370 = load i32*, i32** %3, align 8
  %371 = call i32 @_bfd_error_handler(i32 %369, i32* %370)
  %372 = load i32, i32* @FALSE, align 4
  store i32 %372, i32* %7, align 4
  br label %373

373:                                              ; preds = %368, %327
  %374 = load i32*, i32** %3, align 8
  %375 = call %struct.TYPE_16__* @pe_data(i32* %374)
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %377, align 8
  %379 = load i64, i64* @PE_TLS_TABLE, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 1
  store i32 24, i32* %381, align 4
  br label %382

382:                                              ; preds = %373, %300
  %383 = load i32, i32* %7, align 4
  ret i32 %383
}

declare dso_local %struct.coff_link_hash_entry* @coff_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @coff_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_16__* @pe_data(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
