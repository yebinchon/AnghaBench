; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"- CTF Statistics \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"total number of data objects\00", align 1
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"total number of functions\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"total number of function arguments\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"maximum argument list length\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"average argument list length\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"total number of types\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"total number of integers\00", align 1
@CTF_K_INTEGER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"total number of floats\00", align 1
@CTF_K_FLOAT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"total number of pointers\00", align 1
@CTF_K_POINTER = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"total number of arrays\00", align 1
@CTF_K_ARRAY = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"total number of func types\00", align 1
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"total number of structs\00", align 1
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"total number of unions\00", align 1
@CTF_K_UNION = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"total number of enums\00", align 1
@CTF_K_ENUM = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"total number of forward tags\00", align 1
@CTF_K_FORWARD = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"total number of typedefs\00", align 1
@CTF_K_TYPEDEF = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"total number of volatile types\00", align 1
@CTF_K_VOLATILE = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"total number of const types\00", align 1
@CTF_K_CONST = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"total number of restrict types\00", align 1
@CTF_K_RESTRICT = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"total number of unknowns (holes)\00", align 1
@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [31 x i8] c"total number of struct members\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"maximum number of struct members\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"total size of all structs\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"maximum size of a struct\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"average number of struct members\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"average size of a struct\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"total number of union members\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"maximum number of union members\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"total size of all unions\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"maximum size of a union\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"average number of union members\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"average size of a union\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"total number of enum members\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"maximum number of enum members\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"average number of enum members\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"total number of unique strings\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"bytes of string data\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"maximum string length\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"average string length\00", align 1
@E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_stats() #0 {
  %1 = call i32 @print_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 8
  %3 = call i32 @long_stat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %2)
  %4 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 8
  %6 = call i32 @long_stat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 8
  %8 = call i32 @long_stat(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 3), align 8
  %10 = call i32 @long_stat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 8
  %15 = sitofp i64 %14 to float
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 8
  %17 = sitofp i64 %16 to float
  %18 = fdiv float %15, %17
  %19 = call i32 @fp_stat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), float %18)
  br label %20

20:                                               ; preds = %13, %0
  %21 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 4), align 8
  %23 = call i32 @long_stat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %22)
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %25 = load i64, i64* @CTF_K_INTEGER, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @long_stat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %27)
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %30 = load i64, i64* @CTF_K_FLOAT, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @long_stat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %32)
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %35 = load i64, i64* @CTF_K_POINTER, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @long_stat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %37)
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %40 = load i64, i64* @CTF_K_ARRAY, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @long_stat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %42)
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %45 = load i64, i64* @CTF_K_FUNCTION, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @long_stat(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i64 %47)
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %50 = load i64, i64* @CTF_K_STRUCT, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @long_stat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i64 %52)
  %54 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %55 = load i64, i64* @CTF_K_UNION, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @long_stat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i64 %57)
  %59 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %60 = load i64, i64* @CTF_K_ENUM, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @long_stat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i64 %62)
  %64 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %65 = load i64, i64* @CTF_K_FORWARD, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @long_stat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i64 %67)
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %70 = load i64, i64* @CTF_K_TYPEDEF, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @long_stat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i64 %72)
  %74 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %75 = load i64, i64* @CTF_K_VOLATILE, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @long_stat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i64 %77)
  %79 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %80 = load i64, i64* @CTF_K_CONST, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @long_stat(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i64 %82)
  %84 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %85 = load i64, i64* @CTF_K_RESTRICT, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @long_stat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i64 %87)
  %89 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %90 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @long_stat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i64 %92)
  %94 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 6), align 8
  %96 = call i32 @long_stat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 7), align 8
  %98 = call i32 @long_stat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i64 %97)
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 8), align 8
  %100 = call i32 @long_stat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 9), align 8
  %102 = call i32 @long_stat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i64 %101)
  %103 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %104 = load i64, i64* @CTF_K_STRUCT, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %20
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 6), align 8
  %110 = sitofp i64 %109 to float
  %111 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %112 = load i64, i64* @CTF_K_STRUCT, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to float
  %116 = fdiv float %110, %115
  %117 = call i32 @fp_stat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), float %116)
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 8), align 8
  %119 = sitofp i64 %118 to float
  %120 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %121 = load i64, i64* @CTF_K_STRUCT, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = sitofp i64 %123 to float
  %125 = fdiv float %119, %124
  %126 = call i32 @fp_stat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), float %125)
  br label %127

127:                                              ; preds = %108, %20
  %128 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 10), align 8
  %130 = call i32 @long_stat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i64 %129)
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 11), align 8
  %132 = call i32 @long_stat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 12), align 8
  %134 = call i32 @long_stat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i64 %133)
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 13), align 8
  %136 = call i32 @long_stat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i64 %135)
  %137 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %138 = load i64, i64* @CTF_K_UNION, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %127
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 10), align 8
  %144 = sitofp i64 %143 to float
  %145 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %146 = load i64, i64* @CTF_K_UNION, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = sitofp i64 %148 to float
  %150 = fdiv float %144, %149
  %151 = call i32 @fp_stat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), float %150)
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 12), align 8
  %153 = sitofp i64 %152 to float
  %154 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %155 = load i64, i64* @CTF_K_UNION, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = sitofp i64 %157 to float
  %159 = fdiv float %153, %158
  %160 = call i32 @fp_stat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), float %159)
  br label %161

161:                                              ; preds = %142, %127
  %162 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 14), align 8
  %164 = call i32 @long_stat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i64 %163)
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 15), align 8
  %166 = call i32 @long_stat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i64 %165)
  %167 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %168 = load i64, i64* @CTF_K_ENUM, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %161
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 14), align 8
  %174 = sitofp i64 %173 to float
  %175 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 8
  %176 = load i64, i64* @CTF_K_ENUM, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = sitofp i64 %178 to float
  %180 = fdiv float %174, %179
  %181 = call i32 @fp_stat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), float %180)
  br label %182

182:                                              ; preds = %172, %161
  %183 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 16), align 8
  %185 = call i32 @long_stat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i64 %184)
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 17), align 8
  %187 = call i32 @long_stat(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i64 %186)
  %188 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 18), align 8
  %189 = call i32 @long_stat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i64 %188)
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 16), align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %182
  %193 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 17), align 8
  %194 = sitofp i64 %193 to float
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 16), align 8
  %196 = sitofp i64 %195 to float
  %197 = fdiv float %194, %196
  %198 = call i32 @fp_stat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), float %197)
  br label %199

199:                                              ; preds = %192, %182
  %200 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i32, i32* @E_SUCCESS, align 4
  ret i32 %201
}

declare dso_local i32 @print_line(i8*) #1

declare dso_local i32 @long_stat(i8*, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fp_stat(i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
