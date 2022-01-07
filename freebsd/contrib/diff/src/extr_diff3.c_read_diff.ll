; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_read_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_read_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@__const.read_diff.args = private unnamed_addr constant [25 x i8] c" --horizon-lines=100 -- \00", align 16
@diff_program = common dso_local global i8* null, align 8
@text = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" -a\00", align 1
@strip_trailing_cr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c" --strip-trailing-cr\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@PTRDIFF_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"invalid diff format; incomplete last line\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@EXIT_TROUBLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"subsidiary program `%s' could not be invoked\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"subsidiary program `%s' not found\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"subsidiary program `%s' failed\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"subsidiary program `%s' failed (exit status %d)\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**)* @read_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_diff(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [25 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %13, align 4
  %21 = bitcast [25 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.read_diff.args, i32 0, i32 0), i64 25, i1 false)
  %22 = load i8*, i8** @diff_program, align 8
  %23 = call i32 @quote_system_arg(i8* null, i8* %22)
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 3
  %26 = add i64 %25, 20
  %27 = add i64 %26, 25
  %28 = sub i64 %27, 1
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @quote_system_arg(i8* null, i8* %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 %28, %31
  %33 = add i64 %32, 1
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @quote_system_arg(i8* null, i8* %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 %33, %36
  %38 = add i64 %37, 1
  %39 = call i8* @xmalloc(i64 %38)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  store i8* %40, i8** %18, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = load i8*, i8** @diff_program, align 8
  %43 = call i32 @quote_system_arg(i8* %41, i8* %42)
  %44 = load i8*, i8** %18, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %18, align 8
  %47 = load i64, i64* @text, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = load i8*, i8** %18, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %18, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  store i8* %53, i8** %18, align 8
  br label %54

54:                                               ; preds = %49, %3
  %55 = load i64, i64* @strip_trailing_cr, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %18, align 8
  %59 = call i32 @strcpy(i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %18, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 20
  store i8* %61, i8** %18, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i8*, i8** %18, align 8
  %64 = getelementptr inbounds [25 x i8], [25 x i8]* %16, i64 0, i64 0
  %65 = call i32 @strcpy(i8* %63, i8* %64)
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 24
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @quote_system_arg(i8* %68, i8* %69)
  %71 = load i8*, i8** %18, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %18, align 8
  store i8 32, i8* %74, align 1
  %76 = load i8*, i8** %18, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @quote_system_arg(i8* %76, i8* %77)
  %79 = load i8*, i8** %18, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %18, align 8
  %82 = load i8*, i8** %18, align 8
  store i8 0, i8* %82, align 1
  store i32 0, i32* @errno, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = call i32* @popen(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %62
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 @perror_with_exit(i8* %88)
  br label %90

90:                                               ; preds = %87, %62
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @fileno(i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @fstat(i32 %95, %struct.stat* %14)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = call i32 @perror_with_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %90
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @STAT_BLOCKSIZE(i32 %102)
  %104 = call i64 @MAX(i32 1, i32 %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i8* @xmalloc(i64 %105)
  store i8* %106, i8** %7, align 8
  store i64 0, i64* %9, align 8
  br label %107

107:                                              ; preds = %139, %100
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %108, %109
  store i64 %110, i64* %19, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i64, i64* %19, align 8
  %116 = call i64 @block_read(i32 %111, i8* %114, i64 %115)
  store i64 %116, i64* %20, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %20, align 8
  %121 = load i64, i64* %19, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %107
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @SIZE_MAX, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %129 = call i32 @perror_with_exit(i8* %128)
  br label %130

130:                                              ; preds = %127, %123
  br label %145

131:                                              ; preds = %107
  %132 = load i32, i32* @PTRDIFF_MAX, align 4
  %133 = sdiv i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %8, align 8
  %136 = icmp ule i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = call i32 (...) @xalloc_die()
  br label %139

139:                                              ; preds = %137, %131
  %140 = load i64, i64* %8, align 8
  %141 = mul i64 %140, 2
  store i64 %141, i64* %8, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i8* @xrealloc(i8* %142, i64 %143)
  store i8* %144, i8** %7, align 8
  br label %107

145:                                              ; preds = %130
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i8*, i8** %7, align 8
  %150 = load i64, i64* %9, align 8
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 10
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %148, %145
  %159 = load i8*, i8** %7, align 8
  %160 = load i8**, i8*** %6, align 8
  store i8* %159, i8** %160, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @pclose(i32* %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* @errno, align 4
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %165, %158
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = call i64 @WIFEXITED(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @WEXITSTATUS(i32 %175)
  br label %179

177:                                              ; preds = %170, %167
  %178 = load i32, i32* @INT_MAX, align 4
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi i32 [ %176, %174 ], [ %178, %177 ]
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* @EXIT_TROUBLE, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %179
  %185 = load i32, i32* @EXIT_TROUBLE, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp eq i32 %187, 126
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %202

190:                                              ; preds = %184
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 127
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %200

194:                                              ; preds = %190
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @INT_MAX, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0)
  br label %200

200:                                              ; preds = %194, %193
  %201 = phi i8* [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), %193 ], [ %199, %194 ]
  br label %202

202:                                              ; preds = %200, %189
  %203 = phi i8* [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), %189 ], [ %201, %200 ]
  %204 = call i8* @_(i8* %203)
  %205 = load i8*, i8** @diff_program, align 8
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @error(i32 %185, i32 %186, i8* %204, i8* %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %179
  %209 = load i8*, i8** %7, align 8
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  ret i8* %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xmalloc(i64) #2

declare dso_local i32 @quote_system_arg(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @perror_with_exit(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @MAX(i32, i32) #2

declare dso_local i32 @STAT_BLOCKSIZE(i32) #2

declare dso_local i64 @block_read(i32, i8*, i64) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @xalloc_die(...) #2

declare dso_local i8* @xrealloc(i8*, i64) #2

declare dso_local i32 @fatal(i8*) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i64 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i32 @error(i32, i32, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
