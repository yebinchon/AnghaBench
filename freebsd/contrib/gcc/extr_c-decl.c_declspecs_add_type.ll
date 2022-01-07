; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_declspecs_add_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_declspecs_add_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.c_declspecs = type { i32, i32, i32, i32, i32, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.c_typespec = type { i8*, i64 }

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"two or more data types in declaration specifiers\00", align 1
@RID_LAST_MODIFIER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%<long long long%> is too long for GCC\00", align 1
@cts_double = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"both %<long long%> and %<double%> in declaration specifiers\00", align 1
@pedantic = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@in_system_header = common dso_local global i32 0, align 4
@warn_long_long = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"ISO C90 does not support %<long long%>\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"both %<long%> and %<short%> in declaration specifiers\00", align 1
@cts_void = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"both %<long%> and %<void%> in declaration specifiers\00", align 1
@cts_bool = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"both %<long%> and %<_Bool%> in declaration specifiers\00", align 1
@cts_char = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"both %<long%> and %<char%> in declaration specifiers\00", align 1
@cts_float = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"both %<long%> and %<float%> in declaration specifiers\00", align 1
@cts_dfloat32 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [59 x i8] c"both %<long%> and %<_Decimal32%> in declaration specifiers\00", align 1
@cts_dfloat64 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [59 x i8] c"both %<long%> and %<_Decimal64%> in declaration specifiers\00", align 1
@cts_dfloat128 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [60 x i8] c"both %<long%> and %<_Decimal128%> in declaration specifiers\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"both %<short%> and %<void%> in declaration specifiers\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"both %<short%> and %<_Bool%> in declaration specifiers\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"both %<short%> and %<char%> in declaration specifiers\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"both %<short%> and %<float%> in declaration specifiers\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"both %<short%> and %<double%> in declaration specifiers\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"both %<short%> and %<_Decimal32%> in declaration specifiers\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"both %<short%> and %<_Decimal64%> in declaration specifiers\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"both %<short%> and %<_Decimal128%> in declaration specifiers\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"both %<signed%> and %<unsigned%> in declaration specifiers\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"both %<signed%> and %<void%> in declaration specifiers\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"both %<signed%> and %<_Bool%> in declaration specifiers\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"both %<signed%> and %<float%> in declaration specifiers\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"both %<signed%> and %<double%> in declaration specifiers\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"both %<signed%> and %<_Decimal32%> in declaration specifiers\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"both %<signed%> and %<_Decimal64%> in declaration specifiers\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"both %<signed%> and %<_Decimal128%> in declaration specifiers\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"both %<unsigned%> and %<void%> in declaration specifiers\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"both %<unsigned%> and %<_Bool%> in declaration specifiers\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"both %<unsigned%> and %<float%> in declaration specifiers\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"both %<unsigned%> and %<double%> in declaration specifiers\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"both %<unsigned%> and %<_Decimal32%> in declaration specifiers\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"both %<unsigned%> and %<_Decimal64%> in declaration specifiers\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"both %<unsigned%> and %<_Decimal128%> in declaration specifiers\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"ISO C90 does not support complex types\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"both %<complex%> and %<void%> in declaration specifiers\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"both %<complex%> and %<_Bool%> in declaration specifiers\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"both %<complex%> and %<_Decimal32%> in declaration specifiers\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c"both %<complex%> and %<_Decimal64%> in declaration specifiers\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"both %<complex%> and %<_Decimal128%> in declaration specifiers\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"duplicate %qE\00", align 1
@cts_none = common dso_local global i64 0, align 8
@cts_int = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"_Decimal32\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"_Decimal64\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"_Decimal128\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"both %<long long%> and %<%s%> in declaration specifiers\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"both %<long%> and %<%s%> in declaration specifiers\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"both %<short%> and %<%s%> in declaration specifiers\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"both %<signed%> and %<%s%> in declaration specifiers\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"both %<unsigned%> and %<%s%> in declaration specifiers\00", align 1
@.str.50 = private unnamed_addr constant [54 x i8] c"both %<complex%> and %<%s%> in declaration specifiers\00", align 1
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [53 x i8] c"decimal floating point not supported for this target\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"ISO C does not support decimal floating point\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [43 x i8] c"%qE fails to be a typedef or built in type\00", align 1
@ERROR_MARK = common dso_local global i64 0, align 8
@ctsk_tagdef = common dso_local global i64 0, align 8
@ctsk_tagfirstref = common dso_local global i64 0, align 8
@ctsk_typeof = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c_declspecs* @declspecs_add_type(%struct.c_declspecs* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.c_declspecs*, align 8
  %5 = alloca %struct.c_typespec, align 8
  %6 = alloca %struct.c_declspecs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = bitcast %struct.c_typespec* %5 to { i8*, i64 }*
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 0
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 1
  store i64 %2, i64* %14, align 8
  store %struct.c_declspecs* %0, %struct.c_declspecs** %6, align 8
  %15 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %5, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %18 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %20 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %22 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @TREE_DEPRECATED(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %28 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @TREE_UNAVAILABLE(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %35 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %34, i32 0, i32 4
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @TREE_CODE(i8* %37)
  %39 = load i64, i64* @IDENTIFIER_NODE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %784

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @C_IS_RESERVED_WORD(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %784

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @C_RID_CODE(i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %49 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %54, %struct.c_declspecs** %4, align 8
  br label %917

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* @RID_LAST_MODIFIER, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %485

60:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %475 [
    i32 132, label %62
    i32 131, label %173
    i32 130, label %259
    i32 129, label %336
    i32 139, label %413
  ]

62:                                               ; preds = %60
  %63 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %64 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %477

69:                                               ; preds = %62
  %70 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %71 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %76 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @cts_double, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %477

82:                                               ; preds = %74
  %83 = load i32, i32* @pedantic, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* @flag_isoc99, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @in_system_header, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @warn_long_long, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91, %88, %85, %82
  %97 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %98 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %97, i32 0, i32 6
  store i32 1, i32* %98, align 8
  br label %477

99:                                               ; preds = %69
  %100 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %101 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %172

106:                                              ; preds = %99
  %107 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %108 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @cts_void, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %171

114:                                              ; preds = %106
  %115 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %116 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %115, i32 0, i32 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @cts_bool, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %170

122:                                              ; preds = %114
  %123 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %124 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @cts_char, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %169

130:                                              ; preds = %122
  %131 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %132 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @cts_float, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  br label %168

138:                                              ; preds = %130
  %139 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %140 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @cts_dfloat32, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  br label %167

146:                                              ; preds = %138
  %147 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %148 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %147, i32 0, i32 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @cts_dfloat64, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  br label %166

154:                                              ; preds = %146
  %155 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %156 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @cts_dfloat128, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  br label %165

162:                                              ; preds = %154
  %163 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %164 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %163, i32 0, i32 7
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %160
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %144
  br label %168

168:                                              ; preds = %167, %136
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %120
  br label %171

171:                                              ; preds = %170, %112
  br label %172

172:                                              ; preds = %171, %104
  br label %477

173:                                              ; preds = %60
  %174 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %175 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %9, align 4
  %177 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %178 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %258

183:                                              ; preds = %173
  %184 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %185 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %184, i32 0, i32 8
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @cts_void, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0))
  br label %257

191:                                              ; preds = %183
  %192 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %193 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %192, i32 0, i32 8
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @cts_bool, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0))
  br label %256

199:                                              ; preds = %191
  %200 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %201 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @cts_char, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  br label %255

207:                                              ; preds = %199
  %208 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %209 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %208, i32 0, i32 8
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @cts_float, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  br label %254

215:                                              ; preds = %207
  %216 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %217 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @cts_double, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0))
  br label %253

223:                                              ; preds = %215
  %224 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %225 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @cts_dfloat32, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %223
  %230 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0))
  br label %252

231:                                              ; preds = %223
  %232 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %233 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %232, i32 0, i32 8
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @cts_dfloat64, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i64 0, i64 0))
  br label %251

239:                                              ; preds = %231
  %240 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %241 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @cts_dfloat128, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0))
  br label %250

247:                                              ; preds = %239
  %248 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %249 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %248, i32 0, i32 9
  store i32 1, i32* %249, align 8
  br label %250

250:                                              ; preds = %247, %245
  br label %251

251:                                              ; preds = %250, %237
  br label %252

252:                                              ; preds = %251, %229
  br label %253

253:                                              ; preds = %252, %221
  br label %254

254:                                              ; preds = %253, %213
  br label %255

255:                                              ; preds = %254, %205
  br label %256

256:                                              ; preds = %255, %197
  br label %257

257:                                              ; preds = %256, %189
  br label %258

258:                                              ; preds = %257, %181
  br label %477

259:                                              ; preds = %60
  %260 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %261 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %9, align 4
  %263 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %264 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0))
  br label %335

269:                                              ; preds = %259
  %270 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %271 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %270, i32 0, i32 8
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @cts_void, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0))
  br label %334

277:                                              ; preds = %269
  %278 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %279 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @cts_bool, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0))
  br label %333

285:                                              ; preds = %277
  %286 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %287 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %286, i32 0, i32 8
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @cts_float, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0))
  br label %332

293:                                              ; preds = %285
  %294 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %295 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %294, i32 0, i32 8
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @cts_double, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %293
  %300 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0))
  br label %331

301:                                              ; preds = %293
  %302 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %303 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %302, i32 0, i32 8
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @cts_dfloat32, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %301
  %308 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i64 0, i64 0))
  br label %330

309:                                              ; preds = %301
  %310 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %311 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %310, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @cts_dfloat64, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0))
  br label %329

317:                                              ; preds = %309
  %318 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %319 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %318, i32 0, i32 8
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @cts_dfloat128, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %317
  %324 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i64 0, i64 0))
  br label %328

325:                                              ; preds = %317
  %326 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %327 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %326, i32 0, i32 10
  store i32 1, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %323
  br label %329

329:                                              ; preds = %328, %315
  br label %330

330:                                              ; preds = %329, %307
  br label %331

331:                                              ; preds = %330, %299
  br label %332

332:                                              ; preds = %331, %291
  br label %333

333:                                              ; preds = %332, %283
  br label %334

334:                                              ; preds = %333, %275
  br label %335

335:                                              ; preds = %334, %267
  br label %477

336:                                              ; preds = %60
  %337 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %338 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 8
  store i32 %339, i32* %9, align 4
  %340 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %341 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %340, i32 0, i32 10
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %336
  %345 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0))
  br label %412

346:                                              ; preds = %336
  %347 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %348 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %347, i32 0, i32 8
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @cts_void, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %346
  %353 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i64 0, i64 0))
  br label %411

354:                                              ; preds = %346
  %355 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %356 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %355, i32 0, i32 8
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @cts_bool, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  br label %410

362:                                              ; preds = %354
  %363 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %364 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %363, i32 0, i32 8
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @cts_float, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %362
  %369 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i64 0, i64 0))
  br label %409

370:                                              ; preds = %362
  %371 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %372 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %371, i32 0, i32 8
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @cts_double, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i64 0, i64 0))
  br label %408

378:                                              ; preds = %370
  %379 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %380 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %379, i32 0, i32 8
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @cts_dfloat32, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %378
  %385 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0))
  br label %407

386:                                              ; preds = %378
  %387 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %388 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %387, i32 0, i32 8
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @cts_dfloat64, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %386
  %393 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.33, i64 0, i64 0))
  br label %406

394:                                              ; preds = %386
  %395 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %396 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %395, i32 0, i32 8
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @cts_dfloat128, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %394
  %401 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0))
  br label %405

402:                                              ; preds = %394
  %403 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %404 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %403, i32 0, i32 11
  store i32 1, i32* %404, align 8
  br label %405

405:                                              ; preds = %402, %400
  br label %406

406:                                              ; preds = %405, %392
  br label %407

407:                                              ; preds = %406, %384
  br label %408

408:                                              ; preds = %407, %376
  br label %409

409:                                              ; preds = %408, %368
  br label %410

410:                                              ; preds = %409, %360
  br label %411

411:                                              ; preds = %410, %352
  br label %412

412:                                              ; preds = %411, %344
  br label %477

413:                                              ; preds = %60
  %414 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %415 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %414, i32 0, i32 12
  %416 = load i32, i32* %415, align 4
  store i32 %416, i32* %9, align 4
  %417 = load i32, i32* @pedantic, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %413
  %420 = load i32, i32* @flag_isoc99, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %419
  %423 = load i32, i32* @in_system_header, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %422
  %426 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0))
  br label %427

427:                                              ; preds = %425, %422, %419, %413
  %428 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %429 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %428, i32 0, i32 8
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @cts_void, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %435

433:                                              ; preds = %427
  %434 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0))
  br label %474

435:                                              ; preds = %427
  %436 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %437 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %436, i32 0, i32 8
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @cts_bool, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %435
  %442 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i64 0, i64 0))
  br label %473

443:                                              ; preds = %435
  %444 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %445 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %444, i32 0, i32 8
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @cts_dfloat32, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %451

449:                                              ; preds = %443
  %450 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i64 0, i64 0))
  br label %472

451:                                              ; preds = %443
  %452 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %453 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %452, i32 0, i32 8
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @cts_dfloat64, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %459

457:                                              ; preds = %451
  %458 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i64 0, i64 0))
  br label %471

459:                                              ; preds = %451
  %460 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %461 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %460, i32 0, i32 8
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @cts_dfloat128, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %467

465:                                              ; preds = %459
  %466 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i64 0, i64 0))
  br label %470

467:                                              ; preds = %459
  %468 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %469 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %468, i32 0, i32 12
  store i32 1, i32* %469, align 4
  br label %470

470:                                              ; preds = %467, %465
  br label %471

471:                                              ; preds = %470, %457
  br label %472

472:                                              ; preds = %471, %449
  br label %473

473:                                              ; preds = %472, %441
  br label %474

474:                                              ; preds = %473, %433
  br label %477

475:                                              ; preds = %60
  %476 = call i32 (...) @gcc_unreachable()
  br label %477

477:                                              ; preds = %475, %474, %412, %335, %258, %172, %96, %80, %67
  %478 = load i32, i32* %9, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i8*, i8** %7, align 8
  %482 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* %481)
  br label %483

483:                                              ; preds = %480, %477
  %484 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %484, %struct.c_declspecs** %4, align 8
  br label %917

485:                                              ; preds = %55
  %486 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %487 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %486, i32 0, i32 8
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @cts_none, align 8
  %490 = icmp ne i64 %488, %489
  br i1 %490, label %491, label %494

491:                                              ; preds = %485
  %492 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %493 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %493, %struct.c_declspecs** %4, align 8
  br label %917

494:                                              ; preds = %485
  %495 = load i32, i32* %8, align 4
  switch i32 %495, label %781 [
    i32 128, label %496
    i32 141, label %541
    i32 140, label %586
    i32 133, label %607
    i32 134, label %612
    i32 135, label %649
    i32 137, label %686
    i32 136, label %686
    i32 138, label %686
  ]

496:                                              ; preds = %494
  %497 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %498 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %496
  %502 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %539

503:                                              ; preds = %496
  %504 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %505 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %504, i32 0, i32 9
  %506 = load i32, i32* %505, align 8
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %503
  %509 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0))
  br label %538

510:                                              ; preds = %503
  %511 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %512 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %511, i32 0, i32 10
  %513 = load i32, i32* %512, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %517

515:                                              ; preds = %510
  %516 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0))
  br label %537

517:                                              ; preds = %510
  %518 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %519 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %518, i32 0, i32 11
  %520 = load i32, i32* %519, align 8
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %517
  %523 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i64 0, i64 0))
  br label %536

524:                                              ; preds = %517
  %525 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %526 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %525, i32 0, i32 12
  %527 = load i32, i32* %526, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %531

529:                                              ; preds = %524
  %530 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0))
  br label %535

531:                                              ; preds = %524
  %532 = load i64, i64* @cts_void, align 8
  %533 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %534 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %533, i32 0, i32 8
  store i64 %532, i64* %534, align 8
  br label %535

535:                                              ; preds = %531, %529
  br label %536

536:                                              ; preds = %535, %522
  br label %537

537:                                              ; preds = %536, %515
  br label %538

538:                                              ; preds = %537, %508
  br label %539

539:                                              ; preds = %538, %501
  %540 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %540, %struct.c_declspecs** %4, align 8
  br label %917

541:                                              ; preds = %494
  %542 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %543 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %548

546:                                              ; preds = %541
  %547 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %584

548:                                              ; preds = %541
  %549 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %550 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %549, i32 0, i32 9
  %551 = load i32, i32* %550, align 8
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %555

553:                                              ; preds = %548
  %554 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0))
  br label %583

555:                                              ; preds = %548
  %556 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %557 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %556, i32 0, i32 10
  %558 = load i32, i32* %557, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %555
  %561 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0))
  br label %582

562:                                              ; preds = %555
  %563 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %564 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %563, i32 0, i32 11
  %565 = load i32, i32* %564, align 8
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %562
  %568 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  br label %581

569:                                              ; preds = %562
  %570 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %571 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %570, i32 0, i32 12
  %572 = load i32, i32* %571, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %576

574:                                              ; preds = %569
  %575 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i64 0, i64 0))
  br label %580

576:                                              ; preds = %569
  %577 = load i64, i64* @cts_bool, align 8
  %578 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %579 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %578, i32 0, i32 8
  store i64 %577, i64* %579, align 8
  br label %580

580:                                              ; preds = %576, %574
  br label %581

581:                                              ; preds = %580, %567
  br label %582

582:                                              ; preds = %581, %560
  br label %583

583:                                              ; preds = %582, %553
  br label %584

584:                                              ; preds = %583, %546
  %585 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %585, %struct.c_declspecs** %4, align 8
  br label %917

586:                                              ; preds = %494
  %587 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %588 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %587, i32 0, i32 7
  %589 = load i32, i32* %588, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %593

591:                                              ; preds = %586
  %592 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %605

593:                                              ; preds = %586
  %594 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %595 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %594, i32 0, i32 9
  %596 = load i32, i32* %595, align 8
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %593
  %599 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  br label %604

600:                                              ; preds = %593
  %601 = load i64, i64* @cts_char, align 8
  %602 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %603 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %602, i32 0, i32 8
  store i64 %601, i64* %603, align 8
  br label %604

604:                                              ; preds = %600, %598
  br label %605

605:                                              ; preds = %604, %591
  %606 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %606, %struct.c_declspecs** %4, align 8
  br label %917

607:                                              ; preds = %494
  %608 = load i64, i64* @cts_int, align 8
  %609 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %610 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %609, i32 0, i32 8
  store i64 %608, i64* %610, align 8
  %611 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %611, %struct.c_declspecs** %4, align 8
  br label %917

612:                                              ; preds = %494
  %613 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %614 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %613, i32 0, i32 7
  %615 = load i32, i32* %614, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %619

617:                                              ; preds = %612
  %618 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  br label %647

619:                                              ; preds = %612
  %620 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %621 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %620, i32 0, i32 9
  %622 = load i32, i32* %621, align 8
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %626

624:                                              ; preds = %619
  %625 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  br label %646

626:                                              ; preds = %619
  %627 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %628 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %627, i32 0, i32 10
  %629 = load i32, i32* %628, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %633

631:                                              ; preds = %626
  %632 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0))
  br label %645

633:                                              ; preds = %626
  %634 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %635 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %634, i32 0, i32 11
  %636 = load i32, i32* %635, align 8
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %640

638:                                              ; preds = %633
  %639 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i64 0, i64 0))
  br label %644

640:                                              ; preds = %633
  %641 = load i64, i64* @cts_float, align 8
  %642 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %643 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %642, i32 0, i32 8
  store i64 %641, i64* %643, align 8
  br label %644

644:                                              ; preds = %640, %638
  br label %645

645:                                              ; preds = %644, %631
  br label %646

646:                                              ; preds = %645, %624
  br label %647

647:                                              ; preds = %646, %617
  %648 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %648, %struct.c_declspecs** %4, align 8
  br label %917

649:                                              ; preds = %494
  %650 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %651 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %650, i32 0, i32 6
  %652 = load i32, i32* %651, align 8
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %656

654:                                              ; preds = %649
  %655 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %684

656:                                              ; preds = %649
  %657 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %658 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %657, i32 0, i32 9
  %659 = load i32, i32* %658, align 8
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %663

661:                                              ; preds = %656
  %662 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0))
  br label %683

663:                                              ; preds = %656
  %664 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %665 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %664, i32 0, i32 10
  %666 = load i32, i32* %665, align 4
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %670

668:                                              ; preds = %663
  %669 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0))
  br label %682

670:                                              ; preds = %663
  %671 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %672 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %671, i32 0, i32 11
  %673 = load i32, i32* %672, align 8
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %677

675:                                              ; preds = %670
  %676 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i64 0, i64 0))
  br label %681

677:                                              ; preds = %670
  %678 = load i64, i64* @cts_double, align 8
  %679 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %680 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %679, i32 0, i32 8
  store i64 %678, i64* %680, align 8
  br label %681

681:                                              ; preds = %677, %675
  br label %682

682:                                              ; preds = %681, %668
  br label %683

683:                                              ; preds = %682, %661
  br label %684

684:                                              ; preds = %683, %654
  %685 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %685, %struct.c_declspecs** %4, align 8
  br label %917

686:                                              ; preds = %494, %494, %494
  %687 = load i32, i32* %8, align 4
  %688 = icmp eq i32 %687, 137
  br i1 %688, label %689, label %690

689:                                              ; preds = %686
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8** %10, align 8
  br label %696

690:                                              ; preds = %686
  %691 = load i32, i32* %8, align 4
  %692 = icmp eq i32 %691, 136
  br i1 %692, label %693, label %694

693:                                              ; preds = %690
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8** %10, align 8
  br label %695

694:                                              ; preds = %690
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8** %10, align 8
  br label %695

695:                                              ; preds = %694, %693
  br label %696

696:                                              ; preds = %695, %689
  %697 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %698 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %697, i32 0, i32 6
  %699 = load i32, i32* %698, align 8
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %704

701:                                              ; preds = %696
  %702 = load i8*, i8** %10, align 8
  %703 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i8* %702)
  br label %704

704:                                              ; preds = %701, %696
  %705 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %706 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %705, i32 0, i32 7
  %707 = load i32, i32* %706, align 4
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %712

709:                                              ; preds = %704
  %710 = load i8*, i8** %10, align 8
  %711 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i8* %710)
  br label %768

712:                                              ; preds = %704
  %713 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %714 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %713, i32 0, i32 9
  %715 = load i32, i32* %714, align 8
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %720

717:                                              ; preds = %712
  %718 = load i8*, i8** %10, align 8
  %719 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i64 0, i64 0), i8* %718)
  br label %767

720:                                              ; preds = %712
  %721 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %722 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %721, i32 0, i32 10
  %723 = load i32, i32* %722, align 4
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %728

725:                                              ; preds = %720
  %726 = load i8*, i8** %10, align 8
  %727 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i64 0, i64 0), i8* %726)
  br label %766

728:                                              ; preds = %720
  %729 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %730 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %729, i32 0, i32 11
  %731 = load i32, i32* %730, align 8
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %736

733:                                              ; preds = %728
  %734 = load i8*, i8** %10, align 8
  %735 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i64 0, i64 0), i8* %734)
  br label %765

736:                                              ; preds = %728
  %737 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %738 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %737, i32 0, i32 12
  %739 = load i32, i32* %738, align 4
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %736
  %742 = load i8*, i8** %10, align 8
  %743 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i64 0, i64 0), i8* %742)
  br label %764

744:                                              ; preds = %736
  %745 = load i32, i32* %8, align 4
  %746 = icmp eq i32 %745, 137
  br i1 %746, label %747, label %751

747:                                              ; preds = %744
  %748 = load i64, i64* @cts_dfloat32, align 8
  %749 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %750 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %749, i32 0, i32 8
  store i64 %748, i64* %750, align 8
  br label %763

751:                                              ; preds = %744
  %752 = load i32, i32* %8, align 4
  %753 = icmp eq i32 %752, 136
  br i1 %753, label %754, label %758

754:                                              ; preds = %751
  %755 = load i64, i64* @cts_dfloat64, align 8
  %756 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %757 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %756, i32 0, i32 8
  store i64 %755, i64* %757, align 8
  br label %762

758:                                              ; preds = %751
  %759 = load i64, i64* @cts_dfloat128, align 8
  %760 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %761 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %760, i32 0, i32 8
  store i64 %759, i64* %761, align 8
  br label %762

762:                                              ; preds = %758, %754
  br label %763

763:                                              ; preds = %762, %747
  br label %764

764:                                              ; preds = %763, %741
  br label %765

765:                                              ; preds = %764, %733
  br label %766

766:                                              ; preds = %765, %725
  br label %767

767:                                              ; preds = %766, %717
  br label %768

768:                                              ; preds = %767, %709
  %769 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %770 = call i32 (...) %769()
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %774, label %772

772:                                              ; preds = %768
  %773 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i64 0, i64 0))
  br label %774

774:                                              ; preds = %772, %768
  %775 = load i32, i32* @pedantic, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %779

777:                                              ; preds = %774
  %778 = call i32 @pedwarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i64 0, i64 0))
  br label %779

779:                                              ; preds = %777, %774
  %780 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %780, %struct.c_declspecs** %4, align 8
  br label %917

781:                                              ; preds = %494
  br label %782

782:                                              ; preds = %781
  br label %783

783:                                              ; preds = %782
  br label %784

784:                                              ; preds = %783, %41, %36
  %785 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %786 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %785, i32 0, i32 5
  %787 = load i8*, i8** %786, align 8
  %788 = icmp ne i8* %787, null
  br i1 %788, label %820, label %789

789:                                              ; preds = %784
  %790 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %791 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %790, i32 0, i32 8
  %792 = load i64, i64* %791, align 8
  %793 = load i64, i64* @cts_none, align 8
  %794 = icmp ne i64 %792, %793
  br i1 %794, label %820, label %795

795:                                              ; preds = %789
  %796 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %797 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %796, i32 0, i32 7
  %798 = load i32, i32* %797, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %820, label %800

800:                                              ; preds = %795
  %801 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %802 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %801, i32 0, i32 9
  %803 = load i32, i32* %802, align 8
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %820, label %805

805:                                              ; preds = %800
  %806 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %807 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %806, i32 0, i32 10
  %808 = load i32, i32* %807, align 4
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %820, label %810

810:                                              ; preds = %805
  %811 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %812 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %811, i32 0, i32 11
  %813 = load i32, i32* %812, align 8
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %820, label %815

815:                                              ; preds = %810
  %816 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %817 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %816, i32 0, i32 12
  %818 = load i32, i32* %817, align 4
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %822

820:                                              ; preds = %815, %810, %805, %800, %795, %789, %784
  %821 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %915

822:                                              ; preds = %815
  %823 = load i8*, i8** %7, align 8
  %824 = call i64 @TREE_CODE(i8* %823)
  %825 = load i64, i64* @TYPE_DECL, align 8
  %826 = icmp eq i64 %824, %825
  br i1 %826, label %827, label %850

827:                                              ; preds = %822
  %828 = load i8*, i8** %7, align 8
  %829 = call i64 @TREE_TYPE(i8* %828)
  %830 = load i64, i64* @error_mark_node, align 8
  %831 = icmp eq i64 %829, %830
  br i1 %831, label %832, label %833

832:                                              ; preds = %827
  br label %849

833:                                              ; preds = %827
  %834 = load i8*, i8** %7, align 8
  %835 = call i64 @TREE_TYPE(i8* %834)
  %836 = inttoptr i64 %835 to i8*
  %837 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %838 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %837, i32 0, i32 5
  store i8* %836, i8** %838, align 8
  %839 = load i8*, i8** %7, align 8
  %840 = call i32 @DECL_ATTRIBUTES(i8* %839)
  %841 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %842 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %841, i32 0, i32 16
  store i32 %840, i32* %842, align 4
  %843 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %844 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %843, i32 0, i32 13
  store i32 1, i32* %844, align 8
  %845 = load i8*, i8** %7, align 8
  %846 = call i32 @C_TYPEDEF_EXPLICITLY_SIGNED(i8* %845)
  %847 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %848 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %847, i32 0, i32 15
  store i32 %846, i32* %848, align 8
  br label %849

849:                                              ; preds = %833, %832
  br label %914

850:                                              ; preds = %822
  %851 = load i8*, i8** %7, align 8
  %852 = call i64 @TREE_CODE(i8* %851)
  %853 = load i64, i64* @IDENTIFIER_NODE, align 8
  %854 = icmp eq i64 %852, %853
  br i1 %854, label %855, label %882

855:                                              ; preds = %850
  %856 = load i8*, i8** %7, align 8
  %857 = call i8* @lookup_name(i8* %856)
  store i8* %857, i8** %11, align 8
  %858 = load i8*, i8** %11, align 8
  %859 = icmp ne i8* %858, null
  br i1 %859, label %860, label %865

860:                                              ; preds = %855
  %861 = load i8*, i8** %11, align 8
  %862 = call i64 @TREE_CODE(i8* %861)
  %863 = load i64, i64* @TYPE_DECL, align 8
  %864 = icmp ne i64 %862, %863
  br i1 %864, label %865, label %868

865:                                              ; preds = %860, %855
  %866 = load i8*, i8** %7, align 8
  %867 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.53, i64 0, i64 0), i8* %866)
  br label %881

868:                                              ; preds = %860
  %869 = load i8*, i8** %11, align 8
  %870 = call i64 @TREE_TYPE(i8* %869)
  %871 = load i64, i64* @error_mark_node, align 8
  %872 = icmp eq i64 %870, %871
  br i1 %872, label %873, label %874

873:                                              ; preds = %868
  br label %880

874:                                              ; preds = %868
  %875 = load i8*, i8** %11, align 8
  %876 = call i64 @TREE_TYPE(i8* %875)
  %877 = inttoptr i64 %876 to i8*
  %878 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %879 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %878, i32 0, i32 5
  store i8* %877, i8** %879, align 8
  br label %880

880:                                              ; preds = %874, %873
  br label %881

881:                                              ; preds = %880, %865
  br label %913

882:                                              ; preds = %850
  %883 = load i8*, i8** %7, align 8
  %884 = call i64 @TREE_CODE(i8* %883)
  %885 = load i64, i64* @ERROR_MARK, align 8
  %886 = icmp ne i64 %884, %885
  br i1 %886, label %887, label %912

887:                                              ; preds = %882
  %888 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %5, i32 0, i32 1
  %889 = load i64, i64* %888, align 8
  %890 = load i64, i64* @ctsk_tagdef, align 8
  %891 = icmp eq i64 %889, %890
  br i1 %891, label %897, label %892

892:                                              ; preds = %887
  %893 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %5, i32 0, i32 1
  %894 = load i64, i64* %893, align 8
  %895 = load i64, i64* @ctsk_tagfirstref, align 8
  %896 = icmp eq i64 %894, %895
  br i1 %896, label %897, label %900

897:                                              ; preds = %892, %887
  %898 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %899 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %898, i32 0, i32 14
  store i32 1, i32* %899, align 4
  br label %900

900:                                              ; preds = %897, %892
  %901 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %5, i32 0, i32 1
  %902 = load i64, i64* %901, align 8
  %903 = load i64, i64* @ctsk_typeof, align 8
  %904 = icmp eq i64 %902, %903
  br i1 %904, label %905, label %908

905:                                              ; preds = %900
  %906 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %907 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %906, i32 0, i32 13
  store i32 1, i32* %907, align 8
  br label %908

908:                                              ; preds = %905, %900
  %909 = load i8*, i8** %7, align 8
  %910 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %911 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %910, i32 0, i32 5
  store i8* %909, i8** %911, align 8
  br label %912

912:                                              ; preds = %908, %882
  br label %913

913:                                              ; preds = %912, %881
  br label %914

914:                                              ; preds = %913, %849
  br label %915

915:                                              ; preds = %914, %820
  %916 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  store %struct.c_declspecs* %916, %struct.c_declspecs** %4, align 8
  br label %917

917:                                              ; preds = %915, %779, %684, %647, %607, %605, %584, %539, %491, %483, %52
  %918 = load %struct.c_declspecs*, %struct.c_declspecs** %4, align 8
  ret %struct.c_declspecs* %918
}

declare dso_local i64 @TREE_DEPRECATED(i8*) #1

declare dso_local i64 @TREE_UNAVAILABLE(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @C_IS_RESERVED_WORD(i8*) #1

declare dso_local i32 @C_RID_CODE(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @TREE_TYPE(i8*) #1

declare dso_local i32 @DECL_ATTRIBUTES(i8*) #1

declare dso_local i32 @C_TYPEDEF_EXPLICITLY_SIGNED(i8*) #1

declare dso_local i8* @lookup_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
