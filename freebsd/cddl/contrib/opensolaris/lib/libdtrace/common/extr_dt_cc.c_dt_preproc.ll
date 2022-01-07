; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_preproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_preproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.sigaction = type { i32 }

@errno = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"-D__SUNW_D_VERSION=0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@EDT_CPPFORK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"waiting for %s (PID %d)\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"%s returned exit status 0x%x\0A\00", align 1
@EDT_CPPEXEC = common dso_local global i64 0, align 8
@EDT_CPPENT = common dso_local global i64 0, align 8
@EDT_CPPERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @dt_preproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dt_preproc(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca %struct.sigaction, align 4
  %11 = alloca %struct.sigaction, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 5
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8** @malloc(i32 %26)
  store i8** %27, i8*** %7, align 8
  %28 = call i32* (...) @tmpfile()
  store i32* %28, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %29 = load i8**, i8*** %7, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @dt_set_errno(%struct.TYPE_4__* %35, i64 %36)
  br label %229

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @fileno(i32* %39)
  %41 = call i64 @isatty(i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ftello64(i32* %44)
  store i32 %45, i32* %17, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @fgetc(i32* %48)
  store i32 %49, i32* %18, align 4
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @fgetc(i32* %52)
  store i32 %53, i32* %18, align 4
  %54 = icmp eq i32 %53, 33
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %68, %55
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fgetc(i32* %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* @EOF, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %71

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %58

71:                                               ; preds = %66, %58
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %51, %47
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fflush(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @SEEK_SET, align 4
  %84 = call i32 @fseeko64(i32* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %43, %38
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i8**, i8*** %7, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 8, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @bcopy(i32 %88, i8** %89, i32 %93)
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @snprintf(i8* %95, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %101 = load i8**, i8*** %7, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  store i8* %100, i8** %105, align 8
  %106 = load i8**, i8*** %7, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %110, align 8
  %111 = load i8**, i8*** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* null, i8** %114, align 8
  %115 = call i32 @sigemptyset(i32* %12)
  %116 = load i32, i32* @SIGCHLD, align 4
  %117 = call i32 @sigaddset(i32* %12, i32 %116)
  %118 = load i32, i32* @SIG_BLOCK, align 4
  %119 = call i32 @sigprocmask(i32 %118, i32* %12, i32* %13)
  %120 = call i32 @bzero(%struct.sigaction* %10, i32 4)
  %121 = load i32, i32* @SIG_DFL, align 4
  %122 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @SIGCHLD, align 4
  %124 = call i32 @sigaction(i32 %123, %struct.sigaction* %10, %struct.sigaction* %11)
  %125 = call i32 (...) @fork1()
  store i32 %125, i32* %16, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %135

127:                                              ; preds = %85
  %128 = load i32, i32* @SIGCHLD, align 4
  %129 = call i32 @sigaction(i32 %128, %struct.sigaction* %11, %struct.sigaction* null)
  %130 = load i32, i32* @SIG_SETMASK, align 4
  %131 = call i32 @sigprocmask(i32 %130, i32* %13, i32* null)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = load i64, i64* @EDT_CPPFORK, align 8
  %134 = call i32 @dt_set_errno(%struct.TYPE_4__* %132, i64 %133)
  br label %229

135:                                              ; preds = %85
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %135
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @fileno(i32* %139)
  %141 = call i64 @isatty(i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @fileno(i32* %144)
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = call i32 @lseek(i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @fileno(i32* %150)
  %152 = call i32 @dup2(i32 %151, i32 0)
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @fileno(i32* %153)
  %155 = call i32 @dup2(i32 %154, i32 1)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i8**, i8*** %7, align 8
  %160 = call i32 @execvp(i32 %158, i8** %159)
  %161 = load i64, i64* @errno, align 8
  %162 = load i64, i64* @ENOENT, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 127, i32 126
  %166 = call i32 @_exit(i32 %165) #3
  unreachable

167:                                              ; preds = %135
  br label %168

168:                                              ; preds = %182, %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @dt_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %16, align 4
  %176 = call i32 @waitpid(i32 %175, i32* %14, i32 0)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i64, i64* @errno, align 8
  %180 = load i64, i64* @EINTR, align 8
  %181 = icmp eq i64 %179, %180
  br label %182

182:                                              ; preds = %178, %174
  %183 = phi i1 [ false, %174 ], [ %181, %178 ]
  br i1 %183, label %168, label %184

184:                                              ; preds = %182
  %185 = load i32, i32* @SIGCHLD, align 4
  %186 = call i32 @sigaction(i32 %185, %struct.sigaction* %11, %struct.sigaction* null)
  %187 = load i32, i32* @SIG_SETMASK, align 4
  %188 = call i32 @sigprocmask(i32 %187, i32* %13, i32* null)
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @dt_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = call i64 @WIFEXITED(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %184
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @WEXITSTATUS(i32 %198)
  br label %201

200:                                              ; preds = %184
  br label %201

201:                                              ; preds = %200, %197
  %202 = phi i32 [ %199, %197 ], [ -1, %200 ]
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %201
  %206 = load i32, i32* %15, align 4
  switch i32 %206, label %215 [
    i32 126, label %207
    i32 127, label %211
  ]

207:                                              ; preds = %205
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %209 = load i64, i64* @EDT_CPPEXEC, align 8
  %210 = call i32 @dt_set_errno(%struct.TYPE_4__* %208, i64 %209)
  br label %219

211:                                              ; preds = %205
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = load i64, i64* @EDT_CPPENT, align 8
  %214 = call i32 @dt_set_errno(%struct.TYPE_4__* %212, i64 %213)
  br label %219

215:                                              ; preds = %205
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %217 = load i64, i64* @EDT_CPPERR, align 8
  %218 = call i32 @dt_set_errno(%struct.TYPE_4__* %216, i64 %217)
  br label %219

219:                                              ; preds = %215, %211, %207
  br label %229

220:                                              ; preds = %201
  %221 = load i8**, i8*** %7, align 8
  %222 = call i32 @free(i8** %221)
  %223 = load i32*, i32** %8, align 8
  %224 = call i32 @fflush(i32* %223)
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* @SEEK_SET, align 4
  %227 = call i32 @fseek(i32* %225, i32 0, i32 %226)
  %228 = load i32*, i32** %8, align 8
  store i32* %228, i32** %3, align 8
  br label %234

229:                                              ; preds = %219, %127, %34
  %230 = load i8**, i8*** %7, align 8
  %231 = call i32 @free(i8** %230)
  %232 = load i32*, i32** %8, align 8
  %233 = call i32 @fclose(i32* %232)
  store i32* null, i32** %3, align 8
  br label %234

234:                                              ; preds = %229, %220
  %235 = load i32*, i32** %3, align 8
  ret i32* %235
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @ftello64(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fseeko64(i32*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i8**, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @bzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @fork1(...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execvp(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @dt_dprintf(i8*, i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
