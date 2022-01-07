; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_write_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_write_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64, i32 }

@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"#include <asm/types.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"#if BITS_PER_LONG == 64\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"#define PTR .quad\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"#define ALGN .align 8\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"#define PTR .long\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"#define ALGN .align 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"\09.section .rodata, \22a\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"kallsyms_addresses\00", align 1
@table_cnt = common dso_local global i32 0, align 4
@table = common dso_local global %struct.TYPE_2__* null, align 8
@_text = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text + %#llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text - %#llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\09PTR\09%#llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"\09PTR\09%d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [54 x i8] c"kallsyms failure: unable to allocate required memory\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\09.byte 0x%02x\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c", 0x%02x\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"kallsyms_markers\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1
@best_table = common dso_local global i32* null, align 8
@best_table_len = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"\09.asciz\09\22%s\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"\09.short\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_src() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @KSYM_NAME_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 @output_label(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %77, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @table_cnt, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %28 = load i32, i32* %1, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call signext i8 @toupper(i32 %34)
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 65
  br i1 %37, label %38, label %68

38:                                               ; preds = %26
  %39 = load i64, i64* @_text, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %41 = load i32, i32* %1, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %39, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %49 = load i32, i32* %1, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @_text, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %55)
  br label %67

57:                                               ; preds = %38
  %58 = load i64, i64* @_text, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %60 = load i32, i32* %1, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %58, %64
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %57, %47
  br label %76

68:                                               ; preds = %26
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %70 = load i32, i32* %1, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %68, %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %1, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %22

80:                                               ; preds = %22
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %82 = call i32 @output_label(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %83 = load i32, i32* @table_cnt, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %86 = load i32, i32* @table_cnt, align 4
  %87 = add i32 %86, 255
  %88 = udiv i32 %87, 256
  %89 = zext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32* @malloc(i32 %91)
  store i32* %92, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %80
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0))
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  %99 = call i32 @exit(i32 %98) #4
  unreachable

100:                                              ; preds = %80
  %101 = call i32 @output_label(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %102

102:                                              ; preds = %160, %100
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @table_cnt, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %163

106:                                              ; preds = %102
  %107 = load i32, i32* %1, align 4
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %1, align 4
  %114 = lshr i32 %113, 8
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %106
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %119 = load i32, i32* %1, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %146, %117
  %126 = load i32, i32* %2, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %128 = load i32, i32* %1, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ult i32 %126, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %125
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %136 = load i32, i32* %1, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %2, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %2, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %125

149:                                              ; preds = %125
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %152 = load i32, i32* %1, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %3, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %1, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %1, align 4
  br label %102

163:                                              ; preds = %102
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %165 = call i32 @output_label(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %166

166:                                              ; preds = %179, %163
  %167 = load i32, i32* %1, align 4
  %168 = load i32, i32* @table_cnt, align 4
  %169 = add i32 %168, 255
  %170 = lshr i32 %169, 8
  %171 = icmp ult i32 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* %1, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %1, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %166

182:                                              ; preds = %166
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @free(i32* %184)
  %186 = call i32 @output_label(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %187

187:                                              ; preds = %213, %182
  %188 = load i32, i32* %1, align 4
  %189 = icmp ult i32 %188, 256
  br i1 %189, label %190, label %216

190:                                              ; preds = %187
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* %1, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %193
  store i32 %191, i32* %194, align 4
  %195 = load i32*, i32** @best_table, align 8
  %196 = load i32, i32* %1, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** @best_table_len, align 8
  %201 = load i32, i32* %1, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @expand_symbol(i32 %199, i32 %204, i8* %11)
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %11)
  %207 = call i64 @strlen(i8* %11)
  %208 = add nsw i64 %207, 1
  %209 = load i32, i32* %3, align 4
  %210 = zext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %190
  %214 = load i32, i32* %1, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %187

216:                                              ; preds = %187
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %218 = call i32 @output_label(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %219

219:                                              ; preds = %228, %216
  %220 = load i32, i32* %1, align 4
  %221 = icmp ult i32 %220, 256
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load i32, i32* %1, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %222
  %229 = load i32, i32* %1, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %1, align 4
  br label %219

231:                                              ; preds = %219
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %233 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %233)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @output_label(i8*) #2

declare dso_local signext i8 @toupper(i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @expand_symbol(i32, i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
