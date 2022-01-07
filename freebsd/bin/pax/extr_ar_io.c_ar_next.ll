; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ar_next.arcbuf = internal global i8* null, align 8
@PAXPATHLEN = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@s_mask = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to set signal mask\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to restore signal mask\00", align 1
@done = common dso_local global i32 0, align 4
@wr_trail = common dso_local global i32 0, align 4
@Oflag = common dso_local global i64 0, align 8
@NM_TAR = common dso_local global i8* null, align 8
@argv0 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"\0AATTENTION! %s archive volume change required.\0A\00", align 1
@arcname = common dso_local global i8* null, align 8
@stdo = common dso_local global i8* null, align 8
@stdn = common dso_local global i8* null, align 8
@artyp = common dso_local global i64 0, align 8
@ISREG = common dso_local global i64 0, align 8
@ISPIPE = common dso_local global i64 0, align 8
@ISTAPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"%s ready for archive tape volume: %d\0A\00", align 1
@arvol = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Load the NEXT TAPE on the tape drive\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s ready for archive volume: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Load the NEXT STORAGE MEDIA (if required)\00", align 1
@act = common dso_local global i64 0, align 8
@ARCHIVE = common dso_local global i64 0, align 8
@APPND = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c" and make sure it is WRITE ENABLED.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Type \22y\22 to continue, \22.\22 to quit %s,\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" or \22s\22 to switch to new device.\0AIf you\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" cannot change storage media, type \22s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Is the device ready and online? > \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@lstrval = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"Quitting %s!\0A\00", align 1
@vfpart = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"%s unknown command, try again\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Cannot re-open %s, try again\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Switching to a different archive\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Ready for archive volume: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Input archive name or \22.\22 to quit %s.\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Archive name > \00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Empty file name, try again\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Illegal file name: .. try again\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"File name too long, try again\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Cannot save archive name.\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Cannot open %s, try again\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_next() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PAXPATHLEN, align 4
  %7 = add nsw i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @SIG_BLOCK, align 4
  %12 = call i64 @sigprocmask(i32 %11, i32* @s_mask, i32* %4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @syswarn(i32 0, i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %0
  %18 = call i32 (...) @ar_close()
  %19 = load i32, i32* @SIG_SETMASK, align 4
  %20 = call i64 @sigprocmask(i32 %19, i32* %4, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @syswarn(i32 0, i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @done, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @wr_trail, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* @Oflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @NM_TAR, align 8
  %36 = load i8*, i8** @argv0, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %31, %28, %25
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %182

40:                                               ; preds = %34
  %41 = load i8*, i8** @argv0, align 8
  %42 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** @arcname, align 8
  %44 = load i8*, i8** @stdo, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %132

47:                                               ; preds = %40
  %48 = load i8*, i8** @arcname, align 8
  %49 = load i8*, i8** @stdn, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %132

52:                                               ; preds = %47
  %53 = load i64, i64* @artyp, align 8
  %54 = load i64, i64* @ISREG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %52
  %57 = load i64, i64* @artyp, align 8
  %58 = load i64, i64* @ISPIPE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %132

60:                                               ; preds = %56
  %61 = load i64, i64* @artyp, align 8
  %62 = load i64, i64* @ISTAPE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** @arcname, align 8
  %66 = load i8*, i8** @arvol, align 8
  %67 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %65, i8* %66)
  %68 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %74

69:                                               ; preds = %60
  %70 = load i8*, i8** @arcname, align 8
  %71 = load i8*, i8** @arvol, align 8
  %72 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %70, i8* %71)
  %73 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i64, i64* @act, align 8
  %76 = load i64, i64* @ARCHIVE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* @act, align 8
  %80 = load i64, i64* @APPND, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %74
  %83 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %86

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %128, %123, %112, %86
  %88 = load i8*, i8** @argv0, align 8
  %89 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %88)
  %90 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %93 = trunc i64 %8 to i32
  %94 = call i64 @tty_read(i8* %10, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %87
  store i32 1, i32* @done, align 4
  store i32 -1, i32* @lstrval, align 4
  %100 = load i8*, i8** @argv0, align 8
  %101 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %100)
  store i64 0, i64* @vfpart, align 8
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %182

102:                                              ; preds = %96
  %103 = getelementptr inbounds i8, i8* %10, i64 0
  %104 = load i8, i8* %103, align 16
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, i8* %10, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %102
  %113 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %10)
  br label %87

114:                                              ; preds = %107
  %115 = getelementptr inbounds i8, i8* %10, i64 0
  %116 = load i8, i8* %115, align 16
  %117 = sext i8 %116 to i32
  switch i32 %117, label %128 [
    i32 121, label %118
    i32 89, label %118
    i32 115, label %126
    i32 83, label %126
  ]

118:                                              ; preds = %114, %114
  %119 = load i8*, i8** @arcname, align 8
  %120 = call i64 @ar_open(i8* %119)
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %182

123:                                              ; preds = %118
  %124 = load i8*, i8** @arcname, align 8
  %125 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %124)
  br label %87

126:                                              ; preds = %114, %114
  %127 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  br label %130

128:                                              ; preds = %114
  %129 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %10)
  br label %87

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130
  br label %135

132:                                              ; preds = %56, %52, %47, %40
  %133 = load i8*, i8** @arvol, align 8
  %134 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %131
  br label %136

136:                                              ; preds = %179, %165, %159, %154, %135
  %137 = load i8*, i8** @argv0, align 8
  %138 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i8* %137)
  %139 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %140 = trunc i64 %8 to i32
  %141 = call i64 @tty_read(i8* %10, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143, %136
  store i32 1, i32* @done, align 4
  store i32 -1, i32* @lstrval, align 4
  %147 = load i8*, i8** @argv0, align 8
  %148 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %147)
  store i64 0, i64* @vfpart, align 8
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %182

149:                                              ; preds = %143
  %150 = getelementptr inbounds i8, i8* %10, i64 0
  %151 = load i8, i8* %150, align 16
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %136

156:                                              ; preds = %149
  %157 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  br label %136

161:                                              ; preds = %156
  %162 = call i32 @strlen(i8* %10)
  %163 = load i32, i32* @PAXPATHLEN, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  br label %136

167:                                              ; preds = %161
  %168 = call i64 @ar_open(i8* %10)
  %169 = icmp sge i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i8*, i8** @ar_next.arcbuf, align 8
  %172 = call i32 @free(i8* %171)
  %173 = call i8* @strdup(i8* %10)
  store i8* %173, i8** @ar_next.arcbuf, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  store i32 1, i32* @done, align 4
  store i32 -1, i32* @lstrval, align 4
  %176 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %182

177:                                              ; preds = %170
  %178 = load i8*, i8** @ar_next.arcbuf, align 8
  store i8* %178, i8** @arcname, align 8
  br label %181

179:                                              ; preds = %167
  %180 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8* %10)
  br label %136

181:                                              ; preds = %177
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %182

182:                                              ; preds = %181, %175, %146, %122, %99, %39
  %183 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %1, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @syswarn(i32, i32, i8*) #2

declare dso_local i32 @ar_close(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @tty_prnt(i8*, ...) #2

declare dso_local i64 @tty_read(i8*, i32) #2

declare dso_local i64 @ar_open(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @paxwarn(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
