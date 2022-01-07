; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_walk_tree_type_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_walk_tree_type_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_sfile = type { i32 }
%struct.coff_symbol = type { %struct.coff_symbol* }
%struct.coff_type = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_14__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { %struct.coff_symbol* }
%struct.TYPE_22__ = type { i32, %struct.coff_type* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.coff_symbol* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.coff_type* }
%struct.TYPE_15__ = type { %struct.coff_symbol*, i32 }
%struct.TYPE_14__ = type { %struct.coff_type* }
%struct.IT_dbt = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.IT_dpt = type { i32, i32 }
%struct.IT_dfp = type { i32, i32, i32, i32 }
%struct.IT_dds = type { i32, i32, i32 }
%struct.IT_dar = type { i32, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i8*, i8* }
%struct.IT_den = type { i32, i32, i32 }

@BTYPE_VOID = common dso_local global i8* null, align 8
@BTYPE_UNSPEC = common dso_local global i8* null, align 8
@FPTYPE_NOTSPEC = common dso_local global i8* null, align 8
@BTYPE_CHAR = common dso_local global i8* null, align 8
@BTYPE_INT = common dso_local global i8* null, align 8
@SIGN_SIGNED = common dso_local global i8* null, align 8
@BTYPE_FLOAT = common dso_local global i8* null, align 8
@FPTYPE_SINGLE = common dso_local global i8* null, align 8
@FPTYPE_DOUBLE = common dso_local global i8* null, align 8
@FPTYPE_EXTENDED = common dso_local global i8* null, align 8
@SIGN_UNSIGNED = common dso_local global i8* null, align 8
@file = common dso_local global i32 0, align 4
@BTYPE_STRUCT = common dso_local global i8* null, align 8
@SIGN_UNSPEC = common dso_local global i8* null, align 8
@BTYPE_TAG = common dso_local global i8* null, align 8
@VARIABLE_FIXED = common dso_local global i32 0, align 4
@SUB_INTEGER = common dso_local global i32 0, align 4
@BTYPE_ENUM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_sfile*, %struct.coff_symbol*, %struct.coff_type*, i32)* @walk_tree_type_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_tree_type_1(%struct.coff_sfile* %0, %struct.coff_symbol* %1, %struct.coff_type* %2, i32 %3) #0 {
  %5 = alloca %struct.coff_sfile*, align 8
  %6 = alloca %struct.coff_symbol*, align 8
  %7 = alloca %struct.coff_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.IT_dbt, align 8
  %10 = alloca %struct.IT_dpt, align 4
  %11 = alloca %struct.IT_dfp, align 4
  %12 = alloca %struct.coff_symbol*, align 8
  %13 = alloca %struct.IT_dbt, align 8
  %14 = alloca %struct.IT_dds, align 4
  %15 = alloca %struct.coff_symbol*, align 8
  %16 = alloca %struct.IT_dbt, align 8
  %17 = alloca %struct.IT_dar, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.IT_dbt, align 8
  %21 = alloca %struct.IT_den, align 4
  %22 = alloca %struct.coff_symbol*, align 8
  %23 = alloca %struct.IT_dbt, align 8
  store %struct.coff_sfile* %0, %struct.coff_sfile** %5, align 8
  store %struct.coff_symbol* %1, %struct.coff_symbol** %6, align 8
  store %struct.coff_type* %2, %struct.coff_type** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %25 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %416 [
    i32 130, label %27
    i32 135, label %27
    i32 131, label %90
    i32 132, label %104
    i32 129, label %150
    i32 128, label %200
    i32 136, label %233
    i32 134, label %343
    i32 133, label %393
  ]

27:                                               ; preds = %4, %4
  %28 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %29 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %82 [
    i32 143, label %32
    i32 137, label %32
    i32 149, label %39
    i32 142, label %46
    i32 146, label %46
    i32 144, label %46
    i32 147, label %53
    i32 148, label %58
    i32 145, label %63
    i32 141, label %68
    i32 138, label %75
    i32 140, label %75
    i32 139, label %75
  ]

32:                                               ; preds = %27, %27
  %33 = load i8*, i8** @BTYPE_VOID, align 8
  %34 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** @BTYPE_UNSPEC, align 8
  %36 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %38 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  br label %82

39:                                               ; preds = %27
  %40 = load i8*, i8** @BTYPE_CHAR, align 8
  %41 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** @BTYPE_UNSPEC, align 8
  %43 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %45 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  br label %82

46:                                               ; preds = %27, %27, %27
  %47 = load i8*, i8** @BTYPE_INT, align 8
  %48 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** @SIGN_SIGNED, align 8
  %50 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 4
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %52 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  br label %82

53:                                               ; preds = %27
  %54 = load i8*, i8** @BTYPE_FLOAT, align 8
  %55 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** @FPTYPE_SINGLE, align 8
  %57 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %56, i8** %57, align 8
  br label %82

58:                                               ; preds = %27
  %59 = load i8*, i8** @BTYPE_FLOAT, align 8
  %60 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** @FPTYPE_DOUBLE, align 8
  %62 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %61, i8** %62, align 8
  br label %82

63:                                               ; preds = %27
  %64 = load i8*, i8** @BTYPE_FLOAT, align 8
  %65 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @FPTYPE_EXTENDED, align 8
  %67 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %66, i8** %67, align 8
  br label %82

68:                                               ; preds = %27
  %69 = load i8*, i8** @BTYPE_CHAR, align 8
  %70 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** @SIGN_UNSIGNED, align 8
  %72 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 4
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %74 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  br label %82

75:                                               ; preds = %27, %27, %27
  %76 = load i8*, i8** @BTYPE_INT, align 8
  %77 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 5
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** @SIGN_UNSIGNED, align 8
  %79 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 4
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %81 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 3
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %27, %75, %68, %63, %58, %53, %46, %39, %32
  %83 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %84 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %9, i32 0, i32 1
  store i32 4097, i32* %87, align 4
  %88 = load i32, i32* @file, align 4
  %89 = call i32 @sysroff_swap_dbt_out(i32 %88, %struct.IT_dbt* %9)
  br label %418

90:                                               ; preds = %4
  %91 = getelementptr inbounds %struct.IT_dpt, %struct.IT_dpt* %10, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %93 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %94 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %95 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.coff_type*, %struct.coff_type** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  call void @walk_tree_type_1(%struct.coff_sfile* %92, %struct.coff_symbol* %93, %struct.coff_type* %98, i32 %100)
  %101 = getelementptr inbounds %struct.IT_dpt, %struct.IT_dpt* %10, i32 0, i32 0
  store i32 4097, i32* %101, align 4
  %102 = load i32, i32* @file, align 4
  %103 = call i32 @sysroff_swap_dpt_out(i32 %102, %struct.IT_dpt* %10)
  br label %418

104:                                              ; preds = %4
  %105 = getelementptr inbounds %struct.IT_dfp, %struct.IT_dfp* %11, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.IT_dfp, %struct.IT_dfp* %11, i32 0, i32 3
  store i32 0, i32* %106, align 4
  %107 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %108 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.IT_dfp, %struct.IT_dfp* %11, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.IT_dfp, %struct.IT_dfp* %11, i32 0, i32 1
  store i32 4097, i32* %115, align 4
  %116 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %117 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %118 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %119 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load %struct.coff_type*, %struct.coff_type** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  call void @walk_tree_type_1(%struct.coff_sfile* %116, %struct.coff_symbol* %117, %struct.coff_type* %122, i32 %124)
  %125 = load i32, i32* @file, align 4
  %126 = call i32 @sysroff_swap_dfp_out(i32 %125, %struct.IT_dfp* %11)
  %127 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %128 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load %struct.coff_symbol*, %struct.coff_symbol** %132, align 8
  store %struct.coff_symbol* %133, %struct.coff_symbol** %12, align 8
  br label %134

134:                                              ; preds = %142, %104
  %135 = load %struct.coff_symbol*, %struct.coff_symbol** %12, align 8
  %136 = icmp ne %struct.coff_symbol* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %139 = load %struct.coff_symbol*, %struct.coff_symbol** %12, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @walk_tree_symbol(%struct.coff_sfile* %138, i32 0, %struct.coff_symbol* %139, i32 %140)
  br label %142

142:                                              ; preds = %137
  %143 = load %struct.coff_symbol*, %struct.coff_symbol** %12, align 8
  %144 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %143, i32 0, i32 0
  %145 = load %struct.coff_symbol*, %struct.coff_symbol** %144, align 8
  store %struct.coff_symbol* %145, %struct.coff_symbol** %12, align 8
  br label %134

146:                                              ; preds = %134
  %147 = getelementptr inbounds %struct.IT_dfp, %struct.IT_dfp* %11, i32 0, i32 0
  store i32 1, i32* %147, align 4
  %148 = load i32, i32* @file, align 4
  %149 = call i32 @sysroff_swap_dfp_out(i32 %148, %struct.IT_dfp* %11)
  br label %418

150:                                              ; preds = %4
  %151 = getelementptr inbounds %struct.IT_dds, %struct.IT_dds* %14, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = load i8*, i8** @BTYPE_STRUCT, align 8
  %153 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %13, i32 0, i32 5
  store i8* %152, i8** %153, align 8
  %154 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %155 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %13, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = load i8*, i8** @SIGN_UNSPEC, align 8
  %159 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %13, i32 0, i32 4
  store i8* %158, i8** %159, align 8
  %160 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %161 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %13, i32 0, i32 3
  store i8* %160, i8** %161, align 8
  %162 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %163 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @get_member_id(i32 %166)
  %168 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %13, i32 0, i32 2
  store i8* %167, i8** %168, align 8
  %169 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %13, i32 0, i32 1
  store i32 4097, i32* %169, align 4
  %170 = load i32, i32* @file, align 4
  %171 = call i32 @sysroff_swap_dbt_out(i32 %170, %struct.IT_dbt* %13)
  %172 = getelementptr inbounds %struct.IT_dds, %struct.IT_dds* %14, i32 0, i32 0
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.IT_dds, %struct.IT_dds* %14, i32 0, i32 1
  store i32 4097, i32* %173, align 4
  %174 = load i32, i32* @file, align 4
  %175 = call i32 @sysroff_swap_dds_out(i32 %174, %struct.IT_dds* %14)
  %176 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %177 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load %struct.coff_symbol*, %struct.coff_symbol** %181, align 8
  store %struct.coff_symbol* %182, %struct.coff_symbol** %15, align 8
  br label %183

183:                                              ; preds = %192, %150
  %184 = load %struct.coff_symbol*, %struct.coff_symbol** %15, align 8
  %185 = icmp ne %struct.coff_symbol* %184, null
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %188 = load %struct.coff_symbol*, %struct.coff_symbol** %15, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  %191 = call i32 @walk_tree_symbol(%struct.coff_sfile* %187, i32 0, %struct.coff_symbol* %188, i32 %190)
  br label %192

192:                                              ; preds = %186
  %193 = load %struct.coff_symbol*, %struct.coff_symbol** %15, align 8
  %194 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %193, i32 0, i32 0
  %195 = load %struct.coff_symbol*, %struct.coff_symbol** %194, align 8
  store %struct.coff_symbol* %195, %struct.coff_symbol** %15, align 8
  br label %183

196:                                              ; preds = %183
  %197 = getelementptr inbounds %struct.IT_dds, %struct.IT_dds* %14, i32 0, i32 0
  store i32 1, i32* %197, align 4
  %198 = load i32, i32* @file, align 4
  %199 = call i32 @sysroff_swap_dds_out(i32 %198, %struct.IT_dds* %14)
  br label %418

200:                                              ; preds = %4
  %201 = load i8*, i8** @BTYPE_TAG, align 8
  %202 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 5
  store i8* %201, i8** %202, align 8
  %203 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %204 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 0
  store i32 %205, i32* %206, align 8
  %207 = load i8*, i8** @SIGN_UNSPEC, align 8
  %208 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 4
  store i8* %207, i8** %208, align 8
  %209 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %210 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 3
  store i8* %209, i8** %210, align 8
  %211 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %212 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = icmp ne %struct.TYPE_20__* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %200
  %218 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %219 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @get_member_id(i32 %224)
  %226 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 2
  store i8* %225, i8** %226, align 8
  br label %229

227:                                              ; preds = %200
  %228 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 2
  store i8* null, i8** %228, align 8
  br label %229

229:                                              ; preds = %227, %217
  %230 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %16, i32 0, i32 1
  store i32 4097, i32* %230, align 4
  %231 = load i32, i32* @file, align 4
  %232 = call i32 @sysroff_swap_dbt_out(i32 %231, %struct.IT_dbt* %16)
  br label %418

233:                                              ; preds = %4
  store i32 1, i32* %19, align 4
  %234 = load i32, i32* %19, align 4
  %235 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 0
  store i32 %234, i32* %235, align 8
  %236 = load i32, i32* %19, align 4
  %237 = call i8* @nints(i32 %236)
  %238 = bitcast i8* %237 to i32*
  %239 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 9
  store i32* %238, i32** %239, align 8
  %240 = load i32, i32* %19, align 4
  %241 = call i8* @nints(i32 %240)
  %242 = bitcast i8* %241 to i32*
  %243 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 8
  store i32* %242, i32** %243, align 8
  %244 = load i32, i32* %19, align 4
  %245 = call i8* @nints(i32 %244)
  %246 = bitcast i8* %245 to i32*
  %247 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 7
  store i32* %246, i32** %247, align 8
  %248 = load i32, i32* %19, align 4
  %249 = call i8* @nints(i32 %248)
  %250 = bitcast i8* %249 to i32*
  %251 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 6
  store i32* %250, i32** %251, align 8
  %252 = load i32, i32* %19, align 4
  %253 = call i8* @nints(i32 %252)
  %254 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 11
  store i8* %253, i8** %254, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call i8* @nints(i32 %255)
  %257 = bitcast i8* %256 to i32*
  %258 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 1
  store i32* %257, i32** %258, align 8
  %259 = load i32, i32* %19, align 4
  %260 = call i8* @nints(i32 %259)
  %261 = bitcast i8* %260 to i32*
  %262 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 5
  store i32* %261, i32** %262, align 8
  %263 = load i32, i32* %19, align 4
  %264 = call i8* @nints(i32 %263)
  %265 = bitcast i8* %264 to i32*
  %266 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 2
  store i32* %265, i32** %266, align 8
  %267 = load i32, i32* %19, align 4
  %268 = call i8* @nints(i32 %267)
  %269 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 10
  store i8* %268, i8** %269, align 8
  %270 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 3
  store i32 4097, i32* %270, align 8
  %271 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %272 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %275 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sdiv i32 %273, %278
  %280 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 4
  store i32 %279, i32* %280, align 4
  store i32 0, i32* %18, align 4
  br label %281

281:                                              ; preds = %328, %233
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %19, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %331

285:                                              ; preds = %281
  %286 = load i32, i32* @VARIABLE_FIXED, align 4
  %287 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 9
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %18, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 %286, i32* %291, align 4
  %292 = load i32, i32* @SUB_INTEGER, align 4
  %293 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 8
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %292, i32* %297, align 4
  %298 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 7
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %18, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32 0, i32* %302, align 4
  %303 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 6
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 0, i32* %307, align 4
  %308 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %309 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %18, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %312, i32* %317, align 4
  %318 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 5
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %18, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 0, i32* %322, align 4
  %323 = getelementptr inbounds %struct.IT_dar, %struct.IT_dar* %17, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %18, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 1, i32* %327, align 4
  br label %328

328:                                              ; preds = %285
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %18, align 4
  br label %281

331:                                              ; preds = %281
  %332 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %333 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %334 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %335 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 1
  %338 = load %struct.coff_type*, %struct.coff_type** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, 1
  call void @walk_tree_type_1(%struct.coff_sfile* %332, %struct.coff_symbol* %333, %struct.coff_type* %338, i32 %340)
  %341 = load i32, i32* @file, align 4
  %342 = call i32 @sysroff_swap_dar_out(i32 %341, %struct.IT_dar* %17)
  br label %418

343:                                              ; preds = %4
  %344 = load i8*, i8** @BTYPE_ENUM, align 8
  %345 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %20, i32 0, i32 5
  store i8* %344, i8** %345, align 8
  %346 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %347 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %20, i32 0, i32 0
  store i32 %348, i32* %349, align 8
  %350 = load i8*, i8** @SIGN_UNSPEC, align 8
  %351 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %20, i32 0, i32 4
  store i8* %350, i8** %351, align 8
  %352 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %353 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %20, i32 0, i32 3
  store i8* %352, i8** %353, align 8
  %354 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %355 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i8* @get_member_id(i32 %358)
  %360 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %20, i32 0, i32 2
  store i8* %359, i8** %360, align 8
  %361 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %20, i32 0, i32 1
  store i32 4097, i32* %361, align 4
  %362 = load i32, i32* @file, align 4
  %363 = call i32 @sysroff_swap_dbt_out(i32 %362, %struct.IT_dbt* %20)
  %364 = getelementptr inbounds %struct.IT_den, %struct.IT_den* %21, i32 0, i32 0
  store i32 0, i32* %364, align 4
  %365 = getelementptr inbounds %struct.IT_den, %struct.IT_den* %21, i32 0, i32 1
  store i32 4097, i32* %365, align 4
  %366 = getelementptr inbounds %struct.IT_den, %struct.IT_den* %21, i32 0, i32 2
  store i32 0, i32* %366, align 4
  %367 = load i32, i32* @file, align 4
  %368 = call i32 @sysroff_swap_den_out(i32 %367, %struct.IT_den* %21)
  %369 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %370 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %373, i32 0, i32 0
  %375 = load %struct.coff_symbol*, %struct.coff_symbol** %374, align 8
  store %struct.coff_symbol* %375, %struct.coff_symbol** %22, align 8
  br label %376

376:                                              ; preds = %385, %343
  %377 = load %struct.coff_symbol*, %struct.coff_symbol** %22, align 8
  %378 = icmp ne %struct.coff_symbol* %377, null
  br i1 %378, label %379, label %389

379:                                              ; preds = %376
  %380 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %381 = load %struct.coff_symbol*, %struct.coff_symbol** %22, align 8
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 %382, 1
  %384 = call i32 @walk_tree_symbol(%struct.coff_sfile* %380, i32 0, %struct.coff_symbol* %381, i32 %383)
  br label %385

385:                                              ; preds = %379
  %386 = load %struct.coff_symbol*, %struct.coff_symbol** %22, align 8
  %387 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %386, i32 0, i32 0
  %388 = load %struct.coff_symbol*, %struct.coff_symbol** %387, align 8
  store %struct.coff_symbol* %388, %struct.coff_symbol** %22, align 8
  br label %376

389:                                              ; preds = %376
  %390 = getelementptr inbounds %struct.IT_den, %struct.IT_den* %21, i32 0, i32 0
  store i32 1, i32* %390, align 4
  %391 = load i32, i32* @file, align 4
  %392 = call i32 @sysroff_swap_den_out(i32 %391, %struct.IT_den* %21)
  br label %418

393:                                              ; preds = %4
  %394 = load i8*, i8** @BTYPE_TAG, align 8
  %395 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %23, i32 0, i32 5
  store i8* %394, i8** %395, align 8
  %396 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %397 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %23, i32 0, i32 0
  store i32 %398, i32* %399, align 8
  %400 = load i8*, i8** @SIGN_UNSPEC, align 8
  %401 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %23, i32 0, i32 4
  store i8* %400, i8** %401, align 8
  %402 = load i8*, i8** @FPTYPE_NOTSPEC, align 8
  %403 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %23, i32 0, i32 3
  store i8* %402, i8** %403, align 8
  %404 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %405 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_25__*, %struct.TYPE_25__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i8* @get_member_id(i32 %410)
  %412 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %23, i32 0, i32 2
  store i8* %411, i8** %412, align 8
  %413 = getelementptr inbounds %struct.IT_dbt, %struct.IT_dbt* %23, i32 0, i32 1
  store i32 4097, i32* %413, align 4
  %414 = load i32, i32* @file, align 4
  %415 = call i32 @sysroff_swap_dbt_out(i32 %414, %struct.IT_dbt* %23)
  br label %418

416:                                              ; preds = %4
  %417 = call i32 (...) @abort() #3
  unreachable

418:                                              ; preds = %393, %389, %331, %229, %196, %146, %90, %82
  ret void
}

declare dso_local i32 @sysroff_swap_dbt_out(i32, %struct.IT_dbt*) #1

declare dso_local i32 @sysroff_swap_dpt_out(i32, %struct.IT_dpt*) #1

declare dso_local i32 @sysroff_swap_dfp_out(i32, %struct.IT_dfp*) #1

declare dso_local i32 @walk_tree_symbol(%struct.coff_sfile*, i32, %struct.coff_symbol*, i32) #1

declare dso_local i8* @get_member_id(i32) #1

declare dso_local i32 @sysroff_swap_dds_out(i32, %struct.IT_dds*) #1

declare dso_local i8* @nints(i32) #1

declare dso_local i32 @sysroff_swap_dar_out(i32, %struct.IT_dar*) #1

declare dso_local i32 @sysroff_swap_den_out(i32, %struct.IT_den*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
