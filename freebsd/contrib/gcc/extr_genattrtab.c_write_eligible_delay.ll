; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_eligible_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_eligible_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_desc = type { i32, i32, %struct.delay_desc* }
%struct.attr_desc = type { %struct.attr_value* }
%struct.attr_value = type { %struct.attr_value* }

@delays = common dso_local global %struct.delay_desc* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"eligible_for_%s (rtx delay_insn ATTRIBUTE_UNUSED, int slot, rtx candidate_insn, int flags ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  rtx insn;\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"  gcc_assert (slot < %d);\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"  if (!INSN_P (candidate_insn))\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"    return 0;\0A\00", align 1
@num_delays = common dso_local global i32 0, align 4
@delay_type_str = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"  insn = delay_insn;\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"  switch (recog_memoized (insn))\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c" * %d;\0A      break;\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"slot +=\00", align 1
@true_rtx = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"    }\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"  gcc_assert (slot >= %d);\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"  insn = candidate_insn;\0A\00", align 1
@delay_1_0_str = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  switch (slot)\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"    case %d:\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"      switch (recog_memoized (insn))\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"*%s_%d_%d\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"      }\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"    default:\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"      gcc_unreachable ();\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_eligible_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_eligible_delay(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.delay_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [50 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.attr_desc*, align 8
  %8 = alloca %struct.attr_value*, align 8
  %9 = alloca %struct.attr_value*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load %struct.delay_desc*, %struct.delay_desc** @delays, align 8
  store %struct.delay_desc* %11, %struct.delay_desc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %14 = icmp ne %struct.delay_desc* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %17 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @XVECLEN(i32 %18, i32 1)
  %20 = sdiv i32 %19, 3
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %25 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @XVECLEN(i32 %26, i32 1)
  %28 = sdiv i32 %27, 3
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %15
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %32 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %31, i32 0, i32 2
  %33 = load %struct.delay_desc*, %struct.delay_desc** %32, align 8
  store %struct.delay_desc* %33, %struct.delay_desc** %3, align 8
  br label %12

34:                                               ; preds = %12
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @num_delays, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %91

49:                                               ; preds = %34
  %50 = call %struct.attr_desc* @find_attr(i8** @delay_type_str, i32 0)
  store %struct.attr_desc* %50, %struct.attr_desc** %7, align 8
  %51 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %52 = call i32 @gcc_assert(%struct.attr_desc* %51)
  %53 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %54 = call %struct.attr_value* @find_most_used(%struct.attr_desc* %53)
  store %struct.attr_value* %54, %struct.attr_value** %9, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %59)
  %61 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %62 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %61, i32 0, i32 0
  %63 = load %struct.attr_value*, %struct.attr_value** %62, align 8
  store %struct.attr_value* %63, %struct.attr_value** %8, align 8
  br label %64

64:                                               ; preds = %78, %49
  %65 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %66 = icmp ne %struct.attr_value* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %69 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %70 = icmp ne %struct.attr_value* %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %73 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %75 = load i32, i32* @true_rtx, align 4
  %76 = call i32 @write_attr_case(%struct.attr_desc* %72, %struct.attr_value* %73, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %74, i32 4, i32 %75)
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %80 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %79, i32 0, i32 0
  %81 = load %struct.attr_value*, %struct.attr_value** %80, align 8
  store %struct.attr_value* %81, %struct.attr_value** %8, align 8
  br label %64

82:                                               ; preds = %64
  %83 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %84 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %85 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %86 = load i32, i32* @true_rtx, align 4
  %87 = call i32 @write_attr_case(%struct.attr_desc* %83, %struct.attr_value* %84, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %85, i32 4, i32 %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %82, %34
  %92 = load i32, i32* @num_delays, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %132

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %132

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %101 = call %struct.attr_desc* @find_attr(i8** @delay_1_0_str, i32 0)
  store %struct.attr_desc* %101, %struct.attr_desc** %7, align 8
  %102 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %103 = call i32 @gcc_assert(%struct.attr_desc* %102)
  %104 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %105 = call %struct.attr_value* @find_most_used(%struct.attr_desc* %104)
  store %struct.attr_value* %105, %struct.attr_value** %9, align 8
  %106 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %107 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %106, i32 0, i32 0
  %108 = load %struct.attr_value*, %struct.attr_value** %107, align 8
  store %struct.attr_value* %108, %struct.attr_value** %8, align 8
  br label %109

109:                                              ; preds = %122, %97
  %110 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %111 = icmp ne %struct.attr_value* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %114 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %115 = icmp ne %struct.attr_value* %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %118 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %119 = load i32, i32* @true_rtx, align 4
  %120 = call i32 @write_attr_case(%struct.attr_desc* %117, %struct.attr_value* %118, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 4, i32 %119)
  br label %121

121:                                              ; preds = %116, %112
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %124 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %123, i32 0, i32 0
  %125 = load %struct.attr_value*, %struct.attr_value** %124, align 8
  store %struct.attr_value* %125, %struct.attr_value** %8, align 8
  br label %109

126:                                              ; preds = %109
  %127 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %128 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %129 = load i32, i32* @true_rtx, align 4
  %130 = call i32 @write_attr_case(%struct.attr_desc* %127, %struct.attr_value* %128, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 4, i32 %129)
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %218

132:                                              ; preds = %94, %91
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %136 = load %struct.delay_desc*, %struct.delay_desc** @delays, align 8
  store %struct.delay_desc* %136, %struct.delay_desc** %3, align 8
  br label %137

137:                                              ; preds = %210, %132
  %138 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %139 = icmp ne %struct.delay_desc* %138, null
  br i1 %139, label %140, label %214

140:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %206, %140
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %144 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @XVECLEN(i32 %145, i32 1)
  %147 = icmp slt i32 %142, %146
  br i1 %147, label %148, label %209

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = sdiv i32 %149, 3
  %151 = load i32, i32* @num_delays, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %160

154:                                              ; preds = %148
  %155 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %156 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = mul nsw i32 %157, %158
  br label %160

160:                                              ; preds = %154, %153
  %161 = phi i32 [ 0, %153 ], [ %159, %154 ]
  %162 = add nsw i32 %150, %161
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %162)
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0))
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %166 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %167 = load i8*, i8** %2, align 8
  %168 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %169 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sdiv i32 %171, 3
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* %167, i32 %170, i32 %172)
  %174 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  store i8* %174, i8** %6, align 8
  %175 = call %struct.attr_desc* @find_attr(i8** %6, i32 0)
  store %struct.attr_desc* %175, %struct.attr_desc** %7, align 8
  %176 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %177 = call i32 @gcc_assert(%struct.attr_desc* %176)
  %178 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %179 = call %struct.attr_value* @find_most_used(%struct.attr_desc* %178)
  store %struct.attr_value* %179, %struct.attr_value** %9, align 8
  %180 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %181 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %180, i32 0, i32 0
  %182 = load %struct.attr_value*, %struct.attr_value** %181, align 8
  store %struct.attr_value* %182, %struct.attr_value** %8, align 8
  br label %183

183:                                              ; preds = %196, %160
  %184 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %185 = icmp ne %struct.attr_value* %184, null
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %188 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %189 = icmp ne %struct.attr_value* %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %192 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %193 = load i32, i32* @true_rtx, align 4
  %194 = call i32 @write_attr_case(%struct.attr_desc* %191, %struct.attr_value* %192, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 8, i32 %193)
  br label %195

195:                                              ; preds = %190, %186
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %198 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %197, i32 0, i32 0
  %199 = load %struct.attr_value*, %struct.attr_value** %198, align 8
  store %struct.attr_value* %199, %struct.attr_value** %8, align 8
  br label %183

200:                                              ; preds = %183
  %201 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %202 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %203 = load i32, i32* @true_rtx, align 4
  %204 = call i32 @write_attr_case(%struct.attr_desc* %201, %struct.attr_value* %202, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 8, i32 %203)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  br label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 3
  store i32 %208, i32* %10, align 4
  br label %141

209:                                              ; preds = %141
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.delay_desc*, %struct.delay_desc** %3, align 8
  %212 = getelementptr inbounds %struct.delay_desc, %struct.delay_desc* %211, i32 0, i32 2
  %213 = load %struct.delay_desc*, %struct.delay_desc** %212, align 8
  store %struct.delay_desc* %213, %struct.delay_desc** %3, align 8
  br label %137

214:                                              ; preds = %137
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %218

218:                                              ; preds = %214, %126
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.attr_desc* @find_attr(i8**, i32) #1

declare dso_local i32 @gcc_assert(%struct.attr_desc*) #1

declare dso_local %struct.attr_value* @find_most_used(%struct.attr_desc*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @write_attr_case(%struct.attr_desc*, %struct.attr_value*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
