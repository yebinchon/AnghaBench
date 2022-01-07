; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@FIODTYPE = common dso_local global i64 0, align 8
@MTIOCTOP = common dso_local global i64 0, align 8
@in = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CAP_READ = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to limit capability rights\00", align 1
@files_cnt = common dso_local global i32 0, align 4
@ISTAPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"files is not supported for non-tape devices\00", align 1
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@ddflags = common dso_local global i32 0, align 4
@C_FDATASYNC = common dso_local global i32 0, align 4
@C_FSYNC = common dso_local global i32 0, align 4
@CAP_FSYNC = common dso_local global i32 0, align 4
@out = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@C_OFSYNC = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"unable to get fd flags for stdout\00", align 1
@O_FSYNC = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"unable to set fd flags for stdout\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@C_SEEK = common dso_local global i32 0, align 4
@C_NOTRUNC = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@NOREAD = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@C_BLOCK = common dso_local global i32 0, align 4
@C_UNBLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"input buffer\00", align 1
@cbsz = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"output buffer\00", align 1
@C_OF = common dso_local global i32 0, align 4
@ISTRUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"truncating %s\00", align 1
@C_LCASE = common dso_local global i32 0, align 4
@C_UCASE = common dso_local global i32 0, align 4
@C_ASCII = common dso_local global i32 0, align 4
@C_EBCDIC = common dso_local global i32 0, align 4
@C_PARITY = common dso_local global i32 0, align 4
@ctab = common dso_local global i32* null, align 8
@casetab = common dso_local global i32* null, align 8
@C_PARSET = common dso_local global i32 0, align 4
@C_PAREVEN = common dso_local global i32 0, align 4
@C_PARODD = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@st = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i64], align 16
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %6 = load i64, i64* @FIODTYPE, align 8
  store i64 %6, i64* %5, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 1
  %8 = load i64, i64* @MTIOCTOP, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %12 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  br label %24

13:                                               ; preds = %0
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i8* @open(i8* %14, i32 %15, i32 0)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %22 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %11
  %25 = call i32 @getfdtype(%struct.TYPE_6__* @in)
  %26 = load i32, i32* @CAP_READ, align 4
  %27 = load i32, i32* @CAP_SEEK, align 4
  %28 = call i32 @cap_rights_init(i32* %3, i32 %26, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %30 = call i32 @caph_rights_limit(i32 %29, i32* %3)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i32, i32* @files_cnt, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 4
  %39 = load i32, i32* @ISTAPE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37, %34
  %45 = load i32, i32* @CAP_FTRUNCATE, align 4
  %46 = load i32, i32* @CAP_IOCTL, align 4
  %47 = load i32, i32* @CAP_WRITE, align 4
  %48 = call i32 (i32*, i32, ...) @cap_rights_set(i32* %3, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @ddflags, align 4
  %50 = load i32, i32* @C_FDATASYNC, align 4
  %51 = load i32, i32* @C_FSYNC, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @CAP_FSYNC, align 4
  %57 = call i32 (i32*, i32, ...) @cap_rights_set(i32* %3, i32 %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 0), align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 0), align 8
  %63 = load i32, i32* @ddflags, align 4
  %64 = load i32, i32* @C_OFSYNC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %69 = load i32, i32* @F_GETFL, align 4
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %68, i32 %69)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i32, i32* @O_FSYNC, align 4
  %77 = load i32, i32* %2, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %80 = load i32, i32* @F_SETFL, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 (i32, i32, ...) @fcntl(i32 %79, i32 %80, i32 %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %75
  br label %87

87:                                               ; preds = %86, %61
  br label %139

88:                                               ; preds = %58
  %89 = load i32, i32* @O_CREAT, align 4
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* @ddflags, align 4
  %91 = load i32, i32* @C_SEEK, align 4
  %92 = load i32, i32* @C_NOTRUNC, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @O_TRUNC, align 4
  %98 = load i32, i32* %2, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %88
  %101 = load i32, i32* @ddflags, align 4
  %102 = load i32, i32* @C_OFSYNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @O_FSYNC, align 4
  %107 = load i32, i32* %2, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 0), align 8
  %111 = load i32, i32* @O_RDWR, align 4
  %112 = load i32, i32* %2, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @DEFFILEMODE, align 4
  %115 = call i8* @open(i8* %110, i32 %113, i32 %114)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %132

119:                                              ; preds = %109
  %120 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 0), align 8
  %121 = load i32, i32* @O_WRONLY, align 4
  %122 = load i32, i32* %2, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @DEFFILEMODE, align 4
  %125 = call i8* @open(i8* %120, i32 %123, i32 %124)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %127 = load i32, i32* @NOREAD, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 2), align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 2), align 4
  %130 = load i32, i32* @CAP_READ, align 4
  %131 = call i32 @cap_rights_clear(i32* %3, i32 %130)
  br label %132

132:                                              ; preds = %119, %109
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 0), align 8
  %137 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138, %87
  %140 = call i32 @getfdtype(%struct.TYPE_6__* @out)
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %142 = call i32 @caph_rights_limit(i32 %141, i32* %3)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %148 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %149 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %150 = call i32 @nitems(i64* %149)
  %151 = call i32 @caph_ioctls_limit(i32 %147, i64* %148, i32 %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %146
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %157 = load i32, i32* @STDIN_FILENO, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %161 = load i32, i32* @STDIN_FILENO, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = call i32 (...) @caph_limit_stdin()
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %163
  br label %169

169:                                              ; preds = %168, %159, %155
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %171 = load i32, i32* @STDOUT_FILENO, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %175 = load i32, i32* @STDOUT_FILENO, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = call i32 (...) @caph_limit_stdout()
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  br label %183

183:                                              ; preds = %182, %173, %169
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %185 = load i32, i32* @STDERR_FILENO, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %183
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %189 = load i32, i32* @STDERR_FILENO, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = call i32 (...) @caph_limit_stderr()
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %191
  br label %197

197:                                              ; preds = %196, %187, %183
  %198 = load i32, i32* @ddflags, align 4
  %199 = load i32, i32* @C_BLOCK, align 4
  %200 = load i32, i32* @C_UNBLOCK, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %219, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 3), align 8
  %206 = sext i32 %205 to i64
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %208 = sext i32 %207 to i64
  %209 = add i64 %206, %208
  %210 = sub i64 %209, 1
  %211 = trunc i64 %210 to i32
  %212 = call i8* @malloc(i32 %211)
  %213 = bitcast i8* %212 to i32*
  store i32* %213, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %204
  %216 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %204
  %218 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  store i32* %218, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 5), align 8
  br label %239

219:                                              ; preds = %197
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* @cbsz, align 4
  %223 = call i32 @MAX(i64 %221, i32 %222)
  %224 = load i32, i32* @cbsz, align 4
  %225 = add nsw i32 %223, %224
  %226 = call i8* @malloc(i32 %225)
  %227 = bitcast i8* %226 to i32*
  store i32* %227, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %219
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 3), align 8
  %231 = load i32, i32* @cbsz, align 4
  %232 = add nsw i32 %230, %231
  %233 = call i8* @malloc(i32 %232)
  %234 = bitcast i8* %233 to i32*
  store i32* %234, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 5), align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %229, %219
  %237 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %229
  br label %239

239:                                              ; preds = %238, %217
  %240 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  store i32* %240, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 6), align 8
  %241 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 5), align 8
  store i32* %241, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 6), align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 4), align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = call i32 (...) @pos_in()
  br label %246

246:                                              ; preds = %244, %239
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 4), align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = call i32 (...) @pos_out()
  br label %251

251:                                              ; preds = %249, %246
  %252 = load i32, i32* @ddflags, align 4
  %253 = load i32, i32* @C_OF, align 4
  %254 = load i32, i32* @C_SEEK, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @C_NOTRUNC, align 4
  %257 = or i32 %255, %256
  %258 = and i32 %252, %257
  %259 = load i32, i32* @C_OF, align 4
  %260 = load i32, i32* @C_SEEK, align 4
  %261 = or i32 %259, %260
  %262 = icmp eq i32 %258, %261
  br i1 %262, label %263, label %279

263:                                              ; preds = %251
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 2), align 4
  %265 = load i32, i32* @ISTRUNC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %279

268:                                              ; preds = %263
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 1), align 8
  %270 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 4), align 4
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 3), align 8
  %272 = mul nsw i32 %270, %271
  %273 = call i32 @ftruncate(i32 %269, i32 %272)
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @out, i32 0, i32 0), align 8
  %277 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %276)
  br label %278

278:                                              ; preds = %275, %268
  br label %279

279:                                              ; preds = %278, %263, %251
  %280 = load i32, i32* @ddflags, align 4
  %281 = load i32, i32* @C_LCASE, align 4
  %282 = load i32, i32* @C_UCASE, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @C_ASCII, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @C_EBCDIC, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @C_PARITY, align 4
  %289 = or i32 %287, %288
  %290 = and i32 %280, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %521

292:                                              ; preds = %279
  %293 = load i32*, i32** @ctab, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %313

295:                                              ; preds = %292
  store i32 0, i32* %1, align 4
  br label %296

296:                                              ; preds = %309, %295
  %297 = load i32, i32* %1, align 4
  %298 = icmp sle i32 %297, 255
  br i1 %298, label %299, label %312

299:                                              ; preds = %296
  %300 = load i32*, i32** @ctab, align 8
  %301 = load i32, i32* %1, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** @casetab, align 8
  %306 = load i32, i32* %1, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %304, i32* %308, align 4
  br label %309

309:                                              ; preds = %299
  %310 = load i32, i32* %1, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %1, align 4
  br label %296

312:                                              ; preds = %296
  br label %327

313:                                              ; preds = %292
  store i32 0, i32* %1, align 4
  br label %314

314:                                              ; preds = %323, %313
  %315 = load i32, i32* %1, align 4
  %316 = icmp sle i32 %315, 255
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i32, i32* %1, align 4
  %319 = load i32*, i32** @casetab, align 8
  %320 = load i32, i32* %1, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %318, i32* %322, align 4
  br label %323

323:                                              ; preds = %317
  %324 = load i32, i32* %1, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %1, align 4
  br label %314

326:                                              ; preds = %314
  br label %327

327:                                              ; preds = %326, %312
  %328 = load i32, i32* @ddflags, align 4
  %329 = load i32, i32* @C_PARITY, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %356

332:                                              ; preds = %327
  %333 = load i32, i32* @ddflags, align 4
  %334 = load i32, i32* @C_ASCII, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %356, label %337

337:                                              ; preds = %332
  store i32 200, i32* %1, align 4
  br label %338

338:                                              ; preds = %352, %337
  %339 = load i32, i32* %1, align 4
  %340 = icmp sle i32 %339, 255
  br i1 %340, label %341, label %355

341:                                              ; preds = %338
  %342 = load i32*, i32** @casetab, align 8
  %343 = load i32, i32* %1, align 4
  %344 = and i32 %343, 127
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** @casetab, align 8
  %349 = load i32, i32* %1, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  store i32 %347, i32* %351, align 4
  br label %352

352:                                              ; preds = %341
  %353 = load i32, i32* %1, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %1, align 4
  br label %338

355:                                              ; preds = %338
  br label %356

356:                                              ; preds = %355, %332, %327
  %357 = load i32, i32* @ddflags, align 4
  %358 = load i32, i32* @C_LCASE, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %380

361:                                              ; preds = %356
  store i32 0, i32* %1, align 4
  br label %362

362:                                              ; preds = %376, %361
  %363 = load i32, i32* %1, align 4
  %364 = icmp sle i32 %363, 255
  br i1 %364, label %365, label %379

365:                                              ; preds = %362
  %366 = load i32*, i32** @casetab, align 8
  %367 = load i32, i32* %1, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @tolower(i32 %370) #3
  %372 = load i32*, i32** @casetab, align 8
  %373 = load i32, i32* %1, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 %371, i32* %375, align 4
  br label %376

376:                                              ; preds = %365
  %377 = load i32, i32* %1, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %1, align 4
  br label %362

379:                                              ; preds = %362
  br label %405

380:                                              ; preds = %356
  %381 = load i32, i32* @ddflags, align 4
  %382 = load i32, i32* @C_UCASE, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %404

385:                                              ; preds = %380
  store i32 0, i32* %1, align 4
  br label %386

386:                                              ; preds = %400, %385
  %387 = load i32, i32* %1, align 4
  %388 = icmp sle i32 %387, 255
  br i1 %388, label %389, label %403

389:                                              ; preds = %386
  %390 = load i32*, i32** @casetab, align 8
  %391 = load i32, i32* %1, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @toupper(i32 %394) #3
  %396 = load i32*, i32** @casetab, align 8
  %397 = load i32, i32* %1, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  store i32 %395, i32* %399, align 4
  br label %400

400:                                              ; preds = %389
  %401 = load i32, i32* %1, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %1, align 4
  br label %386

403:                                              ; preds = %386
  br label %404

404:                                              ; preds = %403, %380
  br label %405

405:                                              ; preds = %404, %379
  %406 = load i32, i32* @ddflags, align 4
  %407 = load i32, i32* @C_PARITY, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %429

410:                                              ; preds = %405
  store i32 0, i32* %1, align 4
  br label %411

411:                                              ; preds = %425, %410
  %412 = load i32, i32* %1, align 4
  %413 = icmp sle i32 %412, 255
  br i1 %413, label %414, label %428

414:                                              ; preds = %411
  %415 = load i32*, i32** @casetab, align 8
  %416 = load i32, i32* %1, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = and i32 %419, 127
  %421 = load i32*, i32** @casetab, align 8
  %422 = load i32, i32* %1, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  store i32 %420, i32* %424, align 4
  br label %425

425:                                              ; preds = %414
  %426 = load i32, i32* %1, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %1, align 4
  br label %411

428:                                              ; preds = %411
  br label %429

429:                                              ; preds = %428, %405
  %430 = load i32, i32* @ddflags, align 4
  %431 = load i32, i32* @C_PARSET, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %453

434:                                              ; preds = %429
  store i32 0, i32* %1, align 4
  br label %435

435:                                              ; preds = %449, %434
  %436 = load i32, i32* %1, align 4
  %437 = icmp sle i32 %436, 255
  br i1 %437, label %438, label %452

438:                                              ; preds = %435
  %439 = load i32*, i32** @casetab, align 8
  %440 = load i32, i32* %1, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = or i32 %443, 128
  %445 = load i32*, i32** @casetab, align 8
  %446 = load i32, i32* %1, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  store i32 %444, i32* %448, align 4
  br label %449

449:                                              ; preds = %438
  %450 = load i32, i32* %1, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %1, align 4
  br label %435

452:                                              ; preds = %435
  br label %453

453:                                              ; preds = %452, %429
  %454 = load i32, i32* @ddflags, align 4
  %455 = load i32, i32* @C_PAREVEN, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %486

458:                                              ; preds = %453
  store i32 0, i32* %1, align 4
  br label %459

459:                                              ; preds = %482, %458
  %460 = load i32, i32* %1, align 4
  %461 = icmp sle i32 %460, 255
  br i1 %461, label %462, label %485

462:                                              ; preds = %459
  %463 = load i32*, i32** @casetab, align 8
  %464 = load i32, i32* %1, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = call i64 @parity(i32 %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %481

470:                                              ; preds = %462
  %471 = load i32*, i32** @casetab, align 8
  %472 = load i32, i32* %1, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = or i32 %475, 128
  %477 = load i32*, i32** @casetab, align 8
  %478 = load i32, i32* %1, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  store i32 %476, i32* %480, align 4
  br label %481

481:                                              ; preds = %470, %462
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %1, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %1, align 4
  br label %459

485:                                              ; preds = %459
  br label %486

486:                                              ; preds = %485, %453
  %487 = load i32, i32* @ddflags, align 4
  %488 = load i32, i32* @C_PARODD, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %519

491:                                              ; preds = %486
  store i32 0, i32* %1, align 4
  br label %492

492:                                              ; preds = %515, %491
  %493 = load i32, i32* %1, align 4
  %494 = icmp sle i32 %493, 255
  br i1 %494, label %495, label %518

495:                                              ; preds = %492
  %496 = load i32*, i32** @casetab, align 8
  %497 = load i32, i32* %1, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %496, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = call i64 @parity(i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %514, label %503

503:                                              ; preds = %495
  %504 = load i32*, i32** @casetab, align 8
  %505 = load i32, i32* %1, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = or i32 %508, 128
  %510 = load i32*, i32** @casetab, align 8
  %511 = load i32, i32* %1, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  store i32 %509, i32* %513, align 4
  br label %514

514:                                              ; preds = %503, %495
  br label %515

515:                                              ; preds = %514
  %516 = load i32, i32* %1, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %1, align 4
  br label %492

518:                                              ; preds = %492
  br label %519

519:                                              ; preds = %518, %486
  %520 = load i32*, i32** @casetab, align 8
  store i32* %520, i32** @ctab, align 8
  br label %521

521:                                              ; preds = %519, %279
  %522 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %523 = call i64 @clock_gettime(i32 %522, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @st, i32 0, i32 0))
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %521
  %526 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %527

527:                                              ; preds = %525, %521
  ret void
}

declare dso_local i8* @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getfdtype(%struct.TYPE_6__*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @cap_rights_set(i32*, i32, ...) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @cap_rights_clear(i32*, i32) #1

declare dso_local i32 @caph_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @caph_limit_stdin(...) #1

declare dso_local i32 @caph_limit_stdout(...) #1

declare dso_local i32 @caph_limit_stderr(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @pos_in(...) #1

declare dso_local i32 @pos_out(...) #1

declare dso_local i32 @ftruncate(i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i64 @parity(i32) #1

declare dso_local i64 @clock_gettime(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
