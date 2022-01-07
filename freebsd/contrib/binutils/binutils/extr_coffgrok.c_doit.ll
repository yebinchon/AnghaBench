; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { i64, i64, %struct.coff_sfile*, %struct.coff_sfile*, i64, i64 }
%struct.coff_sfile = type { i8*, %struct.coff_sfile*, %struct.TYPE_23__*, %struct.coff_isection* }
%struct.TYPE_23__ = type { i64, i32, i64 }
%struct.coff_isection = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.internal_syment }
%struct.internal_syment = type { i32, i32, i64, i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i8** }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_23__* }
%struct.TYPE_27__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_23__* }
%struct.TYPE_25__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_23__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__* }

@ofile = common dso_local global %struct.coff_ofile* null, align 8
@rawcount = common dso_local global i32 0, align 4
@rawsyms = common dso_local global %struct.TYPE_24__* null, align 8
@abfd = common dso_local global %struct.TYPE_30__* null, align 8
@cur_sfile = common dso_local global %struct.coff_sfile* null, align 8
@top_scope = common dso_local global %struct.TYPE_23__* null, align 8
@file_scope = common dso_local global %struct.TYPE_23__* null, align 8
@last_function_type = common dso_local global %struct.TYPE_26__* null, align 8
@last_function_symbol = common dso_local global %struct.TYPE_27__* null, align 8
@last_struct = common dso_local global %struct.TYPE_25__* null, align 8
@last_enum = common dso_local global %struct.TYPE_28__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coff_ofile* ()* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coff_ofile* @doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.coff_ofile*, align 8
  %4 = alloca %struct.internal_syment*, align 8
  %5 = alloca %struct.coff_sfile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %8 = call i64 @xmalloc(i32 48)
  %9 = inttoptr i64 %8 to %struct.coff_ofile*
  store %struct.coff_ofile* %9, %struct.coff_ofile** %3, align 8
  %10 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  store %struct.coff_ofile* %10, %struct.coff_ofile** @ofile, align 8
  %11 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %12 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %11, i32 0, i32 3
  store %struct.coff_sfile* null, %struct.coff_sfile** %12, align 8
  %13 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %14 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %13, i32 0, i32 2
  store %struct.coff_sfile* null, %struct.coff_sfile** %14, align 8
  %15 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %16 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %18 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %20 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %22 = call i32 @do_sections_p1(%struct.coff_ofile* %21)
  %23 = call i32 @push_scope(i32 1)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %245, %0
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @rawcount, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %246

28:                                               ; preds = %24
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** @rawsyms, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 0
  store %struct.internal_syment* %34, %struct.internal_syment** %4, align 8
  %35 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %36 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %236 [
    i32 138, label %38
    i32 140, label %97
    i32 144, label %150
    i32 132, label %198
    i32 146, label %198
    i32 135, label %208
    i32 134, label %208
    i32 139, label %208
    i32 136, label %216
    i32 130, label %224
    i32 143, label %224
    i32 128, label %224
    i32 141, label %228
    i32 137, label %228
    i32 131, label %232
    i32 129, label %232
    i32 145, label %232
    i32 133, label %232
    i32 142, label %238
  ]

38:                                               ; preds = %28
  %39 = call i64 @xmalloc(i32 32)
  %40 = inttoptr i64 %39 to %struct.coff_sfile*
  store %struct.coff_sfile* %40, %struct.coff_sfile** %5, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** @abfd, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i64 @xcalloc(i32 4, i32 %44)
  %46 = inttoptr i64 %45 to %struct.coff_isection*
  %47 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %48 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %47, i32 0, i32 3
  store %struct.coff_isection* %46, %struct.coff_isection** %48, align 8
  %49 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  store %struct.coff_sfile* %49, %struct.coff_sfile** @cur_sfile, align 8
  %50 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %51 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %57 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %59 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %58, i32 0, i32 1
  store %struct.coff_sfile* null, %struct.coff_sfile** %59, align 8
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %38
  %63 = call i32 (...) @pop_scope()
  br label %64

64:                                               ; preds = %62, %38
  store i32 1, i32* %2, align 4
  %65 = call i32 @push_scope(i32 1)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %67 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %68 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %67, i32 0, i32 2
  store %struct.TYPE_23__* %66, %struct.TYPE_23__** %68, align 8
  store %struct.TYPE_23__* %66, %struct.TYPE_23__** @file_scope, align 8
  %69 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %70 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %69, i32 0, i32 2
  %71 = load %struct.coff_sfile*, %struct.coff_sfile** %70, align 8
  %72 = icmp ne %struct.coff_sfile* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %75 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %76 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %75, i32 0, i32 2
  %77 = load %struct.coff_sfile*, %struct.coff_sfile** %76, align 8
  %78 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %77, i32 0, i32 1
  store %struct.coff_sfile* %74, %struct.coff_sfile** %78, align 8
  br label %83

79:                                               ; preds = %64
  %80 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %81 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %82 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %81, i32 0, i32 3
  store %struct.coff_sfile* %80, %struct.coff_sfile** %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %85 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %86 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %85, i32 0, i32 2
  store %struct.coff_sfile* %84, %struct.coff_sfile** %86, align 8
  %87 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %88 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %92 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %1, align 4
  br label %245

97:                                               ; preds = %28
  %98 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %99 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 98
  br i1 %108, label %109, label %130

109:                                              ; preds = %97
  %110 = call i32 @push_scope(i32 0)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** @last_function_type, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %115, align 8
  %116 = load %struct.coff_ofile*, %struct.coff_ofile** @ofile, align 8
  %117 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %120 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %126 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %143

130:                                              ; preds = %97
  %131 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %132 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = add nsw i64 %137, 1
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = call i32 (...) @pop_scope()
  br label %143

143:                                              ; preds = %130, %109
  %144 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %145 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %1, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %1, align 4
  br label %245

150:                                              ; preds = %28
  %151 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %152 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 1
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %7, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 98
  br i1 %161, label %162, label %178

162:                                              ; preds = %150
  %163 = call i32 @push_scope(i32 1)
  %164 = load %struct.coff_ofile*, %struct.coff_ofile** @ofile, align 8
  %165 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %168 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %174 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %191

178:                                              ; preds = %150
  %179 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %180 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %181, %184
  %186 = add nsw i64 %185, 1
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = call i32 (...) @pop_scope()
  br label %191

191:                                              ; preds = %178, %162
  %192 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %193 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* %1, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %1, align 4
  br label %245

198:                                              ; preds = %28, %28
  %199 = load i32, i32* %1, align 4
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** @last_function_symbol, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = call i32 @do_define(i32 %199, %struct.TYPE_23__* %206)
  store i32 %207, i32* %1, align 4
  br label %245

208:                                              ; preds = %28, %28, %28
  %209 = load i32, i32* %1, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** @last_struct, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %213, align 8
  %215 = call i32 @do_define(i32 %209, %struct.TYPE_23__* %214)
  store i32 %215, i32* %1, align 4
  br label %245

216:                                              ; preds = %28
  %217 = load i32, i32* %1, align 4
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** @last_enum, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %221, align 8
  %223 = call i32 @do_define(i32 %217, %struct.TYPE_23__* %222)
  store i32 %223, i32* %1, align 4
  br label %245

224:                                              ; preds = %28, %28, %28
  %225 = load i32, i32* %1, align 4
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %227 = call i32 @do_define(i32 %225, %struct.TYPE_23__* %226)
  store i32 %227, i32* %1, align 4
  br label %245

228:                                              ; preds = %28, %28
  %229 = load i32, i32* %1, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** @file_scope, align 8
  %231 = call i32 @do_define(i32 %229, %struct.TYPE_23__* %230)
  store i32 %231, i32* %1, align 4
  br label %245

232:                                              ; preds = %28, %28, %28, %28
  %233 = load i32, i32* %1, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** @top_scope, align 8
  %235 = call i32 @do_define(i32 %233, %struct.TYPE_23__* %234)
  store i32 %235, i32* %1, align 4
  br label %245

236:                                              ; preds = %28
  %237 = call i32 (...) @abort() #3
  unreachable

238:                                              ; preds = %28
  %239 = load %struct.internal_syment*, %struct.internal_syment** %4, align 8
  %240 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  %243 = load i32, i32* %1, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %1, align 4
  br label %245

245:                                              ; preds = %238, %232, %228, %224, %216, %208, %198, %191, %143, %83
  br label %24

246:                                              ; preds = %24
  %247 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  %248 = call i32 @do_sections_p2(%struct.coff_ofile* %247)
  %249 = load %struct.coff_ofile*, %struct.coff_ofile** %3, align 8
  ret %struct.coff_ofile* %249
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @do_sections_p1(%struct.coff_ofile*) #1

declare dso_local i32 @push_scope(i32) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32 @pop_scope(...) #1

declare dso_local i32 @do_define(i32, %struct.TYPE_23__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @do_sections_p2(%struct.coff_ofile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
