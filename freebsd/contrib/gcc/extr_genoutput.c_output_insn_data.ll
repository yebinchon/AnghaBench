; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_output_insn_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_output_insn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i8*, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.data* }

@idata = common dso_local global %struct.data* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"#if GCC_VERSION >= 2007\0A__extension__\0A#endif\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\0Aconst struct insn_data insn_data[] = \0A{\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  /* %s:%d */\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"  {\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"    \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"    \22%s-%d\22,\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"    \22%s+%d\22,\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"#if HAVE_DESIGNATED_INITIALIZERS\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"    { 0 },\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"    { 0, 0, 0 },\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"    { .single =\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"    \22\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\\n\\\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"    },\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"    0, 0 },\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"    { .multi = output_%d },\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"    { 0, output_%d, 0 },\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"    { .function = output_%d },\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"    { 0, 0, output_%d },\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"    (insn_gen_fn) gen_%s,\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"    0,\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"    &operand_data[%d],\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"    %d,\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"    %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"  },\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"};\0A\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_insn_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_insn_data() #0 {
  %1 = alloca %struct.data*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32 0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load %struct.data*, %struct.data** @idata, align 8
  store %struct.data* %9, %struct.data** %6, align 8
  store i32 1, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %0
  %11 = load %struct.data*, %struct.data** %6, align 8
  %12 = icmp ne %struct.data* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.data*, %struct.data** %6, align 8
  %15 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.data*, %struct.data** %6, align 8
  %20 = getelementptr inbounds %struct.data, %struct.data* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  br label %29

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.data*, %struct.data** %6, align 8
  %25 = getelementptr inbounds %struct.data, %struct.data* %24, i32 0, i32 10
  %26 = load %struct.data*, %struct.data** %25, align 8
  store %struct.data* %26, %struct.data** %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %18, %10
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.data*, %struct.data** @idata, align 8
  store %struct.data* %32, %struct.data** %1, align 8
  br label %33

33:                                               ; preds = %233, %29
  %34 = load %struct.data*, %struct.data** %1, align 8
  %35 = icmp ne %struct.data* %34, null
  br i1 %35, label %36, label %237

36:                                               ; preds = %33
  %37 = load %struct.data*, %struct.data** %1, align 8
  %38 = getelementptr inbounds %struct.data, %struct.data* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.data*, %struct.data** %1, align 8
  %41 = getelementptr inbounds %struct.data, %struct.data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.data*, %struct.data** %1, align 8
  %46 = getelementptr inbounds %struct.data, %struct.data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %36
  %50 = load %struct.data*, %struct.data** %1, align 8
  %51 = getelementptr inbounds %struct.data, %struct.data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  store i32 0, i32* %2, align 4
  %54 = load %struct.data*, %struct.data** %1, align 8
  %55 = getelementptr inbounds %struct.data, %struct.data* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %57 = load %struct.data*, %struct.data** %1, align 8
  %58 = getelementptr inbounds %struct.data, %struct.data* %57, i32 0, i32 10
  %59 = load %struct.data*, %struct.data** %58, align 8
  store %struct.data* %59, %struct.data** %6, align 8
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %73, %49
  %61 = load %struct.data*, %struct.data** %6, align 8
  %62 = icmp ne %struct.data* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load %struct.data*, %struct.data** %6, align 8
  %65 = getelementptr inbounds %struct.data, %struct.data* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.data*, %struct.data** %6, align 8
  %70 = getelementptr inbounds %struct.data, %struct.data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %5, align 8
  br label %79

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.data*, %struct.data** %6, align 8
  %75 = getelementptr inbounds %struct.data, %struct.data* %74, i32 0, i32 10
  %76 = load %struct.data*, %struct.data** %75, align 8
  store %struct.data* %76, %struct.data** %6, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %60

79:                                               ; preds = %68, %60
  br label %104

80:                                               ; preds = %36
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = sdiv i32 %90, 2
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88, %85
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %2, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %94, i32 %97)
  br label %103

99:                                               ; preds = %88, %80
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %2, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.data*, %struct.data** %1, align 8
  %106 = getelementptr inbounds %struct.data, %struct.data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %189 [
    i32 129, label %108
    i32 128, label %114
    i32 130, label %165
    i32 131, label %177
  ]

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %191

114:                                              ; preds = %104
  %115 = load %struct.data*, %struct.data** %1, align 8
  %116 = getelementptr inbounds %struct.data, %struct.data* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %7, align 8
  store i8 0, i8* %8, align 1
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %124

124:                                              ; preds = %153, %114
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  %129 = load i8*, i8** %7, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @IS_VSPACE(i8 signext %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %128
  %134 = load i8, i8* %8, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 92
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i8*, i8** %7, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i8, i8* %8, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 13
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142, %137
  br label %153

149:                                              ; preds = %133, %128
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i32 @putchar(i8 signext %151)
  br label %153

153:                                              ; preds = %149, %148
  %154 = load i8*, i8** %7, align 8
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %8, align 1
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  br label %124

158:                                              ; preds = %124
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %191

165:                                              ; preds = %104
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %167 = load %struct.data*, %struct.data** %1, align 8
  %168 = getelementptr inbounds %struct.data, %struct.data* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %169)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %172 = load %struct.data*, %struct.data** %1, align 8
  %173 = getelementptr inbounds %struct.data, %struct.data* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %174)
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %191

177:                                              ; preds = %104
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %179 = load %struct.data*, %struct.data** %1, align 8
  %180 = getelementptr inbounds %struct.data, %struct.data* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 %181)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %184 = load %struct.data*, %struct.data** %1, align 8
  %185 = getelementptr inbounds %struct.data, %struct.data* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %186)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %191

189:                                              ; preds = %104
  %190 = call i32 (...) @gcc_unreachable()
  br label %191

191:                                              ; preds = %189, %177, %165, %158, %108
  %192 = load %struct.data*, %struct.data** %1, align 8
  %193 = getelementptr inbounds %struct.data, %struct.data* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load %struct.data*, %struct.data** %1, align 8
  %198 = getelementptr inbounds %struct.data, %struct.data* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 42
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load %struct.data*, %struct.data** %1, align 8
  %206 = getelementptr inbounds %struct.data, %struct.data* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %207)
  br label %211

209:                                              ; preds = %196, %191
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %204
  %212 = load %struct.data*, %struct.data** %1, align 8
  %213 = getelementptr inbounds %struct.data, %struct.data* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %214)
  %216 = load %struct.data*, %struct.data** %1, align 8
  %217 = getelementptr inbounds %struct.data, %struct.data* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %218)
  %220 = load %struct.data*, %struct.data** %1, align 8
  %221 = getelementptr inbounds %struct.data, %struct.data* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %222)
  %224 = load %struct.data*, %struct.data** %1, align 8
  %225 = getelementptr inbounds %struct.data, %struct.data* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %226)
  %228 = load %struct.data*, %struct.data** %1, align 8
  %229 = getelementptr inbounds %struct.data, %struct.data* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32 %230)
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  br label %233

233:                                              ; preds = %211
  %234 = load %struct.data*, %struct.data** %1, align 8
  %235 = getelementptr inbounds %struct.data, %struct.data* %234, i32 0, i32 10
  %236 = load %struct.data*, %struct.data** %235, align 8
  store %struct.data* %236, %struct.data** %1, align 8
  br label %33

237:                                              ; preds = %33
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @IS_VSPACE(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
