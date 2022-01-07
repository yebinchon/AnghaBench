; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_recursive_dump_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_recursive_dump_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type opaque
%struct.TYPE_2__ = type { i8* }

@dont_print_type_obstack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"type node \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c" <same as already seen type>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"name '%s' (\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"tagname '%s' (\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"code 0x%x \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(TYPE_CODE_UNDEF)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"(TYPE_CODE_PTR)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"(TYPE_CODE_ARRAY)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"(TYPE_CODE_STRUCT)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"(TYPE_CODE_UNION)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"(TYPE_CODE_ENUM)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"(TYPE_CODE_FUNC)\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"(TYPE_CODE_INT)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"(TYPE_CODE_FLT)\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"(TYPE_CODE_VOID)\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"(TYPE_CODE_SET)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"(TYPE_CODE_RANGE)\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"(TYPE_CODE_STRING)\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"(TYPE_CODE_BITSTRING)\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"(TYPE_CODE_ERROR)\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"(TYPE_CODE_MEMBER)\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"(TYPE_CODE_METHOD)\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"(TYPE_CODE_REF)\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"(TYPE_CODE_CHAR)\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"(TYPE_CODE_BOOL)\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"(TYPE_CODE_COMPLEX)\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"(TYPE_CODE_TYPEDEF)\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"(TYPE_CODE_TEMPLATE)\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"(TYPE_CODE_TEMPLATE_ARG)\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"(TYPE_CODE_NAMESPACE)\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"(UNKNOWN TYPE CODE)\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"length %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"upper_bound_type 0x%x \00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"lower_bound_type 0x%x \00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"objfile \00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"target_type \00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"pointer_type \00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"reference_type \00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"type_chain \00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"instance_flags 0x%x\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c" TYPE_FLAG_CONST\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c" TYPE_FLAG_VOLATILE\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c" TYPE_FLAG_CODE_SPACE\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c" TYPE_FLAG_DATA_SPACE\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c" TYPE_FLAG_ADDRESS_CLASS_1\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c" TYPE_FLAG_ADDRESS_CLASS_2\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"flags 0x%x\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c" TYPE_FLAG_UNSIGNED\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c" TYPE_FLAG_NOSIGN\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c" TYPE_FLAG_STUB\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c" TYPE_FLAG_TARGET_STUB\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c" TYPE_FLAG_STATIC\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c" TYPE_FLAG_PROTOTYPED\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c" TYPE_FLAG_INCOMPLETE\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c" TYPE_FLAG_VARARGS\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c" TYPE_FLAG_VECTOR\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"nfields %d \00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"[%d] bitpos %d bitsize %d type \00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c" name '%s' (\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"vptr_basetype \00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"vptr_fieldno %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"cplus_stuff \00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"floatformat \00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"type_specific \00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c" (unknown data form)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recursive_dump_type(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.type**, align 8
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @obstack_begin(i32* @dont_print_type_obstack, i32 0)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = bitcast %struct.type* %13 to i8*
  %15 = call i32 @TYPE_NFIELDS(i8* %14)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.type*, %struct.type** %3, align 8
  %19 = bitcast %struct.type* %18 to i8*
  %20 = call i8* @TYPE_CPLUS_SPECIFIC(i8* %19)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = load %struct.type*, %struct.type** %3, align 8
  %24 = bitcast %struct.type* %23 to i8*
  %25 = call i64 @TYPE_NFN_FIELDS(i8* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22, %12
  %28 = call i64 @obstack_base(i32* @dont_print_type_obstack)
  %29 = inttoptr i64 %28 to %struct.type**
  store %struct.type** %29, %struct.type*** %6, align 8
  %30 = call i64 @obstack_next_free(i32* @dont_print_type_obstack)
  %31 = inttoptr i64 %30 to %struct.type**
  %32 = load %struct.type**, %struct.type*** %6, align 8
  %33 = ptrtoint %struct.type** %31 to i64
  %34 = ptrtoint %struct.type** %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %27
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.type*, %struct.type** %3, align 8
  %44 = load %struct.type**, %struct.type*** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.type*, %struct.type** %44, i64 %46
  %48 = load %struct.type*, %struct.type** %47, align 8
  %49 = icmp eq %struct.type* %43, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.type*, %struct.type** %3, align 8
  %54 = bitcast %struct.type* %53 to i8*
  %55 = load i32, i32* @gdb_stdout, align 4
  %56 = call i32 @gdb_print_host_address(i8* %54, i32 %55)
  %57 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %527

58:                                               ; preds = %42
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.type*, %struct.type** %3, align 8
  %61 = bitcast %struct.type* %60 to i8*
  %62 = call i32 @obstack_ptr_grow(i32* @dont_print_type_obstack, i8* %61)
  br label %63

63:                                               ; preds = %59, %22, %17
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.type*, %struct.type** %3, align 8
  %67 = bitcast %struct.type* %66 to i8*
  %68 = load i32, i32* @gdb_stdout, align 4
  %69 = call i32 @gdb_print_host_address(i8* %67, i32 %68)
  %70 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.type*, %struct.type** %3, align 8
  %73 = bitcast %struct.type* %72 to i8*
  %74 = call i8* @TYPE_NAME(i8* %73)
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.type*, %struct.type** %3, align 8
  %78 = bitcast %struct.type* %77 to i8*
  %79 = call i8* @TYPE_NAME(i8* %78)
  br label %81

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i8* [ %79, %76 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %80 ]
  %83 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.type*, %struct.type** %3, align 8
  %85 = bitcast %struct.type* %84 to i8*
  %86 = call i8* @TYPE_NAME(i8* %85)
  %87 = load i32, i32* @gdb_stdout, align 4
  %88 = call i32 @gdb_print_host_address(i8* %86, i32 %87)
  %89 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.type*, %struct.type** %3, align 8
  %92 = bitcast %struct.type* %91 to i8*
  %93 = call i8* @TYPE_TAG_NAME(i8* %92)
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load %struct.type*, %struct.type** %3, align 8
  %97 = bitcast %struct.type* %96 to i8*
  %98 = call i8* @TYPE_TAG_NAME(i8* %97)
  br label %100

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i8* [ %98, %95 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %99 ]
  %102 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  %103 = load %struct.type*, %struct.type** %3, align 8
  %104 = bitcast %struct.type* %103 to i8*
  %105 = call i8* @TYPE_TAG_NAME(i8* %104)
  %106 = load i32, i32* @gdb_stdout, align 4
  %107 = call i32 @gdb_print_host_address(i8* %105, i32 %106)
  %108 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.type*, %struct.type** %3, align 8
  %111 = bitcast %struct.type* %110 to i8*
  %112 = call i32 @TYPE_CODE(i8* %111)
  %113 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  %114 = load %struct.type*, %struct.type** %3, align 8
  %115 = bitcast %struct.type* %114 to i8*
  %116 = call i32 @TYPE_CODE(i8* %115)
  switch i32 %116, label %167 [
    i32 130, label %117
    i32 139, label %119
    i32 152, label %121
    i32 134, label %123
    i32 129, label %125
    i32 147, label %127
    i32 144, label %129
    i32 143, label %131
    i32 145, label %133
    i32 128, label %135
    i32 136, label %137
    i32 138, label %139
    i32 135, label %141
    i32 151, label %143
    i32 146, label %145
    i32 142, label %147
    i32 141, label %149
    i32 137, label %151
    i32 149, label %153
    i32 150, label %155
    i32 148, label %157
    i32 131, label %159
    i32 133, label %161
    i32 132, label %163
    i32 140, label %165
  ]

117:                                              ; preds = %100
  %118 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %169

119:                                              ; preds = %100
  %120 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %169

121:                                              ; preds = %100
  %122 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %169

123:                                              ; preds = %100
  %124 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %169

125:                                              ; preds = %100
  %126 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %169

127:                                              ; preds = %100
  %128 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %169

129:                                              ; preds = %100
  %130 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %169

131:                                              ; preds = %100
  %132 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %169

133:                                              ; preds = %100
  %134 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %169

135:                                              ; preds = %100
  %136 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %169

137:                                              ; preds = %100
  %138 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %169

139:                                              ; preds = %100
  %140 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  br label %169

141:                                              ; preds = %100
  %142 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %169

143:                                              ; preds = %100
  %144 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  br label %169

145:                                              ; preds = %100
  %146 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %169

147:                                              ; preds = %100
  %148 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  br label %169

149:                                              ; preds = %100
  %150 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  br label %169

151:                                              ; preds = %100
  %152 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  br label %169

153:                                              ; preds = %100
  %154 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  br label %169

155:                                              ; preds = %100
  %156 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  br label %169

157:                                              ; preds = %100
  %158 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  br label %169

159:                                              ; preds = %100
  %160 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0))
  br label %169

161:                                              ; preds = %100
  %162 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  br label %169

163:                                              ; preds = %100
  %164 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  br label %169

165:                                              ; preds = %100
  %166 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  br label %169

167:                                              ; preds = %100
  %168 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117
  %170 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %171 = load i32, i32* %4, align 4
  %172 = load %struct.type*, %struct.type** %3, align 8
  %173 = bitcast %struct.type* %172 to i8*
  %174 = call i32 @TYPE_LENGTH(i8* %173)
  %175 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = load %struct.type*, %struct.type** %3, align 8
  %178 = bitcast %struct.type* %177 to i8*
  %179 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(i8* %178)
  %180 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 %179)
  %181 = load %struct.type*, %struct.type** %3, align 8
  %182 = bitcast %struct.type* %181 to i8*
  %183 = call i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(i8* %182)
  %184 = call i32 @print_bound_type(i32 %183)
  %185 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %186 = load i32, i32* %4, align 4
  %187 = load %struct.type*, %struct.type** %3, align 8
  %188 = bitcast %struct.type* %187 to i8*
  %189 = call i32 @TYPE_ARRAY_LOWER_BOUND_TYPE(i8* %188)
  %190 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 %189)
  %191 = load %struct.type*, %struct.type** %3, align 8
  %192 = bitcast %struct.type* %191 to i8*
  %193 = call i32 @TYPE_ARRAY_LOWER_BOUND_TYPE(i8* %192)
  %194 = call i32 @print_bound_type(i32 %193)
  %195 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* %4, align 4
  %197 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  %198 = load %struct.type*, %struct.type** %3, align 8
  %199 = bitcast %struct.type* %198 to i8*
  %200 = call i8* @TYPE_OBJFILE(i8* %199)
  %201 = load i32, i32* @gdb_stdout, align 4
  %202 = call i32 @gdb_print_host_address(i8* %200, i32 %201)
  %203 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %204 = load i32, i32* %4, align 4
  %205 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0))
  %206 = load %struct.type*, %struct.type** %3, align 8
  %207 = bitcast %struct.type* %206 to i8*
  %208 = call i8* @TYPE_TARGET_TYPE(i8* %207)
  %209 = load i32, i32* @gdb_stdout, align 4
  %210 = call i32 @gdb_print_host_address(i8* %208, i32 %209)
  %211 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %212 = load %struct.type*, %struct.type** %3, align 8
  %213 = bitcast %struct.type* %212 to i8*
  %214 = call i8* @TYPE_TARGET_TYPE(i8* %213)
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %169
  %217 = load %struct.type*, %struct.type** %3, align 8
  %218 = bitcast %struct.type* %217 to i8*
  %219 = call i8* @TYPE_TARGET_TYPE(i8* %218)
  %220 = bitcast i8* %219 to %struct.type*
  %221 = load i32, i32* %4, align 4
  %222 = add nsw i32 %221, 2
  call void @recursive_dump_type(%struct.type* %220, i32 %222)
  br label %223

223:                                              ; preds = %216, %169
  %224 = load i32, i32* %4, align 4
  %225 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0))
  %226 = load %struct.type*, %struct.type** %3, align 8
  %227 = bitcast %struct.type* %226 to i8*
  %228 = call i8* @TYPE_POINTER_TYPE(i8* %227)
  %229 = load i32, i32* @gdb_stdout, align 4
  %230 = call i32 @gdb_print_host_address(i8* %228, i32 %229)
  %231 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %232 = load i32, i32* %4, align 4
  %233 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  %234 = load %struct.type*, %struct.type** %3, align 8
  %235 = bitcast %struct.type* %234 to i8*
  %236 = call i8* @TYPE_REFERENCE_TYPE(i8* %235)
  %237 = load i32, i32* @gdb_stdout, align 4
  %238 = call i32 @gdb_print_host_address(i8* %236, i32 %237)
  %239 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %240 = load i32, i32* %4, align 4
  %241 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0))
  %242 = load %struct.type*, %struct.type** %3, align 8
  %243 = bitcast %struct.type* %242 to i8*
  %244 = call i8* @TYPE_CHAIN(i8* %243)
  %245 = load i32, i32* @gdb_stdout, align 4
  %246 = call i32 @gdb_print_host_address(i8* %244, i32 %245)
  %247 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %248 = load i32, i32* %4, align 4
  %249 = load %struct.type*, %struct.type** %3, align 8
  %250 = bitcast %struct.type* %249 to i8*
  %251 = call i32 @TYPE_INSTANCE_FLAGS(i8* %250)
  %252 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 %251)
  %253 = load %struct.type*, %struct.type** %3, align 8
  %254 = bitcast %struct.type* %253 to i8*
  %255 = call i64 @TYPE_CONST(i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %223
  %258 = call i32 @puts_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %223
  %260 = load %struct.type*, %struct.type** %3, align 8
  %261 = bitcast %struct.type* %260 to i8*
  %262 = call i64 @TYPE_VOLATILE(i8* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = call i32 @puts_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %259
  %267 = load %struct.type*, %struct.type** %3, align 8
  %268 = bitcast %struct.type* %267 to i8*
  %269 = call i64 @TYPE_CODE_SPACE(i8* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = call i32 @puts_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %266
  %274 = load %struct.type*, %struct.type** %3, align 8
  %275 = bitcast %struct.type* %274 to i8*
  %276 = call i64 @TYPE_DATA_SPACE(i8* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = call i32 @puts_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %273
  %281 = load %struct.type*, %struct.type** %3, align 8
  %282 = bitcast %struct.type* %281 to i8*
  %283 = call i64 @TYPE_ADDRESS_CLASS_1(i8* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = call i32 @puts_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %280
  %288 = load %struct.type*, %struct.type** %3, align 8
  %289 = bitcast %struct.type* %288 to i8*
  %290 = call i64 @TYPE_ADDRESS_CLASS_2(i8* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = call i32 @puts_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %287
  %295 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %296 = load i32, i32* %4, align 4
  %297 = load %struct.type*, %struct.type** %3, align 8
  %298 = bitcast %struct.type* %297 to i8*
  %299 = call i32 @TYPE_FLAGS(i8* %298)
  %300 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i32 %299)
  %301 = load %struct.type*, %struct.type** %3, align 8
  %302 = bitcast %struct.type* %301 to i8*
  %303 = call i64 @TYPE_UNSIGNED(i8* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %294
  %306 = call i32 @puts_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %294
  %308 = load %struct.type*, %struct.type** %3, align 8
  %309 = bitcast %struct.type* %308 to i8*
  %310 = call i64 @TYPE_NOSIGN(i8* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = call i32 @puts_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0))
  br label %314

314:                                              ; preds = %312, %307
  %315 = load %struct.type*, %struct.type** %3, align 8
  %316 = bitcast %struct.type* %315 to i8*
  %317 = call i64 @TYPE_STUB(i8* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = call i32 @puts_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0))
  br label %321

321:                                              ; preds = %319, %314
  %322 = load %struct.type*, %struct.type** %3, align 8
  %323 = bitcast %struct.type* %322 to i8*
  %324 = call i64 @TYPE_TARGET_STUB(i8* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = call i32 @puts_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %321
  %329 = load %struct.type*, %struct.type** %3, align 8
  %330 = bitcast %struct.type* %329 to i8*
  %331 = call i64 @TYPE_STATIC(i8* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = call i32 @puts_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0))
  br label %335

335:                                              ; preds = %333, %328
  %336 = load %struct.type*, %struct.type** %3, align 8
  %337 = bitcast %struct.type* %336 to i8*
  %338 = call i64 @TYPE_PROTOTYPED(i8* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %335
  %341 = call i32 @puts_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %335
  %343 = load %struct.type*, %struct.type** %3, align 8
  %344 = bitcast %struct.type* %343 to i8*
  %345 = call i64 @TYPE_INCOMPLETE(i8* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = call i32 @puts_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0))
  br label %349

349:                                              ; preds = %347, %342
  %350 = load %struct.type*, %struct.type** %3, align 8
  %351 = bitcast %struct.type* %350 to i8*
  %352 = call i64 @TYPE_VARARGS(i8* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = call i32 @puts_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %349
  %357 = load %struct.type*, %struct.type** %3, align 8
  %358 = bitcast %struct.type* %357 to i8*
  %359 = call i64 @TYPE_VECTOR(i8* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %356
  %362 = call i32 @puts_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0))
  br label %363

363:                                              ; preds = %361, %356
  %364 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %365 = load i32, i32* %4, align 4
  %366 = load %struct.type*, %struct.type** %3, align 8
  %367 = bitcast %struct.type* %366 to i8*
  %368 = call i32 @TYPE_NFIELDS(i8* %367)
  %369 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %365, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 %368)
  %370 = load %struct.type*, %struct.type** %3, align 8
  %371 = bitcast %struct.type* %370 to i8*
  %372 = call i8* @TYPE_FIELDS(i8* %371)
  %373 = load i32, i32* @gdb_stdout, align 4
  %374 = call i32 @gdb_print_host_address(i8* %372, i32 %373)
  %375 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %376

376:                                              ; preds = %436, %363
  %377 = load i32, i32* %5, align 4
  %378 = load %struct.type*, %struct.type** %3, align 8
  %379 = bitcast %struct.type* %378 to i8*
  %380 = call i32 @TYPE_NFIELDS(i8* %379)
  %381 = icmp slt i32 %377, %380
  br i1 %381, label %382, label %439

382:                                              ; preds = %376
  %383 = load i32, i32* %4, align 4
  %384 = add nsw i32 %383, 2
  %385 = load i32, i32* %5, align 4
  %386 = load %struct.type*, %struct.type** %3, align 8
  %387 = bitcast %struct.type* %386 to i8*
  %388 = load i32, i32* %5, align 4
  %389 = call i32 @TYPE_FIELD_BITPOS(i8* %387, i32 %388)
  %390 = load %struct.type*, %struct.type** %3, align 8
  %391 = bitcast %struct.type* %390 to i8*
  %392 = load i32, i32* %5, align 4
  %393 = call i32 @TYPE_FIELD_BITSIZE(i8* %391, i32 %392)
  %394 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %384, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 %385, i32 %389, i32 %393)
  %395 = load %struct.type*, %struct.type** %3, align 8
  %396 = bitcast %struct.type* %395 to i8*
  %397 = load i32, i32* %5, align 4
  %398 = call i8* @TYPE_FIELD_TYPE(i8* %396, i32 %397)
  %399 = load i32, i32* @gdb_stdout, align 4
  %400 = call i32 @gdb_print_host_address(i8* %398, i32 %399)
  %401 = load %struct.type*, %struct.type** %3, align 8
  %402 = bitcast %struct.type* %401 to i8*
  %403 = load i32, i32* %5, align 4
  %404 = call i8* @TYPE_FIELD_NAME(i8* %402, i32 %403)
  %405 = icmp ne i8* %404, null
  br i1 %405, label %406, label %411

406:                                              ; preds = %382
  %407 = load %struct.type*, %struct.type** %3, align 8
  %408 = bitcast %struct.type* %407 to i8*
  %409 = load i32, i32* %5, align 4
  %410 = call i8* @TYPE_FIELD_NAME(i8* %408, i32 %409)
  br label %412

411:                                              ; preds = %382
  br label %412

412:                                              ; preds = %411, %406
  %413 = phi i8* [ %410, %406 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %411 ]
  %414 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i8* %413)
  %415 = load %struct.type*, %struct.type** %3, align 8
  %416 = bitcast %struct.type* %415 to i8*
  %417 = load i32, i32* %5, align 4
  %418 = call i8* @TYPE_FIELD_NAME(i8* %416, i32 %417)
  %419 = load i32, i32* @gdb_stdout, align 4
  %420 = call i32 @gdb_print_host_address(i8* %418, i32 %419)
  %421 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %422 = load %struct.type*, %struct.type** %3, align 8
  %423 = bitcast %struct.type* %422 to i8*
  %424 = load i32, i32* %5, align 4
  %425 = call i8* @TYPE_FIELD_TYPE(i8* %423, i32 %424)
  %426 = icmp ne i8* %425, null
  br i1 %426, label %427, label %435

427:                                              ; preds = %412
  %428 = load %struct.type*, %struct.type** %3, align 8
  %429 = bitcast %struct.type* %428 to i8*
  %430 = load i32, i32* %5, align 4
  %431 = call i8* @TYPE_FIELD_TYPE(i8* %429, i32 %430)
  %432 = bitcast i8* %431 to %struct.type*
  %433 = load i32, i32* %4, align 4
  %434 = add nsw i32 %433, 4
  call void @recursive_dump_type(%struct.type* %432, i32 %434)
  br label %435

435:                                              ; preds = %427, %412
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %5, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %5, align 4
  br label %376

439:                                              ; preds = %376
  %440 = load i32, i32* %4, align 4
  %441 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %440, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0))
  %442 = load %struct.type*, %struct.type** %3, align 8
  %443 = bitcast %struct.type* %442 to i8*
  %444 = call i8* @TYPE_VPTR_BASETYPE(i8* %443)
  %445 = load i32, i32* @gdb_stdout, align 4
  %446 = call i32 @gdb_print_host_address(i8* %444, i32 %445)
  %447 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %448 = load %struct.type*, %struct.type** %3, align 8
  %449 = bitcast %struct.type* %448 to i8*
  %450 = call i8* @TYPE_VPTR_BASETYPE(i8* %449)
  %451 = icmp ne i8* %450, null
  br i1 %451, label %452, label %459

452:                                              ; preds = %439
  %453 = load %struct.type*, %struct.type** %3, align 8
  %454 = bitcast %struct.type* %453 to i8*
  %455 = call i8* @TYPE_VPTR_BASETYPE(i8* %454)
  %456 = bitcast i8* %455 to %struct.type*
  %457 = load i32, i32* %4, align 4
  %458 = add nsw i32 %457, 2
  call void @recursive_dump_type(%struct.type* %456, i32 %458)
  br label %459

459:                                              ; preds = %452, %439
  %460 = load i32, i32* %4, align 4
  %461 = load %struct.type*, %struct.type** %3, align 8
  %462 = bitcast %struct.type* %461 to i8*
  %463 = call i32 @TYPE_VPTR_FIELDNO(i8* %462)
  %464 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %460, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i32 %463)
  %465 = load %struct.type*, %struct.type** %3, align 8
  %466 = bitcast %struct.type* %465 to i8*
  %467 = call i32 @TYPE_CODE(i8* %466)
  switch i32 %467, label %506 [
    i32 134, label %468
    i32 145, label %481
  ]

468:                                              ; preds = %459
  %469 = load i32, i32* %4, align 4
  %470 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %469, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0))
  %471 = load %struct.type*, %struct.type** %3, align 8
  %472 = bitcast %struct.type* %471 to i8*
  %473 = call i8* @TYPE_CPLUS_SPECIFIC(i8* %472)
  %474 = load i32, i32* @gdb_stdout, align 4
  %475 = call i32 @gdb_print_host_address(i8* %473, i32 %474)
  %476 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %477 = load %struct.type*, %struct.type** %3, align 8
  %478 = bitcast %struct.type* %477 to i8*
  %479 = load i32, i32* %4, align 4
  %480 = call i32 @print_cplus_stuff(i8* %478, i32 %479)
  br label %522

481:                                              ; preds = %459
  %482 = load i32, i32* %4, align 4
  %483 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %482, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0))
  %484 = load %struct.type*, %struct.type** %3, align 8
  %485 = bitcast %struct.type* %484 to i8*
  %486 = call %struct.TYPE_2__* @TYPE_FLOATFORMAT(i8* %485)
  %487 = icmp eq %struct.TYPE_2__* %486, null
  br i1 %487, label %495, label %488

488:                                              ; preds = %481
  %489 = load %struct.type*, %struct.type** %3, align 8
  %490 = bitcast %struct.type* %489 to i8*
  %491 = call %struct.TYPE_2__* @TYPE_FLOATFORMAT(i8* %490)
  %492 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i32 0, i32 0
  %493 = load i8*, i8** %492, align 8
  %494 = icmp eq i8* %493, null
  br i1 %494, label %495, label %497

495:                                              ; preds = %488, %481
  %496 = call i32 @puts_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0))
  br label %504

497:                                              ; preds = %488
  %498 = load %struct.type*, %struct.type** %3, align 8
  %499 = bitcast %struct.type* %498 to i8*
  %500 = call %struct.TYPE_2__* @TYPE_FLOATFORMAT(i8* %499)
  %501 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %500, i32 0, i32 0
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 @puts_filtered(i8* %502)
  br label %504

504:                                              ; preds = %497, %495
  %505 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %522

506:                                              ; preds = %459
  %507 = load i32, i32* %4, align 4
  %508 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %507, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0))
  %509 = load %struct.type*, %struct.type** %3, align 8
  %510 = bitcast %struct.type* %509 to i8*
  %511 = call i8* @TYPE_CPLUS_SPECIFIC(i8* %510)
  %512 = load i32, i32* @gdb_stdout, align 4
  %513 = call i32 @gdb_print_host_address(i8* %511, i32 %512)
  %514 = load %struct.type*, %struct.type** %3, align 8
  %515 = bitcast %struct.type* %514 to i8*
  %516 = call i8* @TYPE_CPLUS_SPECIFIC(i8* %515)
  %517 = icmp ne i8* %516, null
  br i1 %517, label %518, label %520

518:                                              ; preds = %506
  %519 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0))
  br label %520

520:                                              ; preds = %518, %506
  %521 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %522

522:                                              ; preds = %520, %504, %468
  %523 = load i32, i32* %4, align 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %522
  %526 = call i32 @obstack_free(i32* @dont_print_type_obstack, i32* null)
  br label %527

527:                                              ; preds = %50, %525, %522
  ret void
}

declare dso_local i32 @obstack_begin(i32*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(i8*) #1

declare dso_local i8* @TYPE_CPLUS_SPECIFIC(i8*) #1

declare dso_local i64 @TYPE_NFN_FIELDS(i8*) #1

declare dso_local i64 @obstack_base(i32*) #1

declare dso_local i64 @obstack_next_free(i32*) #1

declare dso_local i32 @printfi_filtered(i32, i8*, ...) #1

declare dso_local i32 @gdb_print_host_address(i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @obstack_ptr_grow(i32*, i8*) #1

declare dso_local i8* @TYPE_NAME(i8*) #1

declare dso_local i8* @TYPE_TAG_NAME(i8*) #1

declare dso_local i32 @TYPE_CODE(i8*) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @TYPE_LENGTH(i8*) #1

declare dso_local i32 @TYPE_ARRAY_UPPER_BOUND_TYPE(i8*) #1

declare dso_local i32 @print_bound_type(i32) #1

declare dso_local i32 @TYPE_ARRAY_LOWER_BOUND_TYPE(i8*) #1

declare dso_local i8* @TYPE_OBJFILE(i8*) #1

declare dso_local i8* @TYPE_TARGET_TYPE(i8*) #1

declare dso_local i8* @TYPE_POINTER_TYPE(i8*) #1

declare dso_local i8* @TYPE_REFERENCE_TYPE(i8*) #1

declare dso_local i8* @TYPE_CHAIN(i8*) #1

declare dso_local i32 @TYPE_INSTANCE_FLAGS(i8*) #1

declare dso_local i64 @TYPE_CONST(i8*) #1

declare dso_local i64 @TYPE_VOLATILE(i8*) #1

declare dso_local i64 @TYPE_CODE_SPACE(i8*) #1

declare dso_local i64 @TYPE_DATA_SPACE(i8*) #1

declare dso_local i64 @TYPE_ADDRESS_CLASS_1(i8*) #1

declare dso_local i64 @TYPE_ADDRESS_CLASS_2(i8*) #1

declare dso_local i32 @TYPE_FLAGS(i8*) #1

declare dso_local i64 @TYPE_UNSIGNED(i8*) #1

declare dso_local i64 @TYPE_NOSIGN(i8*) #1

declare dso_local i64 @TYPE_STUB(i8*) #1

declare dso_local i64 @TYPE_TARGET_STUB(i8*) #1

declare dso_local i64 @TYPE_STATIC(i8*) #1

declare dso_local i64 @TYPE_PROTOTYPED(i8*) #1

declare dso_local i64 @TYPE_INCOMPLETE(i8*) #1

declare dso_local i64 @TYPE_VARARGS(i8*) #1

declare dso_local i64 @TYPE_VECTOR(i8*) #1

declare dso_local i8* @TYPE_FIELDS(i8*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(i8*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITSIZE(i8*, i32) #1

declare dso_local i8* @TYPE_FIELD_TYPE(i8*, i32) #1

declare dso_local i8* @TYPE_FIELD_NAME(i8*, i32) #1

declare dso_local i8* @TYPE_VPTR_BASETYPE(i8*) #1

declare dso_local i32 @TYPE_VPTR_FIELDNO(i8*) #1

declare dso_local i32 @print_cplus_stuff(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @TYPE_FLOATFORMAT(i8*) #1

declare dso_local i32 @obstack_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
