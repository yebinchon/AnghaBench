; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32, %struct.d_print_mod*, %struct.d_print_template* }
%struct.d_print_mod = type { i32, %struct.d_print_mod*, %struct.d_print_template*, %struct.demangle_component* }
%struct.d_print_template = type { %struct.d_print_template*, %struct.demangle_component* }
%struct.demangle_component = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { %struct.demangle_component* }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_16__ = type { %struct.demangle_component* }
%struct.TYPE_15__ = type { %struct.demangle_component* }
%struct.TYPE_14__ = type { i64 }

@DMGL_JAVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"JArray\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vtable for \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"VTT for \00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"construction vtable for \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"-in-\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"typeinfo for \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"typeinfo name for \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"typeinfo fn for \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"non-virtual thunk to \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"virtual thunk to \00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"covariant return thunk to \00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"java Class for \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"guard variable for \00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"reference temporary for \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"hidden alias for \00", align 1
@DMGL_RET_POSTFIX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c") : (\00", align 1
@D_PRINT_DEFAULT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ull\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@D_PRINT_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*)* @d_print_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_comp(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.d_print_mod*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca [4 x %struct.d_print_mod], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.d_print_template, align 8
  %10 = alloca %struct.demangle_component*, align 8
  %11 = alloca %struct.d_print_mod*, align 8
  %12 = alloca %struct.demangle_component*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.demangle_component*, align 8
  %15 = alloca %struct.d_print_template*, align 8
  %16 = alloca %struct.d_print_mod*, align 8
  %17 = alloca %struct.d_print_mod, align 8
  %18 = alloca %struct.d_print_mod, align 8
  %19 = alloca %struct.d_print_mod*, align 8
  %20 = alloca [4 x %struct.d_print_mod], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.d_print_mod*, align 8
  %23 = alloca %struct.d_print_mod, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %26 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %27 = icmp eq %struct.demangle_component* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %30 = call i32 @d_print_error(%struct.d_print_info* %29)
  br label %1260

31:                                               ; preds = %2
  %32 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %33 = call i64 @d_print_saw_error(%struct.d_print_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %1260

36:                                               ; preds = %31
  %37 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %38 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %1257 [
    i32 163, label %40
    i32 159, label %74
    i32 164, label %74
    i32 146, label %94
    i32 153, label %293
    i32 151, label %363
    i32 174, label %428
    i32 173, label %435
    i32 136, label %444
    i32 135, label %450
    i32 177, label %456
    i32 145, label %467
    i32 143, label %473
    i32 144, label %479
    i32 150, label %485
    i32 139, label %491
    i32 175, label %497
    i32 167, label %503
    i32 170, label %509
    i32 157, label %515
    i32 169, label %521
    i32 154, label %527
    i32 156, label %540
    i32 138, label %540
    i32 178, label %540
    i32 155, label %595
    i32 137, label %595
    i32 176, label %595
    i32 140, label %595
    i32 161, label %595
    i32 158, label %595
    i32 179, label %595
    i32 168, label %595
    i32 181, label %624
    i32 141, label %666
    i32 171, label %670
    i32 184, label %739
    i32 160, label %860
    i32 185, label %893
    i32 152, label %893
    i32 162, label %907
    i32 172, label %942
    i32 180, label %951
    i32 142, label %957
    i32 183, label %985
    i32 182, label %1079
    i32 149, label %1082
    i32 148, label %1127
    i32 147, label %1127
    i32 166, label %1130
    i32 165, label %1130
  ]

40:                                               ; preds = %36
  %41 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %42 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMGL_JAVA, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %49 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %50 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %55 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @d_append_buffer(%struct.d_print_info* %48, i8* %53, i32 %58)
  br label %73

60:                                               ; preds = %40
  %61 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %62 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %63 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %68 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @d_print_java_identifier(%struct.d_print_info* %61, i8* %66, i32 %71)
  br label %73

73:                                               ; preds = %60, %47
  br label %1260

74:                                               ; preds = %36, %36
  %75 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %76 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %77 = call %struct.demangle_component* @d_left(%struct.demangle_component* %76)
  call void @d_print_comp(%struct.d_print_info* %75, %struct.demangle_component* %77)
  %78 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %79 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DMGL_JAVA, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %86 = call i32 @d_append_string(%struct.d_print_info* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %90

87:                                               ; preds = %74
  %88 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %89 = call i32 @d_append_char(%struct.d_print_info* %88, i8 signext 46)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %92 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %93 = call %struct.demangle_component* @d_right(%struct.demangle_component* %92)
  call void @d_print_comp(%struct.d_print_info* %91, %struct.demangle_component* %93)
  br label %1260

94:                                               ; preds = %36
  %95 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %96 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %95, i32 0, i32 1
  %97 = load %struct.d_print_mod*, %struct.d_print_mod** %96, align 8
  store %struct.d_print_mod* %97, %struct.d_print_mod** %5, align 8
  store i32 0, i32* %8, align 4
  %98 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %99 = call %struct.demangle_component* @d_left(%struct.demangle_component* %98)
  store %struct.demangle_component* %99, %struct.demangle_component** %6, align 8
  br label %100

100:                                              ; preds = %156, %94
  %101 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %102 = icmp ne %struct.demangle_component* %101, null
  br i1 %102, label %103, label %159

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = icmp uge i64 %105, 4
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %109 = call i32 @d_print_error(%struct.d_print_info* %108)
  br label %1260

110:                                              ; preds = %103
  %111 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %112 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %111, i32 0, i32 1
  %113 = load %struct.d_print_mod*, %struct.d_print_mod** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %116, i32 0, i32 1
  store %struct.d_print_mod* %113, %struct.d_print_mod** %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %119
  %121 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %122 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %121, i32 0, i32 1
  store %struct.d_print_mod* %120, %struct.d_print_mod** %122, align 8
  %123 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %126, i32 0, i32 3
  store %struct.demangle_component* %123, %struct.demangle_component** %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %130, i32 0, i32 0
  store i32 0, i32* %131, align 16
  %132 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %133 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %132, i32 0, i32 2
  %134 = load %struct.d_print_template*, %struct.d_print_template** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %137, i32 0, i32 2
  store %struct.d_print_template* %134, %struct.d_print_template** %138, align 16
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %8, align 4
  %141 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %142 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 155
  br i1 %144, label %145, label %156

145:                                              ; preds = %110
  %146 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %147 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 137
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %152 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 176
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %159

156:                                              ; preds = %150, %145, %110
  %157 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %158 = call %struct.demangle_component* @d_left(%struct.demangle_component* %157)
  store %struct.demangle_component* %158, %struct.demangle_component** %6, align 8
  br label %100

159:                                              ; preds = %155, %100
  %160 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %161 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 153
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %166 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %165, i32 0, i32 2
  %167 = load %struct.d_print_template*, %struct.d_print_template** %166, align 8
  %168 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %9, i32 0, i32 0
  store %struct.d_print_template* %167, %struct.d_print_template** %168, align 8
  %169 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %170 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %169, i32 0, i32 2
  store %struct.d_print_template* %9, %struct.d_print_template** %170, align 8
  %171 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %172 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %9, i32 0, i32 1
  store %struct.demangle_component* %171, %struct.demangle_component** %172, align 8
  br label %173

173:                                              ; preds = %164, %159
  %174 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %175 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 164
  br i1 %177, label %178, label %252

178:                                              ; preds = %173
  %179 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %180 = call %struct.demangle_component* @d_right(%struct.demangle_component* %179)
  store %struct.demangle_component* %180, %struct.demangle_component** %10, align 8
  br label %181

181:                                              ; preds = %205, %178
  %182 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %183 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 155
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %188 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 137
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %193 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 176
  br label %196

196:                                              ; preds = %191, %186, %181
  %197 = phi i1 [ true, %186 ], [ true, %181 ], [ %195, %191 ]
  br i1 %197, label %198, label %251

198:                                              ; preds = %196
  %199 = load i32, i32* %8, align 4
  %200 = zext i32 %199 to i64
  %201 = icmp uge i64 %200, 4
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %204 = call i32 @d_print_error(%struct.d_print_info* %203)
  br label %1260

205:                                              ; preds = %198
  %206 = load i32, i32* %8, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %207
  %209 = load i32, i32* %8, align 4
  %210 = sub i32 %209, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %211
  %213 = bitcast %struct.d_print_mod* %208 to i8*
  %214 = bitcast %struct.d_print_mod* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %213, i8* align 16 %214, i64 32, i1 false)
  %215 = load i32, i32* %8, align 4
  %216 = sub i32 %215, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %217
  %219 = load i32, i32* %8, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %221, i32 0, i32 1
  store %struct.d_print_mod* %218, %struct.d_print_mod** %222, align 8
  %223 = load i32, i32* %8, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %224
  %226 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %227 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %226, i32 0, i32 1
  store %struct.d_print_mod* %225, %struct.d_print_mod** %227, align 8
  %228 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sub i32 %229, 1
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %231
  %233 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %232, i32 0, i32 3
  store %struct.demangle_component* %228, %struct.demangle_component** %233, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sub i32 %234, 1
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %237, i32 0, i32 0
  store i32 0, i32* %238, align 16
  %239 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %240 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %239, i32 0, i32 2
  %241 = load %struct.d_print_template*, %struct.d_print_template** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sub i32 %242, 1
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %244
  %246 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %245, i32 0, i32 2
  store %struct.d_print_template* %241, %struct.d_print_template** %246, align 16
  %247 = load i32, i32* %8, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %8, align 4
  %249 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %250 = call %struct.demangle_component* @d_left(%struct.demangle_component* %249)
  store %struct.demangle_component* %250, %struct.demangle_component** %10, align 8
  br label %181

251:                                              ; preds = %196
  br label %252

252:                                              ; preds = %251, %173
  %253 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %254 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %255 = call %struct.demangle_component* @d_right(%struct.demangle_component* %254)
  call void @d_print_comp(%struct.d_print_info* %253, %struct.demangle_component* %255)
  %256 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %257 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 153
  br i1 %259, label %260, label %265

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %9, i32 0, i32 0
  %262 = load %struct.d_print_template*, %struct.d_print_template** %261, align 8
  %263 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %264 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %263, i32 0, i32 2
  store %struct.d_print_template* %262, %struct.d_print_template** %264, align 8
  br label %265

265:                                              ; preds = %260, %252
  br label %266

266:                                              ; preds = %288, %265
  %267 = load i32, i32* %8, align 4
  %268 = icmp ugt i32 %267, 0
  br i1 %268, label %269, label %289

269:                                              ; preds = %266
  %270 = load i32, i32* %8, align 4
  %271 = add i32 %270, -1
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %273
  %275 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 16
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %288, label %278

278:                                              ; preds = %269
  %279 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %280 = call i32 @d_append_char(%struct.d_print_info* %279, i8 signext 32)
  %281 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %282 = load i32, i32* %8, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %283
  %285 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %284, i32 0, i32 3
  %286 = load %struct.demangle_component*, %struct.demangle_component** %285, align 8
  %287 = call i32 @d_print_mod(%struct.d_print_info* %281, %struct.demangle_component* %286)
  br label %288

288:                                              ; preds = %278, %269
  br label %266

289:                                              ; preds = %266
  %290 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %291 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %292 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %291, i32 0, i32 1
  store %struct.d_print_mod* %290, %struct.d_print_mod** %292, align 8
  br label %1260

293:                                              ; preds = %36
  %294 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %295 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %294, i32 0, i32 1
  %296 = load %struct.d_print_mod*, %struct.d_print_mod** %295, align 8
  store %struct.d_print_mod* %296, %struct.d_print_mod** %11, align 8
  %297 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %298 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %297, i32 0, i32 1
  store %struct.d_print_mod* null, %struct.d_print_mod** %298, align 8
  %299 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %300 = call %struct.demangle_component* @d_left(%struct.demangle_component* %299)
  store %struct.demangle_component* %300, %struct.demangle_component** %12, align 8
  %301 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %302 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @DMGL_JAVA, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %333

307:                                              ; preds = %293
  %308 = load %struct.demangle_component*, %struct.demangle_component** %12, align 8
  %309 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 163
  br i1 %311, label %312, label %333

312:                                              ; preds = %307
  %313 = load %struct.demangle_component*, %struct.demangle_component** %12, align 8
  %314 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = icmp eq i32 %317, 6
  br i1 %318, label %319, label %333

319:                                              ; preds = %312
  %320 = load %struct.demangle_component*, %struct.demangle_component** %12, align 8
  %321 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @strncmp(i8* %324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %319
  %328 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %329 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %330 = call %struct.demangle_component* @d_right(%struct.demangle_component* %329)
  call void @d_print_comp(%struct.d_print_info* %328, %struct.demangle_component* %330)
  %331 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %332 = call i32 @d_append_string(%struct.d_print_info* %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %359

333:                                              ; preds = %319, %312, %307, %293
  %334 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %335 = load %struct.demangle_component*, %struct.demangle_component** %12, align 8
  call void @d_print_comp(%struct.d_print_info* %334, %struct.demangle_component* %335)
  %336 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %337 = call signext i8 @d_last_char(%struct.d_print_info* %336)
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 60
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %342 = call i32 @d_append_char(%struct.d_print_info* %341, i8 signext 32)
  br label %343

343:                                              ; preds = %340, %333
  %344 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %345 = call i32 @d_append_char(%struct.d_print_info* %344, i8 signext 60)
  %346 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %347 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %348 = call %struct.demangle_component* @d_right(%struct.demangle_component* %347)
  call void @d_print_comp(%struct.d_print_info* %346, %struct.demangle_component* %348)
  %349 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %350 = call signext i8 @d_last_char(%struct.d_print_info* %349)
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 62
  br i1 %352, label %353, label %356

353:                                              ; preds = %343
  %354 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %355 = call i32 @d_append_char(%struct.d_print_info* %354, i8 signext 32)
  br label %356

356:                                              ; preds = %353, %343
  %357 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %358 = call i32 @d_append_char(%struct.d_print_info* %357, i8 signext 62)
  br label %359

359:                                              ; preds = %356, %327
  %360 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %361 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %362 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %361, i32 0, i32 1
  store %struct.d_print_mod* %360, %struct.d_print_mod** %362, align 8
  br label %1260

363:                                              ; preds = %36
  %364 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %365 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %364, i32 0, i32 2
  %366 = load %struct.d_print_template*, %struct.d_print_template** %365, align 8
  %367 = icmp eq %struct.d_print_template* %366, null
  br i1 %367, label %368, label %371

368:                                              ; preds = %363
  %369 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %370 = call i32 @d_print_error(%struct.d_print_info* %369)
  br label %1260

371:                                              ; preds = %363
  %372 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %373 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 7
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %13, align 8
  %377 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %378 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %377, i32 0, i32 2
  %379 = load %struct.d_print_template*, %struct.d_print_template** %378, align 8
  %380 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %379, i32 0, i32 1
  %381 = load %struct.demangle_component*, %struct.demangle_component** %380, align 8
  %382 = call %struct.demangle_component* @d_right(%struct.demangle_component* %381)
  store %struct.demangle_component* %382, %struct.demangle_component** %14, align 8
  br label %383

383:                                              ; preds = %401, %371
  %384 = load %struct.demangle_component*, %struct.demangle_component** %14, align 8
  %385 = icmp ne %struct.demangle_component* %384, null
  br i1 %385, label %386, label %404

386:                                              ; preds = %383
  %387 = load %struct.demangle_component*, %struct.demangle_component** %14, align 8
  %388 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 152
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %393 = call i32 @d_print_error(%struct.d_print_info* %392)
  br label %1260

394:                                              ; preds = %386
  %395 = load i64, i64* %13, align 8
  %396 = icmp sle i64 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %394
  br label %404

398:                                              ; preds = %394
  %399 = load i64, i64* %13, align 8
  %400 = add nsw i64 %399, -1
  store i64 %400, i64* %13, align 8
  br label %401

401:                                              ; preds = %398
  %402 = load %struct.demangle_component*, %struct.demangle_component** %14, align 8
  %403 = call %struct.demangle_component* @d_right(%struct.demangle_component* %402)
  store %struct.demangle_component* %403, %struct.demangle_component** %14, align 8
  br label %383

404:                                              ; preds = %397, %383
  %405 = load i64, i64* %13, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %404
  %408 = load %struct.demangle_component*, %struct.demangle_component** %14, align 8
  %409 = icmp eq %struct.demangle_component* %408, null
  br i1 %409, label %410, label %413

410:                                              ; preds = %407, %404
  %411 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %412 = call i32 @d_print_error(%struct.d_print_info* %411)
  br label %1260

413:                                              ; preds = %407
  %414 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %415 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %414, i32 0, i32 2
  %416 = load %struct.d_print_template*, %struct.d_print_template** %415, align 8
  store %struct.d_print_template* %416, %struct.d_print_template** %15, align 8
  %417 = load %struct.d_print_template*, %struct.d_print_template** %15, align 8
  %418 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %417, i32 0, i32 0
  %419 = load %struct.d_print_template*, %struct.d_print_template** %418, align 8
  %420 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %421 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %420, i32 0, i32 2
  store %struct.d_print_template* %419, %struct.d_print_template** %421, align 8
  %422 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %423 = load %struct.demangle_component*, %struct.demangle_component** %14, align 8
  %424 = call %struct.demangle_component* @d_left(%struct.demangle_component* %423)
  call void @d_print_comp(%struct.d_print_info* %422, %struct.demangle_component* %424)
  %425 = load %struct.d_print_template*, %struct.d_print_template** %15, align 8
  %426 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %427 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %426, i32 0, i32 2
  store %struct.d_print_template* %425, %struct.d_print_template** %427, align 8
  br label %1260

428:                                              ; preds = %36
  %429 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %430 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %431 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 6
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 0
  %434 = load %struct.demangle_component*, %struct.demangle_component** %433, align 8
  call void @d_print_comp(%struct.d_print_info* %429, %struct.demangle_component* %434)
  br label %1260

435:                                              ; preds = %36
  %436 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %437 = call i32 @d_append_char(%struct.d_print_info* %436, i8 signext 126)
  %438 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %439 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %440 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 5
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 0
  %443 = load %struct.demangle_component*, %struct.demangle_component** %442, align 8
  call void @d_print_comp(%struct.d_print_info* %438, %struct.demangle_component* %443)
  br label %1260

444:                                              ; preds = %36
  %445 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %446 = call i32 @d_append_string(%struct.d_print_info* %445, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %447 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %448 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %449 = call %struct.demangle_component* @d_left(%struct.demangle_component* %448)
  call void @d_print_comp(%struct.d_print_info* %447, %struct.demangle_component* %449)
  br label %1260

450:                                              ; preds = %36
  %451 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %452 = call i32 @d_append_string(%struct.d_print_info* %451, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %453 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %454 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %455 = call %struct.demangle_component* @d_left(%struct.demangle_component* %454)
  call void @d_print_comp(%struct.d_print_info* %453, %struct.demangle_component* %455)
  br label %1260

456:                                              ; preds = %36
  %457 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %458 = call i32 @d_append_string(%struct.d_print_info* %457, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %459 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %460 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %461 = call %struct.demangle_component* @d_left(%struct.demangle_component* %460)
  call void @d_print_comp(%struct.d_print_info* %459, %struct.demangle_component* %461)
  %462 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %463 = call i32 @d_append_string(%struct.d_print_info* %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %464 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %465 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %466 = call %struct.demangle_component* @d_right(%struct.demangle_component* %465)
  call void @d_print_comp(%struct.d_print_info* %464, %struct.demangle_component* %466)
  br label %1260

467:                                              ; preds = %36
  %468 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %469 = call i32 @d_append_string(%struct.d_print_info* %468, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %470 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %471 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %472 = call %struct.demangle_component* @d_left(%struct.demangle_component* %471)
  call void @d_print_comp(%struct.d_print_info* %470, %struct.demangle_component* %472)
  br label %1260

473:                                              ; preds = %36
  %474 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %475 = call i32 @d_append_string(%struct.d_print_info* %474, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %476 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %477 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %478 = call %struct.demangle_component* @d_left(%struct.demangle_component* %477)
  call void @d_print_comp(%struct.d_print_info* %476, %struct.demangle_component* %478)
  br label %1260

479:                                              ; preds = %36
  %480 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %481 = call i32 @d_append_string(%struct.d_print_info* %480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %482 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %483 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %484 = call %struct.demangle_component* @d_left(%struct.demangle_component* %483)
  call void @d_print_comp(%struct.d_print_info* %482, %struct.demangle_component* %484)
  br label %1260

485:                                              ; preds = %36
  %486 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %487 = call i32 @d_append_string(%struct.d_print_info* %486, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %488 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %489 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %490 = call %struct.demangle_component* @d_left(%struct.demangle_component* %489)
  call void @d_print_comp(%struct.d_print_info* %488, %struct.demangle_component* %490)
  br label %1260

491:                                              ; preds = %36
  %492 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %493 = call i32 @d_append_string(%struct.d_print_info* %492, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %494 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %495 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %496 = call %struct.demangle_component* @d_left(%struct.demangle_component* %495)
  call void @d_print_comp(%struct.d_print_info* %494, %struct.demangle_component* %496)
  br label %1260

497:                                              ; preds = %36
  %498 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %499 = call i32 @d_append_string(%struct.d_print_info* %498, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %500 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %501 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %502 = call %struct.demangle_component* @d_left(%struct.demangle_component* %501)
  call void @d_print_comp(%struct.d_print_info* %500, %struct.demangle_component* %502)
  br label %1260

503:                                              ; preds = %36
  %504 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %505 = call i32 @d_append_string(%struct.d_print_info* %504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %506 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %507 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %508 = call %struct.demangle_component* @d_left(%struct.demangle_component* %507)
  call void @d_print_comp(%struct.d_print_info* %506, %struct.demangle_component* %508)
  br label %1260

509:                                              ; preds = %36
  %510 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %511 = call i32 @d_append_string(%struct.d_print_info* %510, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %512 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %513 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %514 = call %struct.demangle_component* @d_left(%struct.demangle_component* %513)
  call void @d_print_comp(%struct.d_print_info* %512, %struct.demangle_component* %514)
  br label %1260

515:                                              ; preds = %36
  %516 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %517 = call i32 @d_append_string(%struct.d_print_info* %516, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %518 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %519 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %520 = call %struct.demangle_component* @d_left(%struct.demangle_component* %519)
  call void @d_print_comp(%struct.d_print_info* %518, %struct.demangle_component* %520)
  br label %1260

521:                                              ; preds = %36
  %522 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %523 = call i32 @d_append_string(%struct.d_print_info* %522, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %524 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %525 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %526 = call %struct.demangle_component* @d_left(%struct.demangle_component* %525)
  call void @d_print_comp(%struct.d_print_info* %524, %struct.demangle_component* %526)
  br label %1260

527:                                              ; preds = %36
  %528 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %529 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %530 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 4
  %532 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %531, i32 0, i32 0
  %533 = load i8*, i8** %532, align 8
  %534 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %535 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %535, i32 0, i32 4
  %537 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 8
  %539 = call i32 @d_append_buffer(%struct.d_print_info* %528, i8* %533, i32 %538)
  br label %1260

540:                                              ; preds = %36, %36, %36
  %541 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %542 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %541, i32 0, i32 1
  %543 = load %struct.d_print_mod*, %struct.d_print_mod** %542, align 8
  store %struct.d_print_mod* %543, %struct.d_print_mod** %16, align 8
  br label %544

544:                                              ; preds = %590, %540
  %545 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %546 = icmp ne %struct.d_print_mod* %545, null
  br i1 %546, label %547, label %594

547:                                              ; preds = %544
  %548 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %549 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %589, label %552

552:                                              ; preds = %547
  %553 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %554 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %553, i32 0, i32 3
  %555 = load %struct.demangle_component*, %struct.demangle_component** %554, align 8
  %556 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = icmp ne i32 %557, 156
  br i1 %558, label %559, label %574

559:                                              ; preds = %552
  %560 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %561 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %560, i32 0, i32 3
  %562 = load %struct.demangle_component*, %struct.demangle_component** %561, align 8
  %563 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = icmp ne i32 %564, 138
  br i1 %565, label %566, label %574

566:                                              ; preds = %559
  %567 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %568 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %567, i32 0, i32 3
  %569 = load %struct.demangle_component*, %struct.demangle_component** %568, align 8
  %570 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %571, 178
  br i1 %572, label %573, label %574

573:                                              ; preds = %566
  br label %594

574:                                              ; preds = %566, %559, %552
  %575 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %576 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %575, i32 0, i32 3
  %577 = load %struct.demangle_component*, %struct.demangle_component** %576, align 8
  %578 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %581 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = icmp eq i32 %579, %582
  br i1 %583, label %584, label %588

584:                                              ; preds = %574
  %585 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %586 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %587 = call %struct.demangle_component* @d_left(%struct.demangle_component* %586)
  call void @d_print_comp(%struct.d_print_info* %585, %struct.demangle_component* %587)
  br label %1260

588:                                              ; preds = %574
  br label %589

589:                                              ; preds = %588, %547
  br label %590

590:                                              ; preds = %589
  %591 = load %struct.d_print_mod*, %struct.d_print_mod** %16, align 8
  %592 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %591, i32 0, i32 1
  %593 = load %struct.d_print_mod*, %struct.d_print_mod** %592, align 8
  store %struct.d_print_mod* %593, %struct.d_print_mod** %16, align 8
  br label %544

594:                                              ; preds = %573, %544
  br label %595

595:                                              ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %594
  %596 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %597 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %596, i32 0, i32 1
  %598 = load %struct.d_print_mod*, %struct.d_print_mod** %597, align 8
  %599 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 1
  store %struct.d_print_mod* %598, %struct.d_print_mod** %599, align 8
  %600 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %601 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %600, i32 0, i32 1
  store %struct.d_print_mod* %17, %struct.d_print_mod** %601, align 8
  %602 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %603 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 3
  store %struct.demangle_component* %602, %struct.demangle_component** %603, align 8
  %604 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 0
  store i32 0, i32* %604, align 8
  %605 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %606 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %605, i32 0, i32 2
  %607 = load %struct.d_print_template*, %struct.d_print_template** %606, align 8
  %608 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 2
  store %struct.d_print_template* %607, %struct.d_print_template** %608, align 8
  %609 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %610 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %611 = call %struct.demangle_component* @d_left(%struct.demangle_component* %610)
  call void @d_print_comp(%struct.d_print_info* %609, %struct.demangle_component* %611)
  %612 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %619, label %615

615:                                              ; preds = %595
  %616 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %617 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %618 = call i32 @d_print_mod(%struct.d_print_info* %616, %struct.demangle_component* %617)
  br label %619

619:                                              ; preds = %615, %595
  %620 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 1
  %621 = load %struct.d_print_mod*, %struct.d_print_mod** %620, align 8
  %622 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %623 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %622, i32 0, i32 1
  store %struct.d_print_mod* %621, %struct.d_print_mod** %623, align 8
  br label %1260

624:                                              ; preds = %36
  %625 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %626 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = load i32, i32* @DMGL_JAVA, align 4
  %629 = and i32 %627, %628
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %648

631:                                              ; preds = %624
  %632 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %633 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %634 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %635, i32 0, i32 0
  %637 = load %struct.TYPE_21__*, %struct.TYPE_21__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %637, i32 0, i32 0
  %639 = load i8*, i8** %638, align 8
  %640 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %641 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %642, i32 0, i32 0
  %644 = load %struct.TYPE_21__*, %struct.TYPE_21__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 8
  %647 = call i32 @d_append_buffer(%struct.d_print_info* %632, i8* %639, i32 %646)
  br label %665

648:                                              ; preds = %624
  %649 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %650 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %651 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %652, i32 0, i32 0
  %654 = load %struct.TYPE_21__*, %struct.TYPE_21__** %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %654, i32 0, i32 2
  %656 = load i8*, i8** %655, align 8
  %657 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %658 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %659, i32 0, i32 0
  %661 = load %struct.TYPE_21__*, %struct.TYPE_21__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %661, i32 0, i32 3
  %663 = load i32, i32* %662, align 8
  %664 = call i32 @d_append_buffer(%struct.d_print_info* %649, i8* %656, i32 %663)
  br label %665

665:                                              ; preds = %648, %631
  br label %1260

666:                                              ; preds = %36
  %667 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %668 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %669 = call %struct.demangle_component* @d_left(%struct.demangle_component* %668)
  call void @d_print_comp(%struct.d_print_info* %667, %struct.demangle_component* %669)
  br label %1260

670:                                              ; preds = %36
  %671 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %672 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %671, i32 0, i32 0
  %673 = load i32, i32* %672, align 8
  %674 = load i32, i32* @DMGL_RET_POSTFIX, align 4
  %675 = and i32 %673, %674
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %684

677:                                              ; preds = %670
  %678 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %679 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %680 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %681 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %680, i32 0, i32 1
  %682 = load %struct.d_print_mod*, %struct.d_print_mod** %681, align 8
  %683 = call i32 @d_print_function_type(%struct.d_print_info* %678, %struct.demangle_component* %679, %struct.d_print_mod* %682)
  br label %684

684:                                              ; preds = %677, %670
  %685 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %686 = call %struct.demangle_component* @d_left(%struct.demangle_component* %685)
  %687 = icmp ne %struct.demangle_component* %686, null
  br i1 %687, label %688, label %724

688:                                              ; preds = %684
  %689 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %690 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %689, i32 0, i32 1
  %691 = load %struct.d_print_mod*, %struct.d_print_mod** %690, align 8
  %692 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 1
  store %struct.d_print_mod* %691, %struct.d_print_mod** %692, align 8
  %693 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %694 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %693, i32 0, i32 1
  store %struct.d_print_mod* %18, %struct.d_print_mod** %694, align 8
  %695 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %696 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 3
  store %struct.demangle_component* %695, %struct.demangle_component** %696, align 8
  %697 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 0
  store i32 0, i32* %697, align 8
  %698 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %699 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %698, i32 0, i32 2
  %700 = load %struct.d_print_template*, %struct.d_print_template** %699, align 8
  %701 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 2
  store %struct.d_print_template* %700, %struct.d_print_template** %701, align 8
  %702 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %703 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %704 = call %struct.demangle_component* @d_left(%struct.demangle_component* %703)
  call void @d_print_comp(%struct.d_print_info* %702, %struct.demangle_component* %704)
  %705 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 1
  %706 = load %struct.d_print_mod*, %struct.d_print_mod** %705, align 8
  %707 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %708 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %707, i32 0, i32 1
  store %struct.d_print_mod* %706, %struct.d_print_mod** %708, align 8
  %709 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %713

712:                                              ; preds = %688
  br label %1260

713:                                              ; preds = %688
  %714 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %715 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 8
  %717 = load i32, i32* @DMGL_RET_POSTFIX, align 4
  %718 = and i32 %716, %717
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %723

720:                                              ; preds = %713
  %721 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %722 = call i32 @d_append_char(%struct.d_print_info* %721, i8 signext 32)
  br label %723

723:                                              ; preds = %720, %713
  br label %724

724:                                              ; preds = %723, %684
  %725 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %726 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 8
  %728 = load i32, i32* @DMGL_RET_POSTFIX, align 4
  %729 = and i32 %727, %728
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %738

731:                                              ; preds = %724
  %732 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %733 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %734 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %735 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %734, i32 0, i32 1
  %736 = load %struct.d_print_mod*, %struct.d_print_mod** %735, align 8
  %737 = call i32 @d_print_function_type(%struct.d_print_info* %732, %struct.demangle_component* %733, %struct.d_print_mod* %736)
  br label %738

738:                                              ; preds = %731, %724
  br label %1260

739:                                              ; preds = %36
  %740 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %741 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %740, i32 0, i32 1
  %742 = load %struct.d_print_mod*, %struct.d_print_mod** %741, align 8
  store %struct.d_print_mod* %742, %struct.d_print_mod** %19, align 8
  %743 = load %struct.d_print_mod*, %struct.d_print_mod** %19, align 8
  %744 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 0
  %745 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %744, i32 0, i32 1
  store %struct.d_print_mod* %743, %struct.d_print_mod** %745, align 8
  %746 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 0
  %747 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %748 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %747, i32 0, i32 1
  store %struct.d_print_mod* %746, %struct.d_print_mod** %748, align 8
  %749 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %750 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 0
  %751 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %750, i32 0, i32 3
  store %struct.demangle_component* %749, %struct.demangle_component** %751, align 8
  %752 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 0
  %753 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %752, i32 0, i32 0
  store i32 0, i32* %753, align 16
  %754 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %755 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %754, i32 0, i32 2
  %756 = load %struct.d_print_template*, %struct.d_print_template** %755, align 8
  %757 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 0
  %758 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %757, i32 0, i32 2
  store %struct.d_print_template* %756, %struct.d_print_template** %758, align 16
  store i32 1, i32* %21, align 4
  %759 = load %struct.d_print_mod*, %struct.d_print_mod** %19, align 8
  store %struct.d_print_mod* %759, %struct.d_print_mod** %22, align 8
  br label %760

760:                                              ; preds = %823, %739
  %761 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %762 = icmp ne %struct.d_print_mod* %761, null
  br i1 %762, label %763, label %786

763:                                              ; preds = %760
  %764 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %765 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %764, i32 0, i32 3
  %766 = load %struct.demangle_component*, %struct.demangle_component** %765, align 8
  %767 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 8
  %769 = icmp eq i32 %768, 156
  br i1 %769, label %784, label %770

770:                                              ; preds = %763
  %771 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %772 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %771, i32 0, i32 3
  %773 = load %struct.demangle_component*, %struct.demangle_component** %772, align 8
  %774 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %773, i32 0, i32 0
  %775 = load i32, i32* %774, align 8
  %776 = icmp eq i32 %775, 138
  br i1 %776, label %784, label %777

777:                                              ; preds = %770
  %778 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %779 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %778, i32 0, i32 3
  %780 = load %struct.demangle_component*, %struct.demangle_component** %779, align 8
  %781 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 8
  %783 = icmp eq i32 %782, 178
  br label %784

784:                                              ; preds = %777, %770, %763
  %785 = phi i1 [ true, %770 ], [ true, %763 ], [ %783, %777 ]
  br label %786

786:                                              ; preds = %784, %760
  %787 = phi i1 [ false, %760 ], [ %785, %784 ]
  br i1 %787, label %788, label %827

788:                                              ; preds = %786
  %789 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %790 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %823, label %793

793:                                              ; preds = %788
  %794 = load i32, i32* %21, align 4
  %795 = zext i32 %794 to i64
  %796 = icmp uge i64 %795, 4
  br i1 %796, label %797, label %800

797:                                              ; preds = %793
  %798 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %799 = call i32 @d_print_error(%struct.d_print_info* %798)
  br label %1260

800:                                              ; preds = %793
  %801 = load i32, i32* %21, align 4
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 %802
  %804 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %805 = bitcast %struct.d_print_mod* %803 to i8*
  %806 = bitcast %struct.d_print_mod* %804 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %805, i8* align 8 %806, i64 32, i1 false)
  %807 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %808 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %807, i32 0, i32 1
  %809 = load %struct.d_print_mod*, %struct.d_print_mod** %808, align 8
  %810 = load i32, i32* %21, align 4
  %811 = zext i32 %810 to i64
  %812 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 %811
  %813 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %812, i32 0, i32 1
  store %struct.d_print_mod* %809, %struct.d_print_mod** %813, align 8
  %814 = load i32, i32* %21, align 4
  %815 = zext i32 %814 to i64
  %816 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 %815
  %817 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %818 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %817, i32 0, i32 1
  store %struct.d_print_mod* %816, %struct.d_print_mod** %818, align 8
  %819 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %820 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %819, i32 0, i32 0
  store i32 1, i32* %820, align 8
  %821 = load i32, i32* %21, align 4
  %822 = add i32 %821, 1
  store i32 %822, i32* %21, align 4
  br label %823

823:                                              ; preds = %800, %788
  %824 = load %struct.d_print_mod*, %struct.d_print_mod** %22, align 8
  %825 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %824, i32 0, i32 1
  %826 = load %struct.d_print_mod*, %struct.d_print_mod** %825, align 8
  store %struct.d_print_mod* %826, %struct.d_print_mod** %22, align 8
  br label %760

827:                                              ; preds = %786
  %828 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %829 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %830 = call %struct.demangle_component* @d_right(%struct.demangle_component* %829)
  call void @d_print_comp(%struct.d_print_info* %828, %struct.demangle_component* %830)
  %831 = load %struct.d_print_mod*, %struct.d_print_mod** %19, align 8
  %832 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %833 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %832, i32 0, i32 1
  store %struct.d_print_mod* %831, %struct.d_print_mod** %833, align 8
  %834 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 0
  %835 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 16
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %839

838:                                              ; preds = %827
  br label %1260

839:                                              ; preds = %827
  br label %840

840:                                              ; preds = %843, %839
  %841 = load i32, i32* %21, align 4
  %842 = icmp ugt i32 %841, 1
  br i1 %842, label %843, label %853

843:                                              ; preds = %840
  %844 = load i32, i32* %21, align 4
  %845 = add i32 %844, -1
  store i32 %845, i32* %21, align 4
  %846 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %847 = load i32, i32* %21, align 4
  %848 = zext i32 %847 to i64
  %849 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %20, i64 0, i64 %848
  %850 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %849, i32 0, i32 3
  %851 = load %struct.demangle_component*, %struct.demangle_component** %850, align 8
  %852 = call i32 @d_print_mod(%struct.d_print_info* %846, %struct.demangle_component* %851)
  br label %840

853:                                              ; preds = %840
  %854 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %855 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %856 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %857 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %856, i32 0, i32 1
  %858 = load %struct.d_print_mod*, %struct.d_print_mod** %857, align 8
  %859 = call i32 @d_print_array_type(%struct.d_print_info* %854, %struct.demangle_component* %855, %struct.d_print_mod* %858)
  br label %1260

860:                                              ; preds = %36
  %861 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %862 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %861, i32 0, i32 1
  %863 = load %struct.d_print_mod*, %struct.d_print_mod** %862, align 8
  %864 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 1
  store %struct.d_print_mod* %863, %struct.d_print_mod** %864, align 8
  %865 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %866 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %865, i32 0, i32 1
  store %struct.d_print_mod* %23, %struct.d_print_mod** %866, align 8
  %867 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %868 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 3
  store %struct.demangle_component* %867, %struct.demangle_component** %868, align 8
  %869 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 0
  store i32 0, i32* %869, align 8
  %870 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %871 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %870, i32 0, i32 2
  %872 = load %struct.d_print_template*, %struct.d_print_template** %871, align 8
  %873 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 2
  store %struct.d_print_template* %872, %struct.d_print_template** %873, align 8
  %874 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %875 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %876 = call %struct.demangle_component* @d_right(%struct.demangle_component* %875)
  call void @d_print_comp(%struct.d_print_info* %874, %struct.demangle_component* %876)
  %877 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 0
  %878 = load i32, i32* %877, align 8
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %888, label %880

880:                                              ; preds = %860
  %881 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %882 = call i32 @d_append_char(%struct.d_print_info* %881, i8 signext 32)
  %883 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %884 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %885 = call %struct.demangle_component* @d_left(%struct.demangle_component* %884)
  call void @d_print_comp(%struct.d_print_info* %883, %struct.demangle_component* %885)
  %886 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %887 = call i32 @d_append_string(%struct.d_print_info* %886, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %888

888:                                              ; preds = %880, %860
  %889 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 1
  %890 = load %struct.d_print_mod*, %struct.d_print_mod** %889, align 8
  %891 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %892 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %891, i32 0, i32 1
  store %struct.d_print_mod* %890, %struct.d_print_mod** %892, align 8
  br label %1260

893:                                              ; preds = %36, %36
  %894 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %895 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %896 = call %struct.demangle_component* @d_left(%struct.demangle_component* %895)
  call void @d_print_comp(%struct.d_print_info* %894, %struct.demangle_component* %896)
  %897 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %898 = call %struct.demangle_component* @d_right(%struct.demangle_component* %897)
  %899 = icmp ne %struct.demangle_component* %898, null
  br i1 %899, label %900, label %906

900:                                              ; preds = %893
  %901 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %902 = call i32 @d_append_string(%struct.d_print_info* %901, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %903 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %904 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %905 = call %struct.demangle_component* @d_right(%struct.demangle_component* %904)
  call void @d_print_comp(%struct.d_print_info* %903, %struct.demangle_component* %905)
  br label %906

906:                                              ; preds = %900, %893
  br label %1260

907:                                              ; preds = %36
  %908 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %909 = call i32 @d_append_string(%struct.d_print_info* %908, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %910 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %911 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %911, i32 0, i32 2
  %913 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %912, i32 0, i32 0
  %914 = load %struct.TYPE_19__*, %struct.TYPE_19__** %913, align 8
  %915 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %914, i32 0, i32 0
  %916 = load i8*, i8** %915, align 8
  %917 = getelementptr inbounds i8, i8* %916, i64 0
  %918 = load i8, i8* %917, align 1
  store i8 %918, i8* %24, align 1
  %919 = load i8, i8* %24, align 1
  %920 = call i32 @IS_LOWER(i8 signext %919)
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %925

922:                                              ; preds = %907
  %923 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %924 = call i32 @d_append_char(%struct.d_print_info* %923, i8 signext 32)
  br label %925

925:                                              ; preds = %922, %907
  %926 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %927 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %928 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %927, i32 0, i32 1
  %929 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %928, i32 0, i32 2
  %930 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %929, i32 0, i32 0
  %931 = load %struct.TYPE_19__*, %struct.TYPE_19__** %930, align 8
  %932 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %931, i32 0, i32 0
  %933 = load i8*, i8** %932, align 8
  %934 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %935 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %935, i32 0, i32 2
  %937 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %936, i32 0, i32 0
  %938 = load %struct.TYPE_19__*, %struct.TYPE_19__** %937, align 8
  %939 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %938, i32 0, i32 1
  %940 = load i32, i32* %939, align 8
  %941 = call i32 @d_append_buffer(%struct.d_print_info* %926, i8* %933, i32 %940)
  br label %1260

942:                                              ; preds = %36
  %943 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %944 = call i32 @d_append_string(%struct.d_print_info* %943, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %945 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %946 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %947 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %947, i32 0, i32 3
  %949 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %948, i32 0, i32 0
  %950 = load %struct.demangle_component*, %struct.demangle_component** %949, align 8
  call void @d_print_comp(%struct.d_print_info* %945, %struct.demangle_component* %950)
  br label %1260

951:                                              ; preds = %36
  %952 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %953 = call i32 @d_append_string(%struct.d_print_info* %952, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %954 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %955 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %956 = call i32 @d_print_cast(%struct.d_print_info* %954, %struct.demangle_component* %955)
  br label %1260

957:                                              ; preds = %36
  %958 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %959 = call %struct.demangle_component* @d_left(%struct.demangle_component* %958)
  %960 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %959, i32 0, i32 0
  %961 = load i32, i32* %960, align 8
  %962 = icmp ne i32 %961, 180
  br i1 %962, label %963, label %968

963:                                              ; preds = %957
  %964 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %965 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %966 = call %struct.demangle_component* @d_left(%struct.demangle_component* %965)
  %967 = call i32 @d_print_expr_op(%struct.d_print_info* %964, %struct.demangle_component* %966)
  br label %977

968:                                              ; preds = %957
  %969 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %970 = call i32 @d_append_char(%struct.d_print_info* %969, i8 signext 40)
  %971 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %972 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %973 = call %struct.demangle_component* @d_left(%struct.demangle_component* %972)
  %974 = call i32 @d_print_cast(%struct.d_print_info* %971, %struct.demangle_component* %973)
  %975 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %976 = call i32 @d_append_char(%struct.d_print_info* %975, i8 signext 41)
  br label %977

977:                                              ; preds = %968, %963
  %978 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %979 = call i32 @d_append_char(%struct.d_print_info* %978, i8 signext 40)
  %980 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %981 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %982 = call %struct.demangle_component* @d_right(%struct.demangle_component* %981)
  call void @d_print_comp(%struct.d_print_info* %980, %struct.demangle_component* %982)
  %983 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %984 = call i32 @d_append_char(%struct.d_print_info* %983, i8 signext 41)
  br label %1260

985:                                              ; preds = %36
  %986 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %987 = call %struct.demangle_component* @d_right(%struct.demangle_component* %986)
  %988 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %987, i32 0, i32 0
  %989 = load i32, i32* %988, align 8
  %990 = icmp ne i32 %989, 182
  br i1 %990, label %991, label %994

991:                                              ; preds = %985
  %992 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %993 = call i32 @d_print_error(%struct.d_print_info* %992)
  br label %1260

994:                                              ; preds = %985
  %995 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %996 = call %struct.demangle_component* @d_left(%struct.demangle_component* %995)
  %997 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %996, i32 0, i32 0
  %998 = load i32, i32* %997, align 8
  %999 = icmp eq i32 %998, 162
  br i1 %999, label %1000, label %1026

1000:                                             ; preds = %994
  %1001 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1002 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1001)
  %1003 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1003, i32 0, i32 2
  %1005 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1004, i32 0, i32 0
  %1006 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1005, align 8
  %1007 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1006, i32 0, i32 1
  %1008 = load i32, i32* %1007, align 8
  %1009 = icmp eq i32 %1008, 1
  br i1 %1009, label %1010, label %1026

1010:                                             ; preds = %1000
  %1011 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1012 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1011)
  %1013 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1012, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1013, i32 0, i32 2
  %1015 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1014, i32 0, i32 0
  %1016 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1015, align 8
  %1017 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1016, i32 0, i32 0
  %1018 = load i8*, i8** %1017, align 8
  %1019 = getelementptr inbounds i8, i8* %1018, i64 0
  %1020 = load i8, i8* %1019, align 1
  %1021 = sext i8 %1020 to i32
  %1022 = icmp eq i32 %1021, 62
  br i1 %1022, label %1023, label %1026

1023:                                             ; preds = %1010
  %1024 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1025 = call i32 @d_append_char(%struct.d_print_info* %1024, i8 signext 40)
  br label %1026

1026:                                             ; preds = %1023, %1010, %1000, %994
  %1027 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1028 = call i32 @d_append_char(%struct.d_print_info* %1027, i8 signext 40)
  %1029 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1030 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1031 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1030)
  %1032 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1031)
  call void @d_print_comp(%struct.d_print_info* %1029, %struct.demangle_component* %1032)
  %1033 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1034 = call i32 @d_append_string(%struct.d_print_info* %1033, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %1035 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1036 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1037 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1036)
  %1038 = call i32 @d_print_expr_op(%struct.d_print_info* %1035, %struct.demangle_component* %1037)
  %1039 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1040 = call i32 @d_append_string(%struct.d_print_info* %1039, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %1041 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1042 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1043 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1042)
  %1044 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1043)
  call void @d_print_comp(%struct.d_print_info* %1041, %struct.demangle_component* %1044)
  %1045 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1046 = call i32 @d_append_char(%struct.d_print_info* %1045, i8 signext 41)
  %1047 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1048 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1047)
  %1049 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1048, i32 0, i32 0
  %1050 = load i32, i32* %1049, align 8
  %1051 = icmp eq i32 %1050, 162
  br i1 %1051, label %1052, label %1078

1052:                                             ; preds = %1026
  %1053 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1054 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1053)
  %1055 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1054, i32 0, i32 1
  %1056 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1055, i32 0, i32 2
  %1057 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1056, i32 0, i32 0
  %1058 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1057, align 8
  %1059 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1058, i32 0, i32 1
  %1060 = load i32, i32* %1059, align 8
  %1061 = icmp eq i32 %1060, 1
  br i1 %1061, label %1062, label %1078

1062:                                             ; preds = %1052
  %1063 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1064 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1063)
  %1065 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1065, i32 0, i32 2
  %1067 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1066, i32 0, i32 0
  %1068 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1067, align 8
  %1069 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1068, i32 0, i32 0
  %1070 = load i8*, i8** %1069, align 8
  %1071 = getelementptr inbounds i8, i8* %1070, i64 0
  %1072 = load i8, i8* %1071, align 1
  %1073 = sext i8 %1072 to i32
  %1074 = icmp eq i32 %1073, 62
  br i1 %1074, label %1075, label %1078

1075:                                             ; preds = %1062
  %1076 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1077 = call i32 @d_append_char(%struct.d_print_info* %1076, i8 signext 41)
  br label %1078

1078:                                             ; preds = %1075, %1062, %1052, %1026
  br label %1260

1079:                                             ; preds = %36
  %1080 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1081 = call i32 @d_print_error(%struct.d_print_info* %1080)
  br label %1260

1082:                                             ; preds = %36
  %1083 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1084 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1083)
  %1085 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1084, i32 0, i32 0
  %1086 = load i32, i32* %1085, align 8
  %1087 = icmp ne i32 %1086, 148
  br i1 %1087, label %1095, label %1088

1088:                                             ; preds = %1082
  %1089 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1090 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1089)
  %1091 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1090)
  %1092 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1091, i32 0, i32 0
  %1093 = load i32, i32* %1092, align 8
  %1094 = icmp ne i32 %1093, 147
  br i1 %1094, label %1095, label %1098

1095:                                             ; preds = %1088, %1082
  %1096 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1097 = call i32 @d_print_error(%struct.d_print_info* %1096)
  br label %1260

1098:                                             ; preds = %1088
  %1099 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1100 = call i32 @d_append_char(%struct.d_print_info* %1099, i8 signext 40)
  %1101 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1102 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1103 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1102)
  %1104 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1103)
  call void @d_print_comp(%struct.d_print_info* %1101, %struct.demangle_component* %1104)
  %1105 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1106 = call i32 @d_append_string(%struct.d_print_info* %1105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %1107 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1108 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1109 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1108)
  %1110 = call i32 @d_print_expr_op(%struct.d_print_info* %1107, %struct.demangle_component* %1109)
  %1111 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1112 = call i32 @d_append_string(%struct.d_print_info* %1111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %1113 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1114 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1115 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1114)
  %1116 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1115)
  %1117 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1116)
  call void @d_print_comp(%struct.d_print_info* %1113, %struct.demangle_component* %1117)
  %1118 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1119 = call i32 @d_append_string(%struct.d_print_info* %1118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %1120 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1121 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1122 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1121)
  %1123 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1122)
  %1124 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1123)
  call void @d_print_comp(%struct.d_print_info* %1120, %struct.demangle_component* %1124)
  %1125 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1126 = call i32 @d_append_char(%struct.d_print_info* %1125, i8 signext 41)
  br label %1260

1127:                                             ; preds = %36, %36
  %1128 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1129 = call i32 @d_print_error(%struct.d_print_info* %1128)
  br label %1260

1130:                                             ; preds = %36, %36
  %1131 = load i32, i32* @D_PRINT_DEFAULT, align 4
  store i32 %1131, i32* %25, align 4
  %1132 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1133 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1132)
  %1134 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1133, i32 0, i32 0
  %1135 = load i32, i32* %1134, align 8
  %1136 = icmp eq i32 %1135, 181
  br i1 %1136, label %1137, label %1224

1137:                                             ; preds = %1130
  %1138 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1139 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1138)
  %1140 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1141, i32 0, i32 0
  %1143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1142, align 8
  %1144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1143, i32 0, i32 4
  %1145 = load i32, i32* %1144, align 4
  store i32 %1145, i32* %25, align 4
  %1146 = load i32, i32* %25, align 4
  switch i32 %1146, label %1222 [
    i32 133, label %1147
    i32 130, label %1147
    i32 132, label %1147
    i32 129, label %1147
    i32 131, label %1147
    i32 128, label %1147
    i32 134, label %1184
  ]

1147:                                             ; preds = %1137, %1137, %1137, %1137, %1137, %1137
  %1148 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1149 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1148)
  %1150 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1149, i32 0, i32 0
  %1151 = load i32, i32* %1150, align 8
  %1152 = icmp eq i32 %1151, 163
  br i1 %1152, label %1153, label %1183

1153:                                             ; preds = %1147
  %1154 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1155 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1154, i32 0, i32 0
  %1156 = load i32, i32* %1155, align 8
  %1157 = icmp eq i32 %1156, 165
  br i1 %1157, label %1158, label %1161

1158:                                             ; preds = %1153
  %1159 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1160 = call i32 @d_append_char(%struct.d_print_info* %1159, i8 signext 45)
  br label %1161

1161:                                             ; preds = %1158, %1153
  %1162 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1163 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1164 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1163)
  call void @d_print_comp(%struct.d_print_info* %1162, %struct.demangle_component* %1164)
  %1165 = load i32, i32* %25, align 4
  switch i32 %1165, label %1166 [
    i32 130, label %1167
    i32 132, label %1170
    i32 129, label %1173
    i32 131, label %1176
    i32 128, label %1179
  ]

1166:                                             ; preds = %1161
  br label %1182

1167:                                             ; preds = %1161
  %1168 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1169 = call i32 @d_append_char(%struct.d_print_info* %1168, i8 signext 117)
  br label %1182

1170:                                             ; preds = %1161
  %1171 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1172 = call i32 @d_append_char(%struct.d_print_info* %1171, i8 signext 108)
  br label %1182

1173:                                             ; preds = %1161
  %1174 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1175 = call i32 @d_append_string(%struct.d_print_info* %1174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  br label %1182

1176:                                             ; preds = %1161
  %1177 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1178 = call i32 @d_append_string(%struct.d_print_info* %1177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %1182

1179:                                             ; preds = %1161
  %1180 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1181 = call i32 @d_append_string(%struct.d_print_info* %1180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %1182

1182:                                             ; preds = %1179, %1176, %1173, %1170, %1167, %1166
  br label %1260

1183:                                             ; preds = %1147
  br label %1223

1184:                                             ; preds = %1137
  %1185 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1186 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1185)
  %1187 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1186, i32 0, i32 0
  %1188 = load i32, i32* %1187, align 8
  %1189 = icmp eq i32 %1188, 163
  br i1 %1189, label %1190, label %1221

1190:                                             ; preds = %1184
  %1191 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1192 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1191)
  %1193 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1192, i32 0, i32 1
  %1194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1194, i32 0, i32 1
  %1196 = load i32, i32* %1195, align 8
  %1197 = icmp eq i32 %1196, 1
  br i1 %1197, label %1198, label %1221

1198:                                             ; preds = %1190
  %1199 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1200 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1199, i32 0, i32 0
  %1201 = load i32, i32* %1200, align 8
  %1202 = icmp eq i32 %1201, 166
  br i1 %1202, label %1203, label %1221

1203:                                             ; preds = %1198
  %1204 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1205 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1204)
  %1206 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1206, i32 0, i32 0
  %1208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1207, i32 0, i32 0
  %1209 = load i8*, i8** %1208, align 8
  %1210 = getelementptr inbounds i8, i8* %1209, i64 0
  %1211 = load i8, i8* %1210, align 1
  %1212 = sext i8 %1211 to i32
  switch i32 %1212, label %1219 [
    i32 48, label %1213
    i32 49, label %1216
  ]

1213:                                             ; preds = %1203
  %1214 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1215 = call i32 @d_append_string(%struct.d_print_info* %1214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %1260

1216:                                             ; preds = %1203
  %1217 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1218 = call i32 @d_append_string(%struct.d_print_info* %1217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  br label %1260

1219:                                             ; preds = %1203
  br label %1220

1220:                                             ; preds = %1219
  br label %1221

1221:                                             ; preds = %1220, %1198, %1190, %1184
  br label %1223

1222:                                             ; preds = %1137
  br label %1223

1223:                                             ; preds = %1222, %1221, %1183
  br label %1224

1224:                                             ; preds = %1223, %1130
  %1225 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1226 = call i32 @d_append_char(%struct.d_print_info* %1225, i8 signext 40)
  %1227 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1228 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1229 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1228)
  call void @d_print_comp(%struct.d_print_info* %1227, %struct.demangle_component* %1229)
  %1230 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1231 = call i32 @d_append_char(%struct.d_print_info* %1230, i8 signext 41)
  %1232 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1233 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1232, i32 0, i32 0
  %1234 = load i32, i32* %1233, align 8
  %1235 = icmp eq i32 %1234, 165
  br i1 %1235, label %1236, label %1239

1236:                                             ; preds = %1224
  %1237 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1238 = call i32 @d_append_char(%struct.d_print_info* %1237, i8 signext 45)
  br label %1239

1239:                                             ; preds = %1236, %1224
  %1240 = load i32, i32* %25, align 4
  %1241 = load i32, i32* @D_PRINT_FLOAT, align 4
  %1242 = icmp eq i32 %1240, %1241
  br i1 %1242, label %1243, label %1246

1243:                                             ; preds = %1239
  %1244 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1245 = call i32 @d_append_char(%struct.d_print_info* %1244, i8 signext 91)
  br label %1246

1246:                                             ; preds = %1243, %1239
  %1247 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1248 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1249 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1248)
  call void @d_print_comp(%struct.d_print_info* %1247, %struct.demangle_component* %1249)
  %1250 = load i32, i32* %25, align 4
  %1251 = load i32, i32* @D_PRINT_FLOAT, align 4
  %1252 = icmp eq i32 %1250, %1251
  br i1 %1252, label %1253, label %1256

1253:                                             ; preds = %1246
  %1254 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1255 = call i32 @d_append_char(%struct.d_print_info* %1254, i8 signext 93)
  br label %1256

1256:                                             ; preds = %1253, %1246
  br label %1260

1257:                                             ; preds = %36
  %1258 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1259 = call i32 @d_print_error(%struct.d_print_info* %1258)
  br label %1260

1260:                                             ; preds = %1257, %1256, %1216, %1213, %1182, %1127, %1098, %1095, %1079, %1078, %991, %977, %951, %942, %925, %906, %888, %853, %838, %797, %738, %712, %666, %665, %619, %584, %527, %521, %515, %509, %503, %497, %491, %485, %479, %473, %467, %456, %450, %444, %435, %428, %413, %410, %391, %368, %359, %289, %202, %107, %90, %73, %35, %28
  ret void
}

declare dso_local i32 @d_print_error(%struct.d_print_info*) #1

declare dso_local i64 @d_print_saw_error(%struct.d_print_info*) #1

declare dso_local i32 @d_append_buffer(%struct.d_print_info*, i8*, i32) #1

declare dso_local i32 @d_print_java_identifier(%struct.d_print_info*, i8*, i32) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_append_string(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d_print_mod(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #1

declare dso_local i32 @d_print_function_type(%struct.d_print_info*, %struct.demangle_component*, %struct.d_print_mod*) #1

declare dso_local i32 @d_print_array_type(%struct.d_print_info*, %struct.demangle_component*, %struct.d_print_mod*) #1

declare dso_local i32 @IS_LOWER(i8 signext) #1

declare dso_local i32 @d_print_cast(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local i32 @d_print_expr_op(%struct.d_print_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
