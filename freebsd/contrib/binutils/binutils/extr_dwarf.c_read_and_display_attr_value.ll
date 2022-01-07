; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_read_and_display_attr_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_read_and_display_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [46 x i8] c"Internal error: DWARF version is not 2 or 3.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" <#%lx>\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" <%lx>\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %#lx\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" %lx\00", align 1
@do_debug_loc = common dso_local global i64 0, align 8
@do_debug_ranges = common dso_local global i64 0, align 8
@num_debug_info_entries = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c" (indirect string, offset: 0x%lx): %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unrecognized form: %lu\0A\00", align 1
@have_frame_base = common dso_local global i32 0, align 4
@need_base_address = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"(not inlined)\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"(inlined)\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"(declared as inline but ignored)\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"(declared as inline and inlined)\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"  (Unknown inline attribute value: %lx)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"(ANSI C)\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"(non-ANSI C)\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"(Ada)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"(C++)\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"(Cobol 74)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"(Cobol 85)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"(FORTRAN 77)\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"(Fortran 90)\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"(ANSI Pascal)\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"(Modula 2)\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"(Java)\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"(ANSI C99)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"(ADA 95)\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"(Fortran 95)\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"(PLI)\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"(Objective C)\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"(Objective C++)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"(Unified Parallel C)\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"(D)\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"(MIPS assembler)\00", align 1
@DW_LANG_lo_user = common dso_local global i64 0, align 8
@DW_LANG_hi_user = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [30 x i8] c"(implementation defined: %lx)\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"(Unknown: %lx)\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"(void)\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"(machine address)\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"(boolean)\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"(complex float)\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"(float)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"(signed)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"(signed char)\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"(unsigned)\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"(unsigned char)\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"(imaginary float)\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"(decimal float)\00", align 1
@DW_ATE_lo_user = common dso_local global i64 0, align 8
@DW_ATE_hi_user = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [20 x i8] c"(user defined type)\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"(unknown type)\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"(public)\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"(protected)\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"(private)\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"(unknown accessibility)\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"(local)\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"(exported)\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"(qualified)\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"(unknown visibility)\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"(virtual)\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"(pure_virtual)\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"(unknown virtuality)\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"(case_sensitive)\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"(up_case)\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"(down_case)\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"(case_insensitive)\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"(unknown case)\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"(normal)\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"(program)\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"(nocall)\00", align 1
@DW_CC_lo_user = common dso_local global i64 0, align 8
@DW_CC_hi_user = common dso_local global i64 0, align 8
@.str.70 = private unnamed_addr constant [15 x i8] c"(user defined)\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"(unknown convention)\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"(undefined)\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"(row major)\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"(column major)\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c" [without DW_AT_frame_base]\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"(location list)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i8*, i64, i64, i64, i32, %struct.TYPE_3__*, i32)* @read_and_display_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_and_display_attr_value(i64 %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6, %struct.TYPE_3__* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %18, align 8
  store i32 %8, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i8* null, i8** %21, align 8
  %28 = load i64, i64* %12, align 8
  switch i64 %28, label %29 [
    i64 168, label %30
    i64 184, label %57
    i64 164, label %65
    i64 174, label %73
    i64 172, label %74
    i64 175, label %74
    i64 179, label %74
    i64 171, label %78
    i64 178, label %78
    i64 170, label %83
    i64 177, label %83
    i64 166, label %88
    i64 167, label %95
    i64 163, label %95
    i64 173, label %102
  ]

29:                                               ; preds = %9
  br label %126

30:                                               ; preds = %9
  %31 = load i32, i32* %17, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8*, i8** %13, align 8
  %35 = load i64, i64* %15, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @byte_get(i8* %34, i32 %36)
  store i64 %37, i64* %20, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %13, align 8
  br label %56

41:                                               ; preds = %30
  %42 = load i32, i32* %17, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %13, align 8
  %46 = load i64, i64* %16, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @byte_get(i8* %45, i32 %47)
  store i64 %48, i64* %20, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %13, align 8
  br label %55

52:                                               ; preds = %41
  %53 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @error(i8* %53)
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %33
  br label %126

57:                                               ; preds = %9
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %15, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @byte_get(i8* %58, i32 %60)
  store i64 %61, i64* %20, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %13, align 8
  br label %126

65:                                               ; preds = %9
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %16, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i64 @byte_get(i8* %66, i32 %68)
  store i64 %69, i64* %20, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %13, align 8
  br label %126

73:                                               ; preds = %9
  store i64 1, i64* %20, align 8
  br label %126

74:                                               ; preds = %9, %9, %9
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %13, align 8
  %77 = call i64 @byte_get(i8* %75, i32 1)
  store i64 %77, i64* %20, align 8
  br label %126

78:                                               ; preds = %9, %9
  %79 = load i8*, i8** %13, align 8
  %80 = call i64 @byte_get(i8* %79, i32 2)
  store i64 %80, i64* %20, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %13, align 8
  br label %126

83:                                               ; preds = %9, %9
  %84 = load i8*, i8** %13, align 8
  %85 = call i64 @byte_get(i8* %84, i32 4)
  store i64 %85, i64* %20, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %87, i8** %13, align 8
  br label %126

88:                                               ; preds = %9
  %89 = load i8*, i8** %13, align 8
  %90 = call i64 @read_leb128(i8* %89, i32* %22, i32 1)
  store i64 %90, i64* %20, align 8
  %91 = load i32, i32* %22, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %13, align 8
  br label %126

95:                                               ; preds = %9, %9
  %96 = load i8*, i8** %13, align 8
  %97 = call i64 @read_leb128(i8* %96, i32* %22, i32 0)
  store i64 %97, i64* %20, align 8
  %98 = load i32, i32* %22, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  br label %126

102:                                              ; preds = %9
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @read_leb128(i8* %103, i32* %22, i32 0)
  store i64 %104, i64* %12, align 8
  %105 = load i32, i32* %22, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %13, align 8
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load i64, i64* %12, align 8
  %113 = call i8* @get_FORM_name(i64 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %111, %102
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %16, align 8
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %124 = load i32, i32* %19, align 4
  %125 = call i8* @read_and_display_attr_value(i64 %116, i64 %117, i8* %118, i64 %119, i64 %120, i64 %121, i32 %122, %struct.TYPE_3__* %123, i32 %124)
  store i8* %125, i8** %10, align 8
  br label %653

126:                                              ; preds = %95, %88, %83, %78, %74, %73, %65, %57, %56, %29
  %127 = load i64, i64* %12, align 8
  switch i64 %127, label %278 [
    i64 168, label %128
    i64 172, label %135
    i64 171, label %135
    i64 170, label %135
    i64 167, label %135
    i64 177, label %144
    i64 184, label %144
    i64 174, label %151
    i64 175, label %151
    i64 179, label %151
    i64 178, label %151
    i64 166, label %151
    i64 163, label %151
    i64 169, label %158
    i64 176, label %158
    i64 165, label %188
    i64 183, label %201
    i64 182, label %219
    i64 181, label %235
    i64 180, label %251
    i64 164, label %267
    i64 173, label %277
  ]

128:                                              ; preds = %126
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %20, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %282

135:                                              ; preds = %126, %126, %126, %126
  %136 = load i32, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %139, %140
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  br label %143

143:                                              ; preds = %138, %135
  br label %282

144:                                              ; preds = %126, %126
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %20, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %282

151:                                              ; preds = %126, %126, %126, %126, %126, %126
  %152 = load i32, i32* %19, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %20, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %282

158:                                              ; preds = %126, %126
  %159 = load i32, i32* %19, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %13, align 8
  %163 = call i64 @byte_get(i8* %162, i32 4)
  store i64 %163, i64* %20, align 8
  %164 = load i64, i64* %20, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %164)
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  %168 = call i64 @byte_get(i8* %167, i32 4)
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %168)
  br label %170

170:                                              ; preds = %161, %158
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = load i64, i64* @do_debug_loc, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i64, i64* @do_debug_ranges, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176, %173, %170
  %180 = load i64, i64* @num_debug_info_entries, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %13, align 8
  %184 = call i64 @byte_get(i8* %183, i32 8)
  store i64 %184, i64* %20, align 8
  br label %185

185:                                              ; preds = %182, %179, %176
  %186 = load i8*, i8** %13, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 8
  store i8* %187, i8** %13, align 8
  br label %282

188:                                              ; preds = %126
  %189 = load i32, i32* %19, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i8*, i8** %13, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 @strlen(i8* %195)
  %197 = add nsw i32 %196, 1
  %198 = load i8*, i8** %13, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %13, align 8
  br label %282

201:                                              ; preds = %126
  %202 = load i8*, i8** %13, align 8
  %203 = call i64 @read_leb128(i8* %202, i32* %22, i32 0)
  store i64 %203, i64* %20, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = load i32, i32* %22, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8* %207, i8** %21, align 8
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i8*, i8** %21, align 8
  %212 = load i64, i64* %20, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %13, align 8
  br label %218

214:                                              ; preds = %201
  %215 = load i8*, i8** %21, align 8
  %216 = load i64, i64* %20, align 8
  %217 = call i8* @display_block(i8* %215, i64 %216)
  store i8* %217, i8** %13, align 8
  br label %218

218:                                              ; preds = %214, %210
  br label %282

219:                                              ; preds = %126
  %220 = load i8*, i8** %13, align 8
  %221 = call i64 @byte_get(i8* %220, i32 1)
  store i64 %221, i64* %20, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  store i8* %223, i8** %21, align 8
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load i8*, i8** %21, align 8
  %228 = load i64, i64* %20, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %13, align 8
  br label %234

230:                                              ; preds = %219
  %231 = load i8*, i8** %21, align 8
  %232 = load i64, i64* %20, align 8
  %233 = call i8* @display_block(i8* %231, i64 %232)
  store i8* %233, i8** %13, align 8
  br label %234

234:                                              ; preds = %230, %226
  br label %282

235:                                              ; preds = %126
  %236 = load i8*, i8** %13, align 8
  %237 = call i64 @byte_get(i8* %236, i32 2)
  store i64 %237, i64* %20, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 2
  store i8* %239, i8** %21, align 8
  %240 = load i32, i32* %19, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load i8*, i8** %21, align 8
  %244 = load i64, i64* %20, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %13, align 8
  br label %250

246:                                              ; preds = %235
  %247 = load i8*, i8** %21, align 8
  %248 = load i64, i64* %20, align 8
  %249 = call i8* @display_block(i8* %247, i64 %248)
  store i8* %249, i8** %13, align 8
  br label %250

250:                                              ; preds = %246, %242
  br label %282

251:                                              ; preds = %126
  %252 = load i8*, i8** %13, align 8
  %253 = call i64 @byte_get(i8* %252, i32 4)
  store i64 %253, i64* %20, align 8
  %254 = load i8*, i8** %13, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 4
  store i8* %255, i8** %21, align 8
  %256 = load i32, i32* %19, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %251
  %259 = load i8*, i8** %21, align 8
  %260 = load i64, i64* %20, align 8
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %13, align 8
  br label %266

262:                                              ; preds = %251
  %263 = load i8*, i8** %21, align 8
  %264 = load i64, i64* %20, align 8
  %265 = call i8* @display_block(i8* %263, i64 %264)
  store i8* %265, i8** %13, align 8
  br label %266

266:                                              ; preds = %262, %258
  br label %282

267:                                              ; preds = %126
  %268 = load i32, i32* %19, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  %271 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %272 = load i64, i64* %20, align 8
  %273 = load i64, i64* %20, align 8
  %274 = call i32 @fetch_indirect_string(i64 %273)
  %275 = call i32 (i8*, ...) @printf(i8* %271, i64 %272, i32 %274)
  br label %276

276:                                              ; preds = %270, %267
  br label %282

277:                                              ; preds = %126
  br label %282

278:                                              ; preds = %126
  %279 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %280 = load i64, i64* %12, align 8
  %281 = call i32 @warn(i8* %279, i64 %280)
  br label %282

282:                                              ; preds = %278, %277, %276, %266, %250, %234, %218, %194, %185, %157, %150, %143, %134
  %283 = load i32, i32* %19, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %282
  %286 = load i64, i64* @do_debug_loc, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i64, i64* @do_debug_ranges, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %416

291:                                              ; preds = %288, %285, %282
  %292 = load i64, i64* @num_debug_info_entries, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %416

294:                                              ; preds = %291
  %295 = load i64, i64* %11, align 8
  switch i64 %295, label %414 [
    i64 201, label %296
    i64 197, label %297
    i64 203, label %297
    i64 188, label %297
    i64 207, label %297
    i64 206, label %297
    i64 204, label %297
    i64 192, label %297
    i64 191, label %297
    i64 195, label %297
    i64 196, label %359
    i64 193, label %367
  ]

296:                                              ; preds = %294
  store i32 1, i32* @have_frame_base, align 4
  br label %297

297:                                              ; preds = %294, %294, %294, %294, %294, %294, %294, %294, %294, %296
  %298 = load i64, i64* %12, align 8
  %299 = icmp eq i64 %298, 177
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i64, i64* %12, align 8
  %302 = icmp eq i64 %301, 176
  br i1 %302, label %303, label %358

303:                                              ; preds = %300, %297
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %23, align 4
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %24, align 4
  %310 = load i32, i32* %23, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %303
  %313 = load i32, i32* %24, align 4
  %314 = load i32, i32* %23, align 4
  %315 = icmp uge i32 %313, %314
  br i1 %315, label %316, label %338

316:                                              ; preds = %312, %303
  %317 = load i32, i32* %23, align 4
  %318 = add i32 %317, 1024
  store i32 %318, i32* %23, align 4
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %23, align 4
  %323 = call i8* @xcrealloc(i32* %321, i32 %322, i32 4)
  %324 = bitcast i8* %323 to i32*
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 2
  store i32* %324, i32** %326, align 8
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %23, align 4
  %331 = call i8* @xcrealloc(i32* %329, i32 %330, i32 4)
  %332 = bitcast i8* %331 to i32*
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 3
  store i32* %332, i32** %334, align 8
  %335 = load i32, i32* %23, align 4
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 8
  br label %338

338:                                              ; preds = %316, %312
  %339 = load i64, i64* %20, align 8
  %340 = trunc i64 %339 to i32
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %24, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %340, i32* %346, align 4
  %347 = load i32, i32* @have_frame_base, align 4
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %24, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 %347, i32* %353, align 4
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = add i32 %356, 1
  store i32 %357, i32* %355, align 4
  br label %358

358:                                              ; preds = %338, %300
  br label %415

359:                                              ; preds = %294
  %360 = load i32, i32* @need_base_address, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load i64, i64* %20, align 8
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 4
  store i64 %363, i64* %365, align 8
  br label %366

366:                                              ; preds = %362, %359
  br label %415

367:                                              ; preds = %294
  %368 = load i64, i64* %12, align 8
  %369 = icmp eq i64 %368, 177
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = load i64, i64* %12, align 8
  %372 = icmp eq i64 %371, 176
  br i1 %372, label %373, label %413

373:                                              ; preds = %370, %367
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  store i32 %376, i32* %25, align 4
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 6
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %26, align 4
  %380 = load i32, i32* %25, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %373
  %383 = load i32, i32* %26, align 4
  %384 = load i32, i32* %25, align 4
  %385 = icmp uge i32 %383, %384
  br i1 %385, label %386, label %400

386:                                              ; preds = %382, %373
  %387 = load i32, i32* %25, align 4
  %388 = add i32 %387, 1024
  store i32 %388, i32* %25, align 4
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 7
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %25, align 4
  %393 = call i8* @xcrealloc(i32* %391, i32 %392, i32 4)
  %394 = bitcast i8* %393 to i32*
  %395 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 7
  store i32* %394, i32** %396, align 8
  %397 = load i32, i32* %25, align 4
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 5
  store i32 %397, i32* %399, align 8
  br label %400

400:                                              ; preds = %386, %382
  %401 = load i64, i64* %20, align 8
  %402 = trunc i64 %401 to i32
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 7
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %26, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %402, i32* %408, align 4
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %410, align 4
  br label %413

413:                                              ; preds = %400, %370
  br label %415

414:                                              ; preds = %294
  br label %415

415:                                              ; preds = %414, %413, %366, %358
  br label %416

416:                                              ; preds = %415, %291, %288
  %417 = load i32, i32* %19, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = load i8*, i8** %13, align 8
  store i8* %420, i8** %10, align 8
  br label %653

421:                                              ; preds = %416
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %423 = load i64, i64* %11, align 8
  switch i64 %423, label %650 [
    i64 199, label %424
    i64 198, label %443
    i64 202, label %503
    i64 208, label %541
    i64 189, label %552
    i64 190, label %563
    i64 200, label %574
    i64 205, label %587
    i64 194, label %609
    i64 201, label %618
    i64 197, label %619
    i64 203, label %619
    i64 188, label %619
    i64 207, label %619
    i64 206, label %619
    i64 204, label %619
    i64 192, label %619
    i64 191, label %619
    i64 195, label %619
  ]

424:                                              ; preds = %421
  %425 = load i64, i64* %20, align 8
  switch i64 %425, label %438 [
    i64 155, label %426
    i64 156, label %429
    i64 157, label %432
    i64 158, label %435
  ]

426:                                              ; preds = %424
  %427 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %428 = call i32 (i8*, ...) @printf(i8* %427)
  br label %442

429:                                              ; preds = %424
  %430 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %431 = call i32 (i8*, ...) @printf(i8* %430)
  br label %442

432:                                              ; preds = %424
  %433 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %434 = call i32 (i8*, ...) @printf(i8* %433)
  br label %442

435:                                              ; preds = %424
  %436 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %437 = call i32 (i8*, ...) @printf(i8* %436)
  br label %442

438:                                              ; preds = %424
  %439 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %440 = load i64, i64* %20, align 8
  %441 = call i32 (i8*, ...) @printf(i8* %439, i64 %440)
  br label %442

442:                                              ; preds = %438, %435, %432, %429, %426
  br label %651

443:                                              ; preds = %421
  %444 = load i64, i64* %20, align 8
  switch i64 %444, label %487 [
    i64 151, label %445
    i64 152, label %447
    i64 154, label %449
    i64 149, label %451
    i64 148, label %453
    i64 147, label %455
    i64 145, label %457
    i64 144, label %459
    i64 136, label %461
    i64 140, label %463
    i64 142, label %465
    i64 150, label %467
    i64 153, label %469
    i64 143, label %471
    i64 137, label %473
    i64 139, label %475
    i64 138, label %477
    i64 135, label %479
    i64 146, label %481
    i64 141, label %483
    i64 134, label %485
  ]

445:                                              ; preds = %443
  %446 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %502

447:                                              ; preds = %443
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %502

449:                                              ; preds = %443
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %502

451:                                              ; preds = %443
  %452 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %502

453:                                              ; preds = %443
  %454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %502

455:                                              ; preds = %443
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %502

457:                                              ; preds = %443
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  br label %502

459:                                              ; preds = %443
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  br label %502

461:                                              ; preds = %443
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %502

463:                                              ; preds = %443
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  br label %502

465:                                              ; preds = %443
  %466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %502

467:                                              ; preds = %443
  %468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %502

469:                                              ; preds = %443
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %502

471:                                              ; preds = %443
  %472 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  br label %502

473:                                              ; preds = %443
  %474 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  br label %502

475:                                              ; preds = %443
  %476 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  br label %502

477:                                              ; preds = %443
  %478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %502

479:                                              ; preds = %443
  %480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %502

481:                                              ; preds = %443
  %482 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  br label %502

483:                                              ; preds = %443
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  br label %502

485:                                              ; preds = %443
  %486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %502

487:                                              ; preds = %443
  %488 = load i64, i64* %20, align 8
  %489 = load i64, i64* @DW_LANG_lo_user, align 8
  %490 = icmp uge i64 %488, %489
  br i1 %490, label %491, label %498

491:                                              ; preds = %487
  %492 = load i64, i64* %20, align 8
  %493 = load i64, i64* @DW_LANG_hi_user, align 8
  %494 = icmp ule i64 %492, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %491
  %496 = load i64, i64* %20, align 8
  %497 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i64 %496)
  br label %501

498:                                              ; preds = %491, %487
  %499 = load i64, i64* %20, align 8
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 %499)
  br label %501

501:                                              ; preds = %498, %495
  br label %502

502:                                              ; preds = %501, %485, %483, %481, %479, %477, %475, %473, %471, %469, %467, %465, %463, %461, %459, %457, %455, %453, %451, %449, %447, %445
  br label %651

503:                                              ; preds = %421
  %504 = load i64, i64* %20, align 8
  switch i64 %504, label %527 [
    i64 209, label %505
    i64 219, label %507
    i64 218, label %509
    i64 217, label %511
    i64 215, label %513
    i64 213, label %515
    i64 212, label %517
    i64 211, label %519
    i64 210, label %521
    i64 214, label %523
    i64 216, label %525
  ]

505:                                              ; preds = %503
  %506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  br label %540

507:                                              ; preds = %503
  %508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  br label %540

509:                                              ; preds = %503
  %510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  br label %540

511:                                              ; preds = %503
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  br label %540

513:                                              ; preds = %503
  %514 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  br label %540

515:                                              ; preds = %503
  %516 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  br label %540

517:                                              ; preds = %503
  %518 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0))
  br label %540

519:                                              ; preds = %503
  %520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0))
  br label %540

521:                                              ; preds = %503
  %522 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0))
  br label %540

523:                                              ; preds = %503
  %524 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0))
  br label %540

525:                                              ; preds = %503
  %526 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0))
  br label %540

527:                                              ; preds = %503
  %528 = load i64, i64* %20, align 8
  %529 = load i64, i64* @DW_ATE_lo_user, align 8
  %530 = icmp uge i64 %528, %529
  br i1 %530, label %531, label %537

531:                                              ; preds = %527
  %532 = load i64, i64* %20, align 8
  %533 = load i64, i64* @DW_ATE_hi_user, align 8
  %534 = icmp ule i64 %532, %533
  br i1 %534, label %535, label %537

535:                                              ; preds = %531
  %536 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0))
  br label %539

537:                                              ; preds = %531, %527
  %538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0))
  br label %539

539:                                              ; preds = %537, %535
  br label %540

540:                                              ; preds = %539, %525, %523, %521, %519, %517, %515, %513, %511, %509, %507, %505
  br label %651

541:                                              ; preds = %421
  %542 = load i64, i64* %20, align 8
  switch i64 %542, label %549 [
    i64 220, label %543
    i64 221, label %545
    i64 222, label %547
  ]

543:                                              ; preds = %541
  %544 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0))
  br label %551

545:                                              ; preds = %541
  %546 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0))
  br label %551

547:                                              ; preds = %541
  %548 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0))
  br label %551

549:                                              ; preds = %541
  %550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0))
  br label %551

551:                                              ; preds = %549, %547, %545, %543
  br label %651

552:                                              ; preds = %421
  %553 = load i64, i64* %20, align 8
  switch i64 %553, label %560 [
    i64 129, label %554
    i64 130, label %556
    i64 128, label %558
  ]

554:                                              ; preds = %552
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  br label %562

556:                                              ; preds = %552
  %557 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0))
  br label %562

558:                                              ; preds = %552
  %559 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0))
  br label %562

560:                                              ; preds = %552
  %561 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0))
  br label %562

562:                                              ; preds = %560, %558, %556, %554
  br label %651

563:                                              ; preds = %421
  %564 = load i64, i64* %20, align 8
  switch i64 %564, label %571 [
    i64 133, label %565
    i64 131, label %567
    i64 132, label %569
  ]

565:                                              ; preds = %563
  %566 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0))
  br label %573

567:                                              ; preds = %563
  %568 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0))
  br label %573

569:                                              ; preds = %563
  %570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i64 0, i64 0))
  br label %573

571:                                              ; preds = %563
  %572 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i64 0, i64 0))
  br label %573

573:                                              ; preds = %571, %569, %567, %565
  br label %651

574:                                              ; preds = %421
  %575 = load i64, i64* %20, align 8
  switch i64 %575, label %584 [
    i64 161, label %576
    i64 159, label %578
    i64 160, label %580
    i64 162, label %582
  ]

576:                                              ; preds = %574
  %577 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0))
  br label %586

578:                                              ; preds = %574
  %579 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0))
  br label %586

580:                                              ; preds = %574
  %581 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0))
  br label %586

582:                                              ; preds = %574
  %583 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0))
  br label %586

584:                                              ; preds = %574
  %585 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0))
  br label %586

586:                                              ; preds = %584, %582, %580, %578, %576
  br label %651

587:                                              ; preds = %421
  %588 = load i64, i64* %20, align 8
  switch i64 %588, label %595 [
    i64 186, label %589
    i64 185, label %591
    i64 187, label %593
  ]

589:                                              ; preds = %587
  %590 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i64 0, i64 0))
  br label %608

591:                                              ; preds = %587
  %592 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0))
  br label %608

593:                                              ; preds = %587
  %594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0))
  br label %608

595:                                              ; preds = %587
  %596 = load i64, i64* %20, align 8
  %597 = load i64, i64* @DW_CC_lo_user, align 8
  %598 = icmp uge i64 %596, %597
  br i1 %598, label %599, label %605

599:                                              ; preds = %595
  %600 = load i64, i64* %20, align 8
  %601 = load i64, i64* @DW_CC_hi_user, align 8
  %602 = icmp ule i64 %600, %601
  br i1 %602, label %603, label %605

603:                                              ; preds = %599
  %604 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0))
  br label %607

605:                                              ; preds = %599, %595
  %606 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0))
  br label %607

607:                                              ; preds = %605, %603
  br label %608

608:                                              ; preds = %607, %593, %591, %589
  br label %651

609:                                              ; preds = %421
  %610 = load i64, i64* %20, align 8
  switch i64 %610, label %617 [
    i64 -1, label %611
    i64 0, label %613
    i64 1, label %615
  ]

611:                                              ; preds = %609
  %612 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0))
  br label %617

613:                                              ; preds = %609
  %614 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0))
  br label %617

615:                                              ; preds = %609
  %616 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0))
  br label %617

617:                                              ; preds = %609, %615, %613, %611
  br label %651

618:                                              ; preds = %421
  store i32 1, i32* @have_frame_base, align 4
  br label %619

619:                                              ; preds = %421, %421, %421, %421, %421, %421, %421, %421, %421, %618
  %620 = load i8*, i8** %21, align 8
  %621 = icmp ne i8* %620, null
  br i1 %621, label %622, label %639

622:                                              ; preds = %619
  %623 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  %624 = load i8*, i8** %21, align 8
  %625 = load i64, i64* %15, align 8
  %626 = load i64, i64* %20, align 8
  %627 = load i64, i64* %14, align 8
  %628 = call i32 @decode_location_expression(i8* %624, i64 %625, i64 %626, i64 %627)
  store i32 %628, i32* %27, align 4
  %629 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0))
  %630 = load i32, i32* %27, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %638

632:                                              ; preds = %622
  %633 = load i32, i32* @have_frame_base, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %638, label %635

635:                                              ; preds = %632
  %636 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0))
  %637 = call i32 (i8*, ...) @printf(i8* %636)
  br label %638

638:                                              ; preds = %635, %632, %622
  br label %649

639:                                              ; preds = %619
  %640 = load i64, i64* %12, align 8
  %641 = icmp eq i64 %640, 177
  br i1 %641, label %645, label %642

642:                                              ; preds = %639
  %643 = load i64, i64* %12, align 8
  %644 = icmp eq i64 %643, 176
  br i1 %644, label %645, label %648

645:                                              ; preds = %642, %639
  %646 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i64 0, i64 0))
  %647 = call i32 (i8*, ...) @printf(i8* %646)
  br label %648

648:                                              ; preds = %645, %642
  br label %649

649:                                              ; preds = %648, %638
  br label %651

650:                                              ; preds = %421
  br label %651

651:                                              ; preds = %650, %649, %617, %608, %586, %573, %562, %551, %540, %502, %442
  %652 = load i8*, i8** %13, align 8
  store i8* %652, i8** %10, align 8
  br label %653

653:                                              ; preds = %651, %419, %115
  %654 = load i8*, i8** %10, align 8
  ret i8* %654
}

declare dso_local i64 @byte_get(i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @read_leb128(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @get_FORM_name(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @display_block(i8*, i64) #1

declare dso_local i32 @fetch_indirect_string(i64) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i8* @xcrealloc(i32*, i32, i32) #1

declare dso_local i32 @decode_location_expression(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
