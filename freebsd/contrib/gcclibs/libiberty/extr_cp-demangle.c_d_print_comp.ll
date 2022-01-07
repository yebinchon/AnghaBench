; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_comp.c"
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
@.str.1 = private unnamed_addr constant [12 x i8] c"vtable for \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"VTT for \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"construction vtable for \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-in-\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"typeinfo for \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"typeinfo name for \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"typeinfo fn for \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"non-virtual thunk to \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"virtual thunk to \00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"covariant return thunk to \00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"java Class for \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"guard variable for \00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"reference temporary for \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"hidden alias for \00", align 1
@DMGL_RET_POSTFIX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c") : (\00", align 1
@D_PRINT_DEFAULT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ull\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"true\00", align 1
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
  %12 = alloca i64, align 8
  %13 = alloca %struct.demangle_component*, align 8
  %14 = alloca %struct.d_print_template*, align 8
  %15 = alloca %struct.d_print_mod*, align 8
  %16 = alloca %struct.d_print_mod, align 8
  %17 = alloca %struct.d_print_mod, align 8
  %18 = alloca %struct.d_print_mod*, align 8
  %19 = alloca [4 x %struct.d_print_mod], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.d_print_mod*, align 8
  %22 = alloca %struct.d_print_mod, align 8
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %25 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %26 = icmp eq %struct.demangle_component* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %29 = call i32 @d_print_error(%struct.d_print_info* %28)
  br label %1224

30:                                               ; preds = %2
  %31 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %32 = call i64 @d_print_saw_error(%struct.d_print_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %1224

35:                                               ; preds = %30
  %36 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %37 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %1221 [
    i32 163, label %39
    i32 159, label %73
    i32 164, label %73
    i32 146, label %93
    i32 153, label %292
    i32 151, label %327
    i32 174, label %392
    i32 173, label %399
    i32 136, label %408
    i32 135, label %414
    i32 177, label %420
    i32 145, label %431
    i32 143, label %437
    i32 144, label %443
    i32 150, label %449
    i32 139, label %455
    i32 175, label %461
    i32 167, label %467
    i32 170, label %473
    i32 157, label %479
    i32 169, label %485
    i32 154, label %491
    i32 156, label %504
    i32 138, label %504
    i32 178, label %504
    i32 155, label %559
    i32 137, label %559
    i32 176, label %559
    i32 140, label %559
    i32 161, label %559
    i32 158, label %559
    i32 179, label %559
    i32 168, label %559
    i32 181, label %588
    i32 141, label %630
    i32 171, label %634
    i32 184, label %703
    i32 160, label %824
    i32 185, label %857
    i32 152, label %857
    i32 162, label %871
    i32 172, label %906
    i32 180, label %915
    i32 142, label %921
    i32 183, label %949
    i32 182, label %1043
    i32 149, label %1046
    i32 148, label %1091
    i32 147, label %1091
    i32 166, label %1094
    i32 165, label %1094
  ]

39:                                               ; preds = %35
  %40 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %41 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMGL_JAVA, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %48 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %49 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %54 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @d_append_buffer(%struct.d_print_info* %47, i8* %52, i32 %57)
  br label %72

59:                                               ; preds = %39
  %60 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %61 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %62 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %67 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @d_print_java_identifier(%struct.d_print_info* %60, i8* %65, i32 %70)
  br label %72

72:                                               ; preds = %59, %46
  br label %1224

73:                                               ; preds = %35, %35
  %74 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %75 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %76 = call %struct.demangle_component* @d_left(%struct.demangle_component* %75)
  call void @d_print_comp(%struct.d_print_info* %74, %struct.demangle_component* %76)
  %77 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %78 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DMGL_JAVA, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %85 = call i32 @d_append_string_constant(%struct.d_print_info* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %89

86:                                               ; preds = %73
  %87 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %88 = call i32 @d_append_char(%struct.d_print_info* %87, i8 signext 46)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %91 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %92 = call %struct.demangle_component* @d_right(%struct.demangle_component* %91)
  call void @d_print_comp(%struct.d_print_info* %90, %struct.demangle_component* %92)
  br label %1224

93:                                               ; preds = %35
  %94 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %95 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %94, i32 0, i32 1
  %96 = load %struct.d_print_mod*, %struct.d_print_mod** %95, align 8
  store %struct.d_print_mod* %96, %struct.d_print_mod** %5, align 8
  store i32 0, i32* %8, align 4
  %97 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %98 = call %struct.demangle_component* @d_left(%struct.demangle_component* %97)
  store %struct.demangle_component* %98, %struct.demangle_component** %6, align 8
  br label %99

99:                                               ; preds = %155, %93
  %100 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %101 = icmp ne %struct.demangle_component* %100, null
  br i1 %101, label %102, label %158

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = icmp uge i64 %104, 4
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %108 = call i32 @d_print_error(%struct.d_print_info* %107)
  br label %1224

109:                                              ; preds = %102
  %110 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %111 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %110, i32 0, i32 1
  %112 = load %struct.d_print_mod*, %struct.d_print_mod** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %115, i32 0, i32 1
  store %struct.d_print_mod* %112, %struct.d_print_mod** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %118
  %120 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %121 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %120, i32 0, i32 1
  store %struct.d_print_mod* %119, %struct.d_print_mod** %121, align 8
  %122 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %125, i32 0, i32 3
  store %struct.demangle_component* %122, %struct.demangle_component** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %129, i32 0, i32 0
  store i32 0, i32* %130, align 16
  %131 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %132 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %131, i32 0, i32 2
  %133 = load %struct.d_print_template*, %struct.d_print_template** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %136, i32 0, i32 2
  store %struct.d_print_template* %133, %struct.d_print_template** %137, align 16
  %138 = load i32, i32* %8, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %141 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 155
  br i1 %143, label %144, label %155

144:                                              ; preds = %109
  %145 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %146 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 137
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %151 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 176
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %158

155:                                              ; preds = %149, %144, %109
  %156 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %157 = call %struct.demangle_component* @d_left(%struct.demangle_component* %156)
  store %struct.demangle_component* %157, %struct.demangle_component** %6, align 8
  br label %99

158:                                              ; preds = %154, %99
  %159 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %160 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 153
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %165 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %164, i32 0, i32 2
  %166 = load %struct.d_print_template*, %struct.d_print_template** %165, align 8
  %167 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %9, i32 0, i32 0
  store %struct.d_print_template* %166, %struct.d_print_template** %167, align 8
  %168 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %169 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %168, i32 0, i32 2
  store %struct.d_print_template* %9, %struct.d_print_template** %169, align 8
  %170 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %171 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %9, i32 0, i32 1
  store %struct.demangle_component* %170, %struct.demangle_component** %171, align 8
  br label %172

172:                                              ; preds = %163, %158
  %173 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %174 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 164
  br i1 %176, label %177, label %251

177:                                              ; preds = %172
  %178 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %179 = call %struct.demangle_component* @d_right(%struct.demangle_component* %178)
  store %struct.demangle_component* %179, %struct.demangle_component** %10, align 8
  br label %180

180:                                              ; preds = %204, %177
  %181 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %182 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 155
  br i1 %184, label %195, label %185

185:                                              ; preds = %180
  %186 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %187 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 137
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %192 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 176
  br label %195

195:                                              ; preds = %190, %185, %180
  %196 = phi i1 [ true, %185 ], [ true, %180 ], [ %194, %190 ]
  br i1 %196, label %197, label %250

197:                                              ; preds = %195
  %198 = load i32, i32* %8, align 4
  %199 = zext i32 %198 to i64
  %200 = icmp uge i64 %199, 4
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %203 = call i32 @d_print_error(%struct.d_print_info* %202)
  br label %1224

204:                                              ; preds = %197
  %205 = load i32, i32* %8, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %206
  %208 = load i32, i32* %8, align 4
  %209 = sub i32 %208, 1
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %210
  %212 = bitcast %struct.d_print_mod* %207 to i8*
  %213 = bitcast %struct.d_print_mod* %211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %212, i8* align 16 %213, i64 32, i1 false)
  %214 = load i32, i32* %8, align 4
  %215 = sub i32 %214, 1
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %216
  %218 = load i32, i32* %8, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %220, i32 0, i32 1
  store %struct.d_print_mod* %217, %struct.d_print_mod** %221, align 8
  %222 = load i32, i32* %8, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %223
  %225 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %226 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %225, i32 0, i32 1
  store %struct.d_print_mod* %224, %struct.d_print_mod** %226, align 8
  %227 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sub i32 %228, 1
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %230
  %232 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %231, i32 0, i32 3
  store %struct.demangle_component* %227, %struct.demangle_component** %232, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sub i32 %233, 1
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %235
  %237 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %236, i32 0, i32 0
  store i32 0, i32* %237, align 16
  %238 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %239 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %238, i32 0, i32 2
  %240 = load %struct.d_print_template*, %struct.d_print_template** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sub i32 %241, 1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %244, i32 0, i32 2
  store %struct.d_print_template* %240, %struct.d_print_template** %245, align 16
  %246 = load i32, i32* %8, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %8, align 4
  %248 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %249 = call %struct.demangle_component* @d_left(%struct.demangle_component* %248)
  store %struct.demangle_component* %249, %struct.demangle_component** %10, align 8
  br label %180

250:                                              ; preds = %195
  br label %251

251:                                              ; preds = %250, %172
  %252 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %253 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %254 = call %struct.demangle_component* @d_right(%struct.demangle_component* %253)
  call void @d_print_comp(%struct.d_print_info* %252, %struct.demangle_component* %254)
  %255 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %256 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 153
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %9, i32 0, i32 0
  %261 = load %struct.d_print_template*, %struct.d_print_template** %260, align 8
  %262 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %263 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %262, i32 0, i32 2
  store %struct.d_print_template* %261, %struct.d_print_template** %263, align 8
  br label %264

264:                                              ; preds = %259, %251
  br label %265

265:                                              ; preds = %287, %264
  %266 = load i32, i32* %8, align 4
  %267 = icmp ugt i32 %266, 0
  br i1 %267, label %268, label %288

268:                                              ; preds = %265
  %269 = load i32, i32* %8, align 4
  %270 = add i32 %269, -1
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %272
  %274 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 16
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %287, label %277

277:                                              ; preds = %268
  %278 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %279 = call i32 @d_append_char(%struct.d_print_info* %278, i8 signext 32)
  %280 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %281 = load i32, i32* %8, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %7, i64 0, i64 %282
  %284 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %283, i32 0, i32 3
  %285 = load %struct.demangle_component*, %struct.demangle_component** %284, align 8
  %286 = call i32 @d_print_mod(%struct.d_print_info* %280, %struct.demangle_component* %285)
  br label %287

287:                                              ; preds = %277, %268
  br label %265

288:                                              ; preds = %265
  %289 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %290 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %291 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %290, i32 0, i32 1
  store %struct.d_print_mod* %289, %struct.d_print_mod** %291, align 8
  br label %1224

292:                                              ; preds = %35
  %293 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %294 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %293, i32 0, i32 1
  %295 = load %struct.d_print_mod*, %struct.d_print_mod** %294, align 8
  store %struct.d_print_mod* %295, %struct.d_print_mod** %11, align 8
  %296 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %297 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %296, i32 0, i32 1
  store %struct.d_print_mod* null, %struct.d_print_mod** %297, align 8
  %298 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %299 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %300 = call %struct.demangle_component* @d_left(%struct.demangle_component* %299)
  call void @d_print_comp(%struct.d_print_info* %298, %struct.demangle_component* %300)
  %301 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %302 = call signext i8 @d_last_char(%struct.d_print_info* %301)
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 60
  br i1 %304, label %305, label %308

305:                                              ; preds = %292
  %306 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %307 = call i32 @d_append_char(%struct.d_print_info* %306, i8 signext 32)
  br label %308

308:                                              ; preds = %305, %292
  %309 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %310 = call i32 @d_append_char(%struct.d_print_info* %309, i8 signext 60)
  %311 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %312 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %313 = call %struct.demangle_component* @d_right(%struct.demangle_component* %312)
  call void @d_print_comp(%struct.d_print_info* %311, %struct.demangle_component* %313)
  %314 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %315 = call signext i8 @d_last_char(%struct.d_print_info* %314)
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 62
  br i1 %317, label %318, label %321

318:                                              ; preds = %308
  %319 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %320 = call i32 @d_append_char(%struct.d_print_info* %319, i8 signext 32)
  br label %321

321:                                              ; preds = %318, %308
  %322 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %323 = call i32 @d_append_char(%struct.d_print_info* %322, i8 signext 62)
  %324 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %325 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %326 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %325, i32 0, i32 1
  store %struct.d_print_mod* %324, %struct.d_print_mod** %326, align 8
  br label %1224

327:                                              ; preds = %35
  %328 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %329 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %328, i32 0, i32 2
  %330 = load %struct.d_print_template*, %struct.d_print_template** %329, align 8
  %331 = icmp eq %struct.d_print_template* %330, null
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %334 = call i32 @d_print_error(%struct.d_print_info* %333)
  br label %1224

335:                                              ; preds = %327
  %336 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %337 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %12, align 8
  %341 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %342 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %341, i32 0, i32 2
  %343 = load %struct.d_print_template*, %struct.d_print_template** %342, align 8
  %344 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %343, i32 0, i32 1
  %345 = load %struct.demangle_component*, %struct.demangle_component** %344, align 8
  %346 = call %struct.demangle_component* @d_right(%struct.demangle_component* %345)
  store %struct.demangle_component* %346, %struct.demangle_component** %13, align 8
  br label %347

347:                                              ; preds = %365, %335
  %348 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %349 = icmp ne %struct.demangle_component* %348, null
  br i1 %349, label %350, label %368

350:                                              ; preds = %347
  %351 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %352 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 152
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %357 = call i32 @d_print_error(%struct.d_print_info* %356)
  br label %1224

358:                                              ; preds = %350
  %359 = load i64, i64* %12, align 8
  %360 = icmp sle i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %358
  br label %368

362:                                              ; preds = %358
  %363 = load i64, i64* %12, align 8
  %364 = add nsw i64 %363, -1
  store i64 %364, i64* %12, align 8
  br label %365

365:                                              ; preds = %362
  %366 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %367 = call %struct.demangle_component* @d_right(%struct.demangle_component* %366)
  store %struct.demangle_component* %367, %struct.demangle_component** %13, align 8
  br label %347

368:                                              ; preds = %361, %347
  %369 = load i64, i64* %12, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %368
  %372 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %373 = icmp eq %struct.demangle_component* %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %371, %368
  %375 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %376 = call i32 @d_print_error(%struct.d_print_info* %375)
  br label %1224

377:                                              ; preds = %371
  %378 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %379 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %378, i32 0, i32 2
  %380 = load %struct.d_print_template*, %struct.d_print_template** %379, align 8
  store %struct.d_print_template* %380, %struct.d_print_template** %14, align 8
  %381 = load %struct.d_print_template*, %struct.d_print_template** %14, align 8
  %382 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %381, i32 0, i32 0
  %383 = load %struct.d_print_template*, %struct.d_print_template** %382, align 8
  %384 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %385 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %384, i32 0, i32 2
  store %struct.d_print_template* %383, %struct.d_print_template** %385, align 8
  %386 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %387 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %388 = call %struct.demangle_component* @d_left(%struct.demangle_component* %387)
  call void @d_print_comp(%struct.d_print_info* %386, %struct.demangle_component* %388)
  %389 = load %struct.d_print_template*, %struct.d_print_template** %14, align 8
  %390 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %391 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %390, i32 0, i32 2
  store %struct.d_print_template* %389, %struct.d_print_template** %391, align 8
  br label %1224

392:                                              ; preds = %35
  %393 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %394 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %395 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 6
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load %struct.demangle_component*, %struct.demangle_component** %397, align 8
  call void @d_print_comp(%struct.d_print_info* %393, %struct.demangle_component* %398)
  br label %1224

399:                                              ; preds = %35
  %400 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %401 = call i32 @d_append_char(%struct.d_print_info* %400, i8 signext 126)
  %402 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %403 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %404 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 0
  %407 = load %struct.demangle_component*, %struct.demangle_component** %406, align 8
  call void @d_print_comp(%struct.d_print_info* %402, %struct.demangle_component* %407)
  br label %1224

408:                                              ; preds = %35
  %409 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %410 = call i32 @d_append_string_constant(%struct.d_print_info* %409, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %411 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %412 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %413 = call %struct.demangle_component* @d_left(%struct.demangle_component* %412)
  call void @d_print_comp(%struct.d_print_info* %411, %struct.demangle_component* %413)
  br label %1224

414:                                              ; preds = %35
  %415 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %416 = call i32 @d_append_string_constant(%struct.d_print_info* %415, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %417 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %418 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %419 = call %struct.demangle_component* @d_left(%struct.demangle_component* %418)
  call void @d_print_comp(%struct.d_print_info* %417, %struct.demangle_component* %419)
  br label %1224

420:                                              ; preds = %35
  %421 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %422 = call i32 @d_append_string_constant(%struct.d_print_info* %421, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %423 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %424 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %425 = call %struct.demangle_component* @d_left(%struct.demangle_component* %424)
  call void @d_print_comp(%struct.d_print_info* %423, %struct.demangle_component* %425)
  %426 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %427 = call i32 @d_append_string_constant(%struct.d_print_info* %426, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %428 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %429 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %430 = call %struct.demangle_component* @d_right(%struct.demangle_component* %429)
  call void @d_print_comp(%struct.d_print_info* %428, %struct.demangle_component* %430)
  br label %1224

431:                                              ; preds = %35
  %432 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %433 = call i32 @d_append_string_constant(%struct.d_print_info* %432, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %434 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %435 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %436 = call %struct.demangle_component* @d_left(%struct.demangle_component* %435)
  call void @d_print_comp(%struct.d_print_info* %434, %struct.demangle_component* %436)
  br label %1224

437:                                              ; preds = %35
  %438 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %439 = call i32 @d_append_string_constant(%struct.d_print_info* %438, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %440 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %441 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %442 = call %struct.demangle_component* @d_left(%struct.demangle_component* %441)
  call void @d_print_comp(%struct.d_print_info* %440, %struct.demangle_component* %442)
  br label %1224

443:                                              ; preds = %35
  %444 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %445 = call i32 @d_append_string_constant(%struct.d_print_info* %444, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %446 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %447 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %448 = call %struct.demangle_component* @d_left(%struct.demangle_component* %447)
  call void @d_print_comp(%struct.d_print_info* %446, %struct.demangle_component* %448)
  br label %1224

449:                                              ; preds = %35
  %450 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %451 = call i32 @d_append_string_constant(%struct.d_print_info* %450, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %452 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %453 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %454 = call %struct.demangle_component* @d_left(%struct.demangle_component* %453)
  call void @d_print_comp(%struct.d_print_info* %452, %struct.demangle_component* %454)
  br label %1224

455:                                              ; preds = %35
  %456 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %457 = call i32 @d_append_string_constant(%struct.d_print_info* %456, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %458 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %459 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %460 = call %struct.demangle_component* @d_left(%struct.demangle_component* %459)
  call void @d_print_comp(%struct.d_print_info* %458, %struct.demangle_component* %460)
  br label %1224

461:                                              ; preds = %35
  %462 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %463 = call i32 @d_append_string_constant(%struct.d_print_info* %462, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %464 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %465 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %466 = call %struct.demangle_component* @d_left(%struct.demangle_component* %465)
  call void @d_print_comp(%struct.d_print_info* %464, %struct.demangle_component* %466)
  br label %1224

467:                                              ; preds = %35
  %468 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %469 = call i32 @d_append_string_constant(%struct.d_print_info* %468, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %470 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %471 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %472 = call %struct.demangle_component* @d_left(%struct.demangle_component* %471)
  call void @d_print_comp(%struct.d_print_info* %470, %struct.demangle_component* %472)
  br label %1224

473:                                              ; preds = %35
  %474 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %475 = call i32 @d_append_string_constant(%struct.d_print_info* %474, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %476 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %477 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %478 = call %struct.demangle_component* @d_left(%struct.demangle_component* %477)
  call void @d_print_comp(%struct.d_print_info* %476, %struct.demangle_component* %478)
  br label %1224

479:                                              ; preds = %35
  %480 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %481 = call i32 @d_append_string_constant(%struct.d_print_info* %480, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %482 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %483 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %484 = call %struct.demangle_component* @d_left(%struct.demangle_component* %483)
  call void @d_print_comp(%struct.d_print_info* %482, %struct.demangle_component* %484)
  br label %1224

485:                                              ; preds = %35
  %486 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %487 = call i32 @d_append_string_constant(%struct.d_print_info* %486, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %488 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %489 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %490 = call %struct.demangle_component* @d_left(%struct.demangle_component* %489)
  call void @d_print_comp(%struct.d_print_info* %488, %struct.demangle_component* %490)
  br label %1224

491:                                              ; preds = %35
  %492 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %493 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %494 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %494, i32 0, i32 4
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 0
  %497 = load i8*, i8** %496, align 8
  %498 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %499 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 4
  %501 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 8
  %503 = call i32 @d_append_buffer(%struct.d_print_info* %492, i8* %497, i32 %502)
  br label %1224

504:                                              ; preds = %35, %35, %35
  %505 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %506 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %505, i32 0, i32 1
  %507 = load %struct.d_print_mod*, %struct.d_print_mod** %506, align 8
  store %struct.d_print_mod* %507, %struct.d_print_mod** %15, align 8
  br label %508

508:                                              ; preds = %554, %504
  %509 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %510 = icmp ne %struct.d_print_mod* %509, null
  br i1 %510, label %511, label %558

511:                                              ; preds = %508
  %512 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %513 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %553, label %516

516:                                              ; preds = %511
  %517 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %518 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %517, i32 0, i32 3
  %519 = load %struct.demangle_component*, %struct.demangle_component** %518, align 8
  %520 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = icmp ne i32 %521, 156
  br i1 %522, label %523, label %538

523:                                              ; preds = %516
  %524 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %525 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %524, i32 0, i32 3
  %526 = load %struct.demangle_component*, %struct.demangle_component** %525, align 8
  %527 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %528, 138
  br i1 %529, label %530, label %538

530:                                              ; preds = %523
  %531 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %532 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %531, i32 0, i32 3
  %533 = load %struct.demangle_component*, %struct.demangle_component** %532, align 8
  %534 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = icmp ne i32 %535, 178
  br i1 %536, label %537, label %538

537:                                              ; preds = %530
  br label %558

538:                                              ; preds = %530, %523, %516
  %539 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %540 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %539, i32 0, i32 3
  %541 = load %struct.demangle_component*, %struct.demangle_component** %540, align 8
  %542 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %545 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = icmp eq i32 %543, %546
  br i1 %547, label %548, label %552

548:                                              ; preds = %538
  %549 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %550 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %551 = call %struct.demangle_component* @d_left(%struct.demangle_component* %550)
  call void @d_print_comp(%struct.d_print_info* %549, %struct.demangle_component* %551)
  br label %1224

552:                                              ; preds = %538
  br label %553

553:                                              ; preds = %552, %511
  br label %554

554:                                              ; preds = %553
  %555 = load %struct.d_print_mod*, %struct.d_print_mod** %15, align 8
  %556 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %555, i32 0, i32 1
  %557 = load %struct.d_print_mod*, %struct.d_print_mod** %556, align 8
  store %struct.d_print_mod* %557, %struct.d_print_mod** %15, align 8
  br label %508

558:                                              ; preds = %537, %508
  br label %559

559:                                              ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %558
  %560 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %561 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %560, i32 0, i32 1
  %562 = load %struct.d_print_mod*, %struct.d_print_mod** %561, align 8
  %563 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %16, i32 0, i32 1
  store %struct.d_print_mod* %562, %struct.d_print_mod** %563, align 8
  %564 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %565 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %564, i32 0, i32 1
  store %struct.d_print_mod* %16, %struct.d_print_mod** %565, align 8
  %566 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %567 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %16, i32 0, i32 3
  store %struct.demangle_component* %566, %struct.demangle_component** %567, align 8
  %568 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %16, i32 0, i32 0
  store i32 0, i32* %568, align 8
  %569 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %570 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %569, i32 0, i32 2
  %571 = load %struct.d_print_template*, %struct.d_print_template** %570, align 8
  %572 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %16, i32 0, i32 2
  store %struct.d_print_template* %571, %struct.d_print_template** %572, align 8
  %573 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %574 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %575 = call %struct.demangle_component* @d_left(%struct.demangle_component* %574)
  call void @d_print_comp(%struct.d_print_info* %573, %struct.demangle_component* %575)
  %576 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %16, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %583, label %579

579:                                              ; preds = %559
  %580 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %581 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %582 = call i32 @d_print_mod(%struct.d_print_info* %580, %struct.demangle_component* %581)
  br label %583

583:                                              ; preds = %579, %559
  %584 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %16, i32 0, i32 1
  %585 = load %struct.d_print_mod*, %struct.d_print_mod** %584, align 8
  %586 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %587 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %586, i32 0, i32 1
  store %struct.d_print_mod* %585, %struct.d_print_mod** %587, align 8
  br label %1224

588:                                              ; preds = %35
  %589 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %590 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = load i32, i32* @DMGL_JAVA, align 4
  %593 = and i32 %591, %592
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %612

595:                                              ; preds = %588
  %596 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %597 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %598 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %599, i32 0, i32 0
  %601 = load %struct.TYPE_21__*, %struct.TYPE_21__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %601, i32 0, i32 0
  %603 = load i8*, i8** %602, align 8
  %604 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %605 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 0
  %608 = load %struct.TYPE_21__*, %struct.TYPE_21__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 8
  %611 = call i32 @d_append_buffer(%struct.d_print_info* %596, i8* %603, i32 %610)
  br label %629

612:                                              ; preds = %588
  %613 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %614 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %615 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %616, i32 0, i32 0
  %618 = load %struct.TYPE_21__*, %struct.TYPE_21__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %618, i32 0, i32 2
  %620 = load i8*, i8** %619, align 8
  %621 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %622 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %621, i32 0, i32 1
  %623 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %623, i32 0, i32 0
  %625 = load %struct.TYPE_21__*, %struct.TYPE_21__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 8
  %628 = call i32 @d_append_buffer(%struct.d_print_info* %613, i8* %620, i32 %627)
  br label %629

629:                                              ; preds = %612, %595
  br label %1224

630:                                              ; preds = %35
  %631 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %632 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %633 = call %struct.demangle_component* @d_left(%struct.demangle_component* %632)
  call void @d_print_comp(%struct.d_print_info* %631, %struct.demangle_component* %633)
  br label %1224

634:                                              ; preds = %35
  %635 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %636 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* @DMGL_RET_POSTFIX, align 4
  %639 = and i32 %637, %638
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %648

641:                                              ; preds = %634
  %642 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %643 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %644 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %645 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %644, i32 0, i32 1
  %646 = load %struct.d_print_mod*, %struct.d_print_mod** %645, align 8
  %647 = call i32 @d_print_function_type(%struct.d_print_info* %642, %struct.demangle_component* %643, %struct.d_print_mod* %646)
  br label %648

648:                                              ; preds = %641, %634
  %649 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %650 = call %struct.demangle_component* @d_left(%struct.demangle_component* %649)
  %651 = icmp ne %struct.demangle_component* %650, null
  br i1 %651, label %652, label %688

652:                                              ; preds = %648
  %653 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %654 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %653, i32 0, i32 1
  %655 = load %struct.d_print_mod*, %struct.d_print_mod** %654, align 8
  %656 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 1
  store %struct.d_print_mod* %655, %struct.d_print_mod** %656, align 8
  %657 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %658 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %657, i32 0, i32 1
  store %struct.d_print_mod* %17, %struct.d_print_mod** %658, align 8
  %659 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %660 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 3
  store %struct.demangle_component* %659, %struct.demangle_component** %660, align 8
  %661 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 0
  store i32 0, i32* %661, align 8
  %662 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %663 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %662, i32 0, i32 2
  %664 = load %struct.d_print_template*, %struct.d_print_template** %663, align 8
  %665 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 2
  store %struct.d_print_template* %664, %struct.d_print_template** %665, align 8
  %666 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %667 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %668 = call %struct.demangle_component* @d_left(%struct.demangle_component* %667)
  call void @d_print_comp(%struct.d_print_info* %666, %struct.demangle_component* %668)
  %669 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 1
  %670 = load %struct.d_print_mod*, %struct.d_print_mod** %669, align 8
  %671 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %672 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %671, i32 0, i32 1
  store %struct.d_print_mod* %670, %struct.d_print_mod** %672, align 8
  %673 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 0
  %674 = load i32, i32* %673, align 8
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %677

676:                                              ; preds = %652
  br label %1224

677:                                              ; preds = %652
  %678 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %679 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %678, i32 0, i32 0
  %680 = load i32, i32* %679, align 8
  %681 = load i32, i32* @DMGL_RET_POSTFIX, align 4
  %682 = and i32 %680, %681
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %687

684:                                              ; preds = %677
  %685 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %686 = call i32 @d_append_char(%struct.d_print_info* %685, i8 signext 32)
  br label %687

687:                                              ; preds = %684, %677
  br label %688

688:                                              ; preds = %687, %648
  %689 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %690 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = load i32, i32* @DMGL_RET_POSTFIX, align 4
  %693 = and i32 %691, %692
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %702

695:                                              ; preds = %688
  %696 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %697 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %698 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %699 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %698, i32 0, i32 1
  %700 = load %struct.d_print_mod*, %struct.d_print_mod** %699, align 8
  %701 = call i32 @d_print_function_type(%struct.d_print_info* %696, %struct.demangle_component* %697, %struct.d_print_mod* %700)
  br label %702

702:                                              ; preds = %695, %688
  br label %1224

703:                                              ; preds = %35
  %704 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %705 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %704, i32 0, i32 1
  %706 = load %struct.d_print_mod*, %struct.d_print_mod** %705, align 8
  store %struct.d_print_mod* %706, %struct.d_print_mod** %18, align 8
  %707 = load %struct.d_print_mod*, %struct.d_print_mod** %18, align 8
  %708 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 0
  %709 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %708, i32 0, i32 1
  store %struct.d_print_mod* %707, %struct.d_print_mod** %709, align 8
  %710 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 0
  %711 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %712 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %711, i32 0, i32 1
  store %struct.d_print_mod* %710, %struct.d_print_mod** %712, align 8
  %713 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %714 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 0
  %715 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %714, i32 0, i32 3
  store %struct.demangle_component* %713, %struct.demangle_component** %715, align 8
  %716 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 0
  %717 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %716, i32 0, i32 0
  store i32 0, i32* %717, align 16
  %718 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %719 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %718, i32 0, i32 2
  %720 = load %struct.d_print_template*, %struct.d_print_template** %719, align 8
  %721 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 0
  %722 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %721, i32 0, i32 2
  store %struct.d_print_template* %720, %struct.d_print_template** %722, align 16
  store i32 1, i32* %20, align 4
  %723 = load %struct.d_print_mod*, %struct.d_print_mod** %18, align 8
  store %struct.d_print_mod* %723, %struct.d_print_mod** %21, align 8
  br label %724

724:                                              ; preds = %787, %703
  %725 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %726 = icmp ne %struct.d_print_mod* %725, null
  br i1 %726, label %727, label %750

727:                                              ; preds = %724
  %728 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %729 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %728, i32 0, i32 3
  %730 = load %struct.demangle_component*, %struct.demangle_component** %729, align 8
  %731 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 8
  %733 = icmp eq i32 %732, 156
  br i1 %733, label %748, label %734

734:                                              ; preds = %727
  %735 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %736 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %735, i32 0, i32 3
  %737 = load %struct.demangle_component*, %struct.demangle_component** %736, align 8
  %738 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 8
  %740 = icmp eq i32 %739, 138
  br i1 %740, label %748, label %741

741:                                              ; preds = %734
  %742 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %743 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %742, i32 0, i32 3
  %744 = load %struct.demangle_component*, %struct.demangle_component** %743, align 8
  %745 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 8
  %747 = icmp eq i32 %746, 178
  br label %748

748:                                              ; preds = %741, %734, %727
  %749 = phi i1 [ true, %734 ], [ true, %727 ], [ %747, %741 ]
  br label %750

750:                                              ; preds = %748, %724
  %751 = phi i1 [ false, %724 ], [ %749, %748 ]
  br i1 %751, label %752, label %791

752:                                              ; preds = %750
  %753 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %754 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 8
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %787, label %757

757:                                              ; preds = %752
  %758 = load i32, i32* %20, align 4
  %759 = zext i32 %758 to i64
  %760 = icmp uge i64 %759, 4
  br i1 %760, label %761, label %764

761:                                              ; preds = %757
  %762 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %763 = call i32 @d_print_error(%struct.d_print_info* %762)
  br label %1224

764:                                              ; preds = %757
  %765 = load i32, i32* %20, align 4
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 %766
  %768 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %769 = bitcast %struct.d_print_mod* %767 to i8*
  %770 = bitcast %struct.d_print_mod* %768 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %769, i8* align 8 %770, i64 32, i1 false)
  %771 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %772 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %771, i32 0, i32 1
  %773 = load %struct.d_print_mod*, %struct.d_print_mod** %772, align 8
  %774 = load i32, i32* %20, align 4
  %775 = zext i32 %774 to i64
  %776 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 %775
  %777 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %776, i32 0, i32 1
  store %struct.d_print_mod* %773, %struct.d_print_mod** %777, align 8
  %778 = load i32, i32* %20, align 4
  %779 = zext i32 %778 to i64
  %780 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 %779
  %781 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %782 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %781, i32 0, i32 1
  store %struct.d_print_mod* %780, %struct.d_print_mod** %782, align 8
  %783 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %784 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %783, i32 0, i32 0
  store i32 1, i32* %784, align 8
  %785 = load i32, i32* %20, align 4
  %786 = add i32 %785, 1
  store i32 %786, i32* %20, align 4
  br label %787

787:                                              ; preds = %764, %752
  %788 = load %struct.d_print_mod*, %struct.d_print_mod** %21, align 8
  %789 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %788, i32 0, i32 1
  %790 = load %struct.d_print_mod*, %struct.d_print_mod** %789, align 8
  store %struct.d_print_mod* %790, %struct.d_print_mod** %21, align 8
  br label %724

791:                                              ; preds = %750
  %792 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %793 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %794 = call %struct.demangle_component* @d_right(%struct.demangle_component* %793)
  call void @d_print_comp(%struct.d_print_info* %792, %struct.demangle_component* %794)
  %795 = load %struct.d_print_mod*, %struct.d_print_mod** %18, align 8
  %796 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %797 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %796, i32 0, i32 1
  store %struct.d_print_mod* %795, %struct.d_print_mod** %797, align 8
  %798 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 0
  %799 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %798, i32 0, i32 0
  %800 = load i32, i32* %799, align 16
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %803

802:                                              ; preds = %791
  br label %1224

803:                                              ; preds = %791
  br label %804

804:                                              ; preds = %807, %803
  %805 = load i32, i32* %20, align 4
  %806 = icmp ugt i32 %805, 1
  br i1 %806, label %807, label %817

807:                                              ; preds = %804
  %808 = load i32, i32* %20, align 4
  %809 = add i32 %808, -1
  store i32 %809, i32* %20, align 4
  %810 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %811 = load i32, i32* %20, align 4
  %812 = zext i32 %811 to i64
  %813 = getelementptr inbounds [4 x %struct.d_print_mod], [4 x %struct.d_print_mod]* %19, i64 0, i64 %812
  %814 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %813, i32 0, i32 3
  %815 = load %struct.demangle_component*, %struct.demangle_component** %814, align 8
  %816 = call i32 @d_print_mod(%struct.d_print_info* %810, %struct.demangle_component* %815)
  br label %804

817:                                              ; preds = %804
  %818 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %819 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %820 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %821 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %820, i32 0, i32 1
  %822 = load %struct.d_print_mod*, %struct.d_print_mod** %821, align 8
  %823 = call i32 @d_print_array_type(%struct.d_print_info* %818, %struct.demangle_component* %819, %struct.d_print_mod* %822)
  br label %1224

824:                                              ; preds = %35
  %825 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %826 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %825, i32 0, i32 1
  %827 = load %struct.d_print_mod*, %struct.d_print_mod** %826, align 8
  %828 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %22, i32 0, i32 1
  store %struct.d_print_mod* %827, %struct.d_print_mod** %828, align 8
  %829 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %830 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %829, i32 0, i32 1
  store %struct.d_print_mod* %22, %struct.d_print_mod** %830, align 8
  %831 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %832 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %22, i32 0, i32 3
  store %struct.demangle_component* %831, %struct.demangle_component** %832, align 8
  %833 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %22, i32 0, i32 0
  store i32 0, i32* %833, align 8
  %834 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %835 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %834, i32 0, i32 2
  %836 = load %struct.d_print_template*, %struct.d_print_template** %835, align 8
  %837 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %22, i32 0, i32 2
  store %struct.d_print_template* %836, %struct.d_print_template** %837, align 8
  %838 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %839 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %840 = call %struct.demangle_component* @d_right(%struct.demangle_component* %839)
  call void @d_print_comp(%struct.d_print_info* %838, %struct.demangle_component* %840)
  %841 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %22, i32 0, i32 0
  %842 = load i32, i32* %841, align 8
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %852, label %844

844:                                              ; preds = %824
  %845 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %846 = call i32 @d_append_char(%struct.d_print_info* %845, i8 signext 32)
  %847 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %848 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %849 = call %struct.demangle_component* @d_left(%struct.demangle_component* %848)
  call void @d_print_comp(%struct.d_print_info* %847, %struct.demangle_component* %849)
  %850 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %851 = call i32 @d_append_string_constant(%struct.d_print_info* %850, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %852

852:                                              ; preds = %844, %824
  %853 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %22, i32 0, i32 1
  %854 = load %struct.d_print_mod*, %struct.d_print_mod** %853, align 8
  %855 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %856 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %855, i32 0, i32 1
  store %struct.d_print_mod* %854, %struct.d_print_mod** %856, align 8
  br label %1224

857:                                              ; preds = %35, %35
  %858 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %859 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %860 = call %struct.demangle_component* @d_left(%struct.demangle_component* %859)
  call void @d_print_comp(%struct.d_print_info* %858, %struct.demangle_component* %860)
  %861 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %862 = call %struct.demangle_component* @d_right(%struct.demangle_component* %861)
  %863 = icmp ne %struct.demangle_component* %862, null
  br i1 %863, label %864, label %870

864:                                              ; preds = %857
  %865 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %866 = call i32 @d_append_string_constant(%struct.d_print_info* %865, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %867 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %868 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %869 = call %struct.demangle_component* @d_right(%struct.demangle_component* %868)
  call void @d_print_comp(%struct.d_print_info* %867, %struct.demangle_component* %869)
  br label %870

870:                                              ; preds = %864, %857
  br label %1224

871:                                              ; preds = %35
  %872 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %873 = call i32 @d_append_string_constant(%struct.d_print_info* %872, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %874 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %875 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %875, i32 0, i32 2
  %877 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %876, i32 0, i32 0
  %878 = load %struct.TYPE_19__*, %struct.TYPE_19__** %877, align 8
  %879 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %878, i32 0, i32 0
  %880 = load i8*, i8** %879, align 8
  %881 = getelementptr inbounds i8, i8* %880, i64 0
  %882 = load i8, i8* %881, align 1
  store i8 %882, i8* %23, align 1
  %883 = load i8, i8* %23, align 1
  %884 = call i32 @IS_LOWER(i8 signext %883)
  %885 = icmp ne i32 %884, 0
  br i1 %885, label %886, label %889

886:                                              ; preds = %871
  %887 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %888 = call i32 @d_append_char(%struct.d_print_info* %887, i8 signext 32)
  br label %889

889:                                              ; preds = %886, %871
  %890 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %891 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %892 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %892, i32 0, i32 2
  %894 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %893, i32 0, i32 0
  %895 = load %struct.TYPE_19__*, %struct.TYPE_19__** %894, align 8
  %896 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %895, i32 0, i32 0
  %897 = load i8*, i8** %896, align 8
  %898 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %899 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %899, i32 0, i32 2
  %901 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %900, i32 0, i32 0
  %902 = load %struct.TYPE_19__*, %struct.TYPE_19__** %901, align 8
  %903 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %902, i32 0, i32 1
  %904 = load i32, i32* %903, align 8
  %905 = call i32 @d_append_buffer(%struct.d_print_info* %890, i8* %897, i32 %904)
  br label %1224

906:                                              ; preds = %35
  %907 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %908 = call i32 @d_append_string_constant(%struct.d_print_info* %907, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %909 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %910 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %911 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %911, i32 0, i32 3
  %913 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %912, i32 0, i32 0
  %914 = load %struct.demangle_component*, %struct.demangle_component** %913, align 8
  call void @d_print_comp(%struct.d_print_info* %909, %struct.demangle_component* %914)
  br label %1224

915:                                              ; preds = %35
  %916 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %917 = call i32 @d_append_string_constant(%struct.d_print_info* %916, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %918 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %919 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %920 = call i32 @d_print_cast(%struct.d_print_info* %918, %struct.demangle_component* %919)
  br label %1224

921:                                              ; preds = %35
  %922 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %923 = call %struct.demangle_component* @d_left(%struct.demangle_component* %922)
  %924 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %923, i32 0, i32 0
  %925 = load i32, i32* %924, align 8
  %926 = icmp ne i32 %925, 180
  br i1 %926, label %927, label %932

927:                                              ; preds = %921
  %928 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %929 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %930 = call %struct.demangle_component* @d_left(%struct.demangle_component* %929)
  %931 = call i32 @d_print_expr_op(%struct.d_print_info* %928, %struct.demangle_component* %930)
  br label %941

932:                                              ; preds = %921
  %933 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %934 = call i32 @d_append_char(%struct.d_print_info* %933, i8 signext 40)
  %935 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %936 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %937 = call %struct.demangle_component* @d_left(%struct.demangle_component* %936)
  %938 = call i32 @d_print_cast(%struct.d_print_info* %935, %struct.demangle_component* %937)
  %939 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %940 = call i32 @d_append_char(%struct.d_print_info* %939, i8 signext 41)
  br label %941

941:                                              ; preds = %932, %927
  %942 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %943 = call i32 @d_append_char(%struct.d_print_info* %942, i8 signext 40)
  %944 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %945 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %946 = call %struct.demangle_component* @d_right(%struct.demangle_component* %945)
  call void @d_print_comp(%struct.d_print_info* %944, %struct.demangle_component* %946)
  %947 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %948 = call i32 @d_append_char(%struct.d_print_info* %947, i8 signext 41)
  br label %1224

949:                                              ; preds = %35
  %950 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %951 = call %struct.demangle_component* @d_right(%struct.demangle_component* %950)
  %952 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %951, i32 0, i32 0
  %953 = load i32, i32* %952, align 8
  %954 = icmp ne i32 %953, 182
  br i1 %954, label %955, label %958

955:                                              ; preds = %949
  %956 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %957 = call i32 @d_print_error(%struct.d_print_info* %956)
  br label %1224

958:                                              ; preds = %949
  %959 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %960 = call %struct.demangle_component* @d_left(%struct.demangle_component* %959)
  %961 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %960, i32 0, i32 0
  %962 = load i32, i32* %961, align 8
  %963 = icmp eq i32 %962, 162
  br i1 %963, label %964, label %990

964:                                              ; preds = %958
  %965 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %966 = call %struct.demangle_component* @d_left(%struct.demangle_component* %965)
  %967 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %966, i32 0, i32 1
  %968 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %967, i32 0, i32 2
  %969 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %968, i32 0, i32 0
  %970 = load %struct.TYPE_19__*, %struct.TYPE_19__** %969, align 8
  %971 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %970, i32 0, i32 1
  %972 = load i32, i32* %971, align 8
  %973 = icmp eq i32 %972, 1
  br i1 %973, label %974, label %990

974:                                              ; preds = %964
  %975 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %976 = call %struct.demangle_component* @d_left(%struct.demangle_component* %975)
  %977 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %976, i32 0, i32 1
  %978 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %977, i32 0, i32 2
  %979 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %978, i32 0, i32 0
  %980 = load %struct.TYPE_19__*, %struct.TYPE_19__** %979, align 8
  %981 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %980, i32 0, i32 0
  %982 = load i8*, i8** %981, align 8
  %983 = getelementptr inbounds i8, i8* %982, i64 0
  %984 = load i8, i8* %983, align 1
  %985 = sext i8 %984 to i32
  %986 = icmp eq i32 %985, 62
  br i1 %986, label %987, label %990

987:                                              ; preds = %974
  %988 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %989 = call i32 @d_append_char(%struct.d_print_info* %988, i8 signext 40)
  br label %990

990:                                              ; preds = %987, %974, %964, %958
  %991 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %992 = call i32 @d_append_char(%struct.d_print_info* %991, i8 signext 40)
  %993 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %994 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %995 = call %struct.demangle_component* @d_right(%struct.demangle_component* %994)
  %996 = call %struct.demangle_component* @d_left(%struct.demangle_component* %995)
  call void @d_print_comp(%struct.d_print_info* %993, %struct.demangle_component* %996)
  %997 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %998 = call i32 @d_append_string_constant(%struct.d_print_info* %997, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %999 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1000 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1001 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1000)
  %1002 = call i32 @d_print_expr_op(%struct.d_print_info* %999, %struct.demangle_component* %1001)
  %1003 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1004 = call i32 @d_append_string_constant(%struct.d_print_info* %1003, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %1005 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1006 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1007 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1006)
  %1008 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1007)
  call void @d_print_comp(%struct.d_print_info* %1005, %struct.demangle_component* %1008)
  %1009 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1010 = call i32 @d_append_char(%struct.d_print_info* %1009, i8 signext 41)
  %1011 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1012 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1011)
  %1013 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1012, i32 0, i32 0
  %1014 = load i32, i32* %1013, align 8
  %1015 = icmp eq i32 %1014, 162
  br i1 %1015, label %1016, label %1042

1016:                                             ; preds = %990
  %1017 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1018 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1017)
  %1019 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1018, i32 0, i32 1
  %1020 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1019, i32 0, i32 2
  %1021 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1020, i32 0, i32 0
  %1022 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1021, align 8
  %1023 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1022, i32 0, i32 1
  %1024 = load i32, i32* %1023, align 8
  %1025 = icmp eq i32 %1024, 1
  br i1 %1025, label %1026, label %1042

1026:                                             ; preds = %1016
  %1027 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1028 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1027)
  %1029 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1028, i32 0, i32 1
  %1030 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1029, i32 0, i32 2
  %1031 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1030, i32 0, i32 0
  %1032 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1031, align 8
  %1033 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1032, i32 0, i32 0
  %1034 = load i8*, i8** %1033, align 8
  %1035 = getelementptr inbounds i8, i8* %1034, i64 0
  %1036 = load i8, i8* %1035, align 1
  %1037 = sext i8 %1036 to i32
  %1038 = icmp eq i32 %1037, 62
  br i1 %1038, label %1039, label %1042

1039:                                             ; preds = %1026
  %1040 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1041 = call i32 @d_append_char(%struct.d_print_info* %1040, i8 signext 41)
  br label %1042

1042:                                             ; preds = %1039, %1026, %1016, %990
  br label %1224

1043:                                             ; preds = %35
  %1044 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1045 = call i32 @d_print_error(%struct.d_print_info* %1044)
  br label %1224

1046:                                             ; preds = %35
  %1047 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1048 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1047)
  %1049 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1048, i32 0, i32 0
  %1050 = load i32, i32* %1049, align 8
  %1051 = icmp ne i32 %1050, 148
  br i1 %1051, label %1059, label %1052

1052:                                             ; preds = %1046
  %1053 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1054 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1053)
  %1055 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1054)
  %1056 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1055, i32 0, i32 0
  %1057 = load i32, i32* %1056, align 8
  %1058 = icmp ne i32 %1057, 147
  br i1 %1058, label %1059, label %1062

1059:                                             ; preds = %1052, %1046
  %1060 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1061 = call i32 @d_print_error(%struct.d_print_info* %1060)
  br label %1224

1062:                                             ; preds = %1052
  %1063 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1064 = call i32 @d_append_char(%struct.d_print_info* %1063, i8 signext 40)
  %1065 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1066 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1067 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1066)
  %1068 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1067)
  call void @d_print_comp(%struct.d_print_info* %1065, %struct.demangle_component* %1068)
  %1069 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1070 = call i32 @d_append_string_constant(%struct.d_print_info* %1069, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %1071 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1072 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1073 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1072)
  %1074 = call i32 @d_print_expr_op(%struct.d_print_info* %1071, %struct.demangle_component* %1073)
  %1075 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1076 = call i32 @d_append_string_constant(%struct.d_print_info* %1075, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %1077 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1078 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1079 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1078)
  %1080 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1079)
  %1081 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1080)
  call void @d_print_comp(%struct.d_print_info* %1077, %struct.demangle_component* %1081)
  %1082 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1083 = call i32 @d_append_string_constant(%struct.d_print_info* %1082, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %1084 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1085 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1086 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1085)
  %1087 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1086)
  %1088 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1087)
  call void @d_print_comp(%struct.d_print_info* %1084, %struct.demangle_component* %1088)
  %1089 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1090 = call i32 @d_append_char(%struct.d_print_info* %1089, i8 signext 41)
  br label %1224

1091:                                             ; preds = %35, %35
  %1092 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1093 = call i32 @d_print_error(%struct.d_print_info* %1092)
  br label %1224

1094:                                             ; preds = %35, %35
  %1095 = load i32, i32* @D_PRINT_DEFAULT, align 4
  store i32 %1095, i32* %24, align 4
  %1096 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1097 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1096)
  %1098 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1097, i32 0, i32 0
  %1099 = load i32, i32* %1098, align 8
  %1100 = icmp eq i32 %1099, 181
  br i1 %1100, label %1101, label %1188

1101:                                             ; preds = %1094
  %1102 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1103 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1102)
  %1104 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1103, i32 0, i32 1
  %1105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1105, i32 0, i32 0
  %1107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1106, align 8
  %1108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1107, i32 0, i32 4
  %1109 = load i32, i32* %1108, align 4
  store i32 %1109, i32* %24, align 4
  %1110 = load i32, i32* %24, align 4
  switch i32 %1110, label %1186 [
    i32 133, label %1111
    i32 130, label %1111
    i32 132, label %1111
    i32 129, label %1111
    i32 131, label %1111
    i32 128, label %1111
    i32 134, label %1148
  ]

1111:                                             ; preds = %1101, %1101, %1101, %1101, %1101, %1101
  %1112 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1113 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1112)
  %1114 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1113, i32 0, i32 0
  %1115 = load i32, i32* %1114, align 8
  %1116 = icmp eq i32 %1115, 163
  br i1 %1116, label %1117, label %1147

1117:                                             ; preds = %1111
  %1118 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1119 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1118, i32 0, i32 0
  %1120 = load i32, i32* %1119, align 8
  %1121 = icmp eq i32 %1120, 165
  br i1 %1121, label %1122, label %1125

1122:                                             ; preds = %1117
  %1123 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1124 = call i32 @d_append_char(%struct.d_print_info* %1123, i8 signext 45)
  br label %1125

1125:                                             ; preds = %1122, %1117
  %1126 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1127 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1128 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1127)
  call void @d_print_comp(%struct.d_print_info* %1126, %struct.demangle_component* %1128)
  %1129 = load i32, i32* %24, align 4
  switch i32 %1129, label %1130 [
    i32 130, label %1131
    i32 132, label %1134
    i32 129, label %1137
    i32 131, label %1140
    i32 128, label %1143
  ]

1130:                                             ; preds = %1125
  br label %1146

1131:                                             ; preds = %1125
  %1132 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1133 = call i32 @d_append_char(%struct.d_print_info* %1132, i8 signext 117)
  br label %1146

1134:                                             ; preds = %1125
  %1135 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1136 = call i32 @d_append_char(%struct.d_print_info* %1135, i8 signext 108)
  br label %1146

1137:                                             ; preds = %1125
  %1138 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1139 = call i32 @d_append_string_constant(%struct.d_print_info* %1138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %1146

1140:                                             ; preds = %1125
  %1141 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1142 = call i32 @d_append_string_constant(%struct.d_print_info* %1141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %1146

1143:                                             ; preds = %1125
  %1144 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1145 = call i32 @d_append_string_constant(%struct.d_print_info* %1144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %1146

1146:                                             ; preds = %1143, %1140, %1137, %1134, %1131, %1130
  br label %1224

1147:                                             ; preds = %1111
  br label %1187

1148:                                             ; preds = %1101
  %1149 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1150 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1149)
  %1151 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1150, i32 0, i32 0
  %1152 = load i32, i32* %1151, align 8
  %1153 = icmp eq i32 %1152, 163
  br i1 %1153, label %1154, label %1185

1154:                                             ; preds = %1148
  %1155 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1156 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1155)
  %1157 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1157, i32 0, i32 0
  %1159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1158, i32 0, i32 1
  %1160 = load i32, i32* %1159, align 8
  %1161 = icmp eq i32 %1160, 1
  br i1 %1161, label %1162, label %1185

1162:                                             ; preds = %1154
  %1163 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1164 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1163, i32 0, i32 0
  %1165 = load i32, i32* %1164, align 8
  %1166 = icmp eq i32 %1165, 166
  br i1 %1166, label %1167, label %1185

1167:                                             ; preds = %1162
  %1168 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1169 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1168)
  %1170 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1170, i32 0, i32 0
  %1172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1171, i32 0, i32 0
  %1173 = load i8*, i8** %1172, align 8
  %1174 = getelementptr inbounds i8, i8* %1173, i64 0
  %1175 = load i8, i8* %1174, align 1
  %1176 = sext i8 %1175 to i32
  switch i32 %1176, label %1183 [
    i32 48, label %1177
    i32 49, label %1180
  ]

1177:                                             ; preds = %1167
  %1178 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1179 = call i32 @d_append_string_constant(%struct.d_print_info* %1178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  br label %1224

1180:                                             ; preds = %1167
  %1181 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1182 = call i32 @d_append_string_constant(%struct.d_print_info* %1181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %1224

1183:                                             ; preds = %1167
  br label %1184

1184:                                             ; preds = %1183
  br label %1185

1185:                                             ; preds = %1184, %1162, %1154, %1148
  br label %1187

1186:                                             ; preds = %1101
  br label %1187

1187:                                             ; preds = %1186, %1185, %1147
  br label %1188

1188:                                             ; preds = %1187, %1094
  %1189 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1190 = call i32 @d_append_char(%struct.d_print_info* %1189, i8 signext 40)
  %1191 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1192 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1193 = call %struct.demangle_component* @d_left(%struct.demangle_component* %1192)
  call void @d_print_comp(%struct.d_print_info* %1191, %struct.demangle_component* %1193)
  %1194 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1195 = call i32 @d_append_char(%struct.d_print_info* %1194, i8 signext 41)
  %1196 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1197 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %1196, i32 0, i32 0
  %1198 = load i32, i32* %1197, align 8
  %1199 = icmp eq i32 %1198, 165
  br i1 %1199, label %1200, label %1203

1200:                                             ; preds = %1188
  %1201 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1202 = call i32 @d_append_char(%struct.d_print_info* %1201, i8 signext 45)
  br label %1203

1203:                                             ; preds = %1200, %1188
  %1204 = load i32, i32* %24, align 4
  %1205 = load i32, i32* @D_PRINT_FLOAT, align 4
  %1206 = icmp eq i32 %1204, %1205
  br i1 %1206, label %1207, label %1210

1207:                                             ; preds = %1203
  %1208 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1209 = call i32 @d_append_char(%struct.d_print_info* %1208, i8 signext 91)
  br label %1210

1210:                                             ; preds = %1207, %1203
  %1211 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1212 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %1213 = call %struct.demangle_component* @d_right(%struct.demangle_component* %1212)
  call void @d_print_comp(%struct.d_print_info* %1211, %struct.demangle_component* %1213)
  %1214 = load i32, i32* %24, align 4
  %1215 = load i32, i32* @D_PRINT_FLOAT, align 4
  %1216 = icmp eq i32 %1214, %1215
  br i1 %1216, label %1217, label %1220

1217:                                             ; preds = %1210
  %1218 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1219 = call i32 @d_append_char(%struct.d_print_info* %1218, i8 signext 93)
  br label %1220

1220:                                             ; preds = %1217, %1210
  br label %1224

1221:                                             ; preds = %35
  %1222 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %1223 = call i32 @d_print_error(%struct.d_print_info* %1222)
  br label %1224

1224:                                             ; preds = %1221, %1220, %1180, %1177, %1146, %1091, %1062, %1059, %1043, %1042, %955, %941, %915, %906, %889, %870, %852, %817, %802, %761, %702, %676, %630, %629, %583, %548, %491, %485, %479, %473, %467, %461, %455, %449, %443, %437, %431, %420, %414, %408, %399, %392, %377, %374, %355, %332, %321, %288, %201, %106, %89, %72, %34, %27
  ret void
}

declare dso_local i32 @d_print_error(%struct.d_print_info*) #1

declare dso_local i64 @d_print_saw_error(%struct.d_print_info*) #1

declare dso_local i32 @d_append_buffer(%struct.d_print_info*, i8*, i32) #1

declare dso_local i32 @d_print_java_identifier(%struct.d_print_info*, i8*, i32) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_append_string_constant(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d_print_mod(%struct.d_print_info*, %struct.demangle_component*) #1

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
