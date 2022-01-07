; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/capsicum-test/extr_smoketest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/capsicum-test/extr_smoketest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@handle_signal = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"[%d] cap_fd=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"*** cap_rights_limit() failed: errno=%d %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"[%d] cap_rights_get(cap_fd=%d) rc=%d rights=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"*** cap_rights_get() failed: errno=%d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"[%d] fstat(cap_fd=%d) rc=%d errno=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"*** fstat() unexpectedly succeeded\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"*** pdfork() failed: errno=%d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"  [%d] child alive, parent is ppid=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  [%d] child exit(0)\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"[%d] pdfork() rc=%d pd=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"*** pdgetpid(pd=%d) failed: errno=%d %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"[%d] pdgetpid(pd=%d)=%d, pdfork returned %d\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"[%d] pdkill(pd=%d, SIGKILL) -> rc=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"*** pdkill() failed: errno=%d %s\0A\00", align 1
@seen_sigchld = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"*** SIGCHLD emitted\0A\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"*** wait4(-1, ...) unexpectedly found child %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"[%d] forking off a child process to check cap_enter()\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"  [%d] cap_getmode() -> rc=%d, cap_mode=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"*** cap_getmode() failed: errno=%d %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"  [%d] cap_enter() -> rc=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"*** cap_enter() failed: errno=%d %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"/etc/passwd\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [47 x i8] c"  [%d] open('/etc/passwd') -> rc=%d, errno=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"*** open() unexpectedly succeeded\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"[%d] child %d exited with status %x\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"/bin/ls\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"smoketest\00", align 1
@__const.main.argv_pass = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* null], align 16
@.str.28 = private unnamed_addr constant [53 x i8] c"[%d] about to fexecve('/bin/ls', '-l', 'smoketest')\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"*** fexecve(fd=%d) failed: rc=%d errno=%d %s\0A\00", align 1
@ECAPMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i8*], align 16
  %21 = alloca [1 x i8*], align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* @SIGCHLD, align 4
  %24 = load i32, i32* @handle_signal, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  store i32 4, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 1, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* @CAP_READ, align 4
  %35 = load i32, i32* @CAP_WRITE, align 4
  %36 = load i32, i32* @CAP_SEEK, align 4
  %37 = call i32 (i32*, i32, ...) @cap_rights_init(i32* %7, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @STDOUT_FILENO, align 4
  %39 = call i32 @dup(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @cap_rights_limit(i32 %40, i32* %7)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (...) @getpid_()
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i8* @strerror(i32 %51)
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %52)
  br label %54

54:                                               ; preds = %48, %33
  %55 = call i32 (i32*, i32, ...) @cap_rights_init(i32* %10, i32 0)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @cap_rights_get(i32 %56, i32* %10)
  store i32 %57, i32* %9, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %59 = call i32 @cap_rights_describe(i32* %10, i8* %58)
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (...) @getpid_()
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i8* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = load i32, i32* @errno, align 4
  %72 = call i8* @strerror(i32 %71)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %72)
  br label %74

74:                                               ; preds = %68, %54
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @fstat(i32 %75, %struct.stat* %12)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (...) @getpid_()
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %74
  store i32 -1, i32* %13, align 4
  %89 = call i32 @pdfork(i32* %13, i32 0)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = load i32, i32* @errno, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i8* @strerror(i32 %95)
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %94, i8* %96)
  br label %98

98:                                               ; preds = %92, %88
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %105, %101
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 20
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (...) @getpid_()
  %108 = call i32 (...) @getppid()
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32 %108)
  %110 = call i32 @sleep(i32 1)
  br label %102

111:                                              ; preds = %102
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 (...) @getpid_()
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  %115 = call i32 @exit(i32 0) #4
  unreachable

116:                                              ; preds = %98
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (...) @getpid_()
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @pdgetpid(i32 %123, i32* %16)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load i32, i32* @stderr, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @errno, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i8* @strerror(i32 %131)
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %129, i32 %130, i8* %132)
  br label %134

134:                                              ; preds = %127, %116
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 (...) @getpid_()
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @sleep(i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @SIGKILL, align 4
  %145 = call i32 @pdkill(i32 %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (...) @getpid_()
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %134
  %154 = load i32, i32* @stderr, align 4
  %155 = load i32, i32* @errno, align 4
  %156 = load i32, i32* @errno, align 4
  %157 = call i8* @strerror(i32 %156)
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %155, i8* %157)
  br label %159

159:                                              ; preds = %153, %134
  %160 = call i32 @usleep(i32 50000)
  %161 = load i64, i64* @seen_sigchld, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* @stderr, align 4
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i32, i32* @WNOHANG, align 4
  %168 = call i32 @wait4(i32 -1, i32* %17, i32 %167, i32* null)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @stderr, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i32, i32* @stderr, align 4
  %177 = call i32 (...) @getpid_()
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i32 %177)
  %179 = call i32 (...) @fork()
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %241

182:                                              ; preds = %175
  store i32 -1, i32* %19, align 4
  %183 = call i32 @cap_getmode(i32* %19)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 (...) @getpid_()
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %182
  %192 = load i32, i32* @stderr, align 4
  %193 = load i32, i32* @errno, align 4
  %194 = load i32, i32* @errno, align 4
  %195 = call i8* @strerror(i32 %194)
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %193, i8* %195)
  br label %197

197:                                              ; preds = %191, %182
  %198 = call i32 (...) @cap_enter()
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* @stderr, align 4
  %200 = call i32 (...) @getpid_()
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %200, i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %197
  %206 = load i32, i32* @stderr, align 4
  %207 = load i32, i32* @errno, align 4
  %208 = load i32, i32* @errno, align 4
  %209 = call i8* @strerror(i32 %208)
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %207, i8* %209)
  br label %211

211:                                              ; preds = %205, %197
  %212 = call i32 @cap_getmode(i32* %19)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* @stderr, align 4
  %214 = call i32 (...) @getpid_()
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %19, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %9, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load i32, i32* @stderr, align 4
  %222 = load i32, i32* @errno, align 4
  %223 = load i32, i32* @errno, align 4
  %224 = call i8* @strerror(i32 %223)
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %222, i8* %224)
  br label %226

226:                                              ; preds = %220, %211
  %227 = load i32, i32* @O_RDONLY, align 4
  %228 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* @stderr, align 4
  %230 = call i32 (...) @getpid_()
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @errno, align 4
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %229, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0), i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, -1
  br i1 %235, label %236, label %239

236:                                              ; preds = %226
  %237 = load i32, i32* @stderr, align 4
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %237, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %226
  %240 = call i32 @exit(i32 0) #4
  unreachable

241:                                              ; preds = %175
  %242 = load i32, i32* %18, align 4
  %243 = call i32 @wait4(i32 %242, i32* %17, i32 0, i32* null)
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* @stderr, align 4
  %245 = call i32 (...) @getpid_()
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %17, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i32 %245, i32 %246, i32 %247)
  %249 = bitcast [4 x i8*]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %249, i8* align 16 bitcast ([4 x i8*]* @__const.main.argv_pass to i8*), i64 32, i1 false)
  %250 = bitcast [1 x i8*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %250, i8 0, i64 8, i1 false)
  %251 = load i32, i32* @O_RDONLY, align 4
  %252 = call i32 @open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %251)
  store i32 %252, i32* %22, align 4
  %253 = load i32, i32* @stderr, align 4
  %254 = call i32 (...) @getpid_()
  %255 = call i32 (i32, i8*, ...) @fprintf(i32 %253, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %22, align 4
  %257 = getelementptr inbounds [4 x i8*], [4 x i8*]* %20, i64 0, i64 0
  %258 = getelementptr inbounds [1 x i8*], [1 x i8*]* %21, i64 0, i64 0
  %259 = call i32 @fexecve(i32 %256, i8** %257, i8** %258)
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* @stderr, align 4
  %261 = load i32, i32* %22, align 4
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @errno, align 4
  %264 = load i32, i32* @errno, align 4
  %265 = call i8* @strerror(i32 %264)
  %266 = call i32 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i32 %261, i32 %262, i32 %263, i8* %265)
  ret i32 0
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, ...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @cap_rights_limit(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @getpid_(...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @cap_rights_get(i32, i32*) #1

declare dso_local i32 @cap_rights_describe(i32*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pdgetpid(i32, i32*) #1

declare dso_local i32 @pdkill(i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @wait4(i32, i32*, i32, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @cap_getmode(i32*) #1

declare dso_local i32 @cap_enter(...) #1

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @fexecve(i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
