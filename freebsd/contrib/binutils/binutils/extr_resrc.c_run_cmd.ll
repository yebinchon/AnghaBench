; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_run_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't open temporary file `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't redirect stdout: `%s': %s\00", align 1
@program_name = common dso_local global i32 0, align 4
@PEXECUTE_ONE = common dso_local global i32 0, align 4
@PEXECUTE_SEARCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"wait: %s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"subprocess got fatal signal %d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s exited with status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = call i8* (...) @choose_temp_base()
  store i8* %19, i8** %14, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %34, %2
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @alloca(i32 %44)
  store i8** %45, i8*** %11, align 8
  store i32 0, i32* %10, align 4
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %37, %130
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %48

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %131

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 39
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 34
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ true, %69 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i32 [ %88, %84 ], [ 32, %89 ]
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %16, align 1
  %93 = load i8*, i8** %6, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8*, i8** %94, i64 %97
  store i8* %93, i8** %98, align 8
  br label %99

99:                                               ; preds = %113, %90
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* %16, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %106, %99
  %112 = phi i1 [ false, %99 ], [ %110, %106 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  br label %99

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %131

122:                                              ; preds = %116
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  store i8 0, i8* %123, align 1
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %127, %122
  br label %47

131:                                              ; preds = %121, %68
  %132 = load i8**, i8*** %11, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  store i8* null, i8** %136, align 8
  %137 = load i32, i32* @stdout, align 4
  %138 = call i32 @fflush(i32 %137)
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 @fflush(i32 %139)
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* @O_WRONLY, align 4
  %143 = load i32, i32* @O_TRUNC, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @O_CREAT, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @open(i8* %141, i32 %146, i32 438)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %131
  %151 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* @errno, align 4
  %154 = call i32 @strerror(i32 %153)
  %155 = call i32 (i32, i8*, ...) @fatal(i32 %151, i8* %152, i32 %154)
  br label %156

156:                                              ; preds = %150, %131
  %157 = load i32, i32* @STDOUT_FILENO, align 4
  %158 = call i32 @dup(i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @strerror(i32 %164)
  %166 = call i32 (i32, i8*, ...) @fatal(i32 %162, i8* %163, i32 %165)
  br label %167

167:                                              ; preds = %161, %156
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @STDOUT_FILENO, align 4
  %170 = call i32 @dup2(i32 %168, i32 %169)
  %171 = load i8**, i8*** %11, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8**, i8*** %11, align 8
  %175 = load i32, i32* @program_name, align 4
  %176 = load i8*, i8** %14, align 8
  %177 = load i32, i32* @PEXECUTE_ONE, align 4
  %178 = load i32, i32* @PEXECUTE_SEARCH, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @pexecute(i8* %173, i8** %174, i32 %175, i8* %176, i8** %12, i8** %13, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* @STDOUT_FILENO, align 4
  %183 = call i32 @dup2(i32 %181, i32 %182)
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @close(i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %195

188:                                              ; preds = %167
  %189 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i8*, i8** %12, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = load i32, i32* @errno, align 4
  %193 = call i32 @strerror(i32 %192)
  %194 = call i32 (i32, i8*, ...) @fatal(i32 %189, i8* %190, i8* %191, i32 %193)
  store i32 1, i32* %3, align 4
  br label %238

195:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @pwait(i32 %196, i32* %8, i32 0)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %202 = load i32, i32* @errno, align 4
  %203 = call i32 @strerror(i32 %202)
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = call i32 (i32, i8*, ...) @fatal(i32 %201, i8* %205)
  store i32 1, i32* %9, align 4
  br label %236

207:                                              ; preds = %195
  %208 = load i32, i32* %8, align 4
  %209 = call i64 @WIFSIGNALED(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @WTERMSIG(i32 %213)
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 (i32, i8*, ...) @fatal(i32 %212, i8* %216)
  store i32 1, i32* %9, align 4
  br label %235

218:                                              ; preds = %207
  %219 = load i32, i32* %8, align 4
  %220 = call i64 @WIFEXITED(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @WEXITSTATUS(i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i8*, i8** %4, align 8
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @WEXITSTATUS(i32 %229)
  %231 = call i32 (i32, i8*, ...) @fatal(i32 %227, i8* %228, i32 %230)
  store i32 1, i32* %9, align 4
  br label %232

232:                                              ; preds = %226, %222
  br label %234

233:                                              ; preds = %218
  store i32 1, i32* %9, align 4
  br label %234

234:                                              ; preds = %233, %232
  br label %235

235:                                              ; preds = %234, %211
  br label %236

236:                                              ; preds = %235, %200
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %188
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i8* @choose_temp_base(...) #1

declare dso_local i8** @alloca(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fatal(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @pexecute(i8*, i8**, i32, i8*, i8**, i8**, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pwait(i32, i32*, i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
