; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_dma-mbox-create.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_dma-mbox-create.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.group = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"dma-mbox-create\00", align 1
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_MAIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@DMA_GROUP = common dso_local global i8* null, align 8
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot find dma group `%s'\00", align 1
@EX_NOPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot set gid to %d (%s)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot set gid to %d (%s), still at %d\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"no arguments\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"creating mbox for `%s'\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"path separator in username `%s'\00", align 1
@EX_NOUSER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"cannot find user `%s'\00", align 1
@_PATH_MAILDIR = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"cannot open maildir %s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"cannot open mbox `%s'\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"cannot change owner of mbox `%s'\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"cannot change permissions of mbox `%s'\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"successfully created mbox for `%s'\00", align 1
@CAP_CREATE = common dso_local global i32 0, align 4
@CAP_FCHMOD = common dso_local global i32 0, align 4
@CAP_FCHOWN = common dso_local global i32 0, align 4
@CAP_LOOKUP = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @LOG_NDELAY, align 4
  %14 = load i32, i32* @LOG_MAIL, align 4
  %15 = call i32 @openlog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i64 0, i64* @errno, align 8
  %16 = load i8*, i8** @DMA_GROUP, align 8
  %17 = call %struct.group* @getgrnam(i8* %16)
  store %struct.group* %17, %struct.group** %8, align 8
  %18 = load %struct.group*, %struct.group** %8, align 8
  %19 = icmp ne %struct.group* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EX_CONFIG, align 4
  %22 = load i8*, i8** @DMA_GROUP, align 8
  %23 = call i32 (i32, i8*, ...) @logfail(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.group*, %struct.group** %8, align 8
  %26 = getelementptr inbounds %struct.group, %struct.group* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @setgid(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @EX_NOPERM, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load i8*, i8** @DMA_GROUP, align 8
  %35 = call i32 (i32, i8*, ...) @logfail(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = call i64 (...) @getegid()
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @EX_NOPERM, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i8*, i8** @DMA_GROUP, align 8
  %44 = call i64 (...) @getegid()
  %45 = call i32 (i32, i8*, ...) @logfail(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store i64 0, i64* @errno, align 8
  %50 = load i32, i32* @EX_USAGE, align 4
  %51 = call i32 (i32, i8*, ...) @logfail(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %6, align 8
  %56 = load i32, i32* @LOG_NOTICE, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @syslog(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strchr(i8* %59, i8 signext 47)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  store i64 0, i64* @errno, align 8
  %63 = load i32, i32* @EX_DATAERR, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i32, i8*, ...) @logfail(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %52
  store i64 0, i64* @errno, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call %struct.passwd* @getpwnam(i8* %68)
  store %struct.passwd* %69, %struct.passwd** %7, align 8
  %70 = load %struct.passwd*, %struct.passwd** %7, align 8
  %71 = icmp ne %struct.passwd* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EX_NOUSER, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 (i32, i8*, ...) @logfail(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i8*, i8** @_PATH_MAILDIR, align 8
  %78 = load i32, i32* @O_RDONLY, align 4
  %79 = call i32 @open(i8* %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @EX_NOINPUT, align 4
  %84 = load i8*, i8** @_PATH_MAILDIR, align 8
  %85 = call i32 (i32, i8*, ...) @logfail(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = call i32 (...) @caph_cache_catpages()
  %88 = call i32 (...) @caph_cache_tzdata()
  %89 = load %struct.passwd*, %struct.passwd** %7, align 8
  %90 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @O_RDONLY, align 4
  %95 = load i32, i32* @O_CREAT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @O_NOFOLLOW, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @openat(i32 %92, i8* %93, i32 %98, i32 384)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %86
  %103 = load i32, i32* @EX_NOINPUT, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 (i32, i8*, ...) @logfail(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %86
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @fchown(i32 %107, i32 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @EX_OSERR, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 (i32, i8*, ...) @logfail(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @fchmod(i32 %117, i32 400)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @EX_OSERR, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 (i32, i8*, ...) @logfail(i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* @LOG_NOTICE, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @syslog(i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %126)
  ret i32 0
}

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @logfail(i32, i8*, ...) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i64 @getegid(...) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i32 @caph_cache_tzdata(...) #1

declare dso_local i32 @openat(i32, i8*, i32, i32) #1

declare dso_local i64 @fchown(i32, i32, i64) #1

declare dso_local i64 @fchmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
