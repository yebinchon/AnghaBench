; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_load_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_load_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.queue = type { i32 }
%struct.stat = type { i32 }
%struct.qitem = type { i8* }
%struct.dirent = type { i8* }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reading queue\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s/Q%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s/M%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"could not pick up queue file: `%s'/`%s': %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_queue(%struct.queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.qitem*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  %10 = load %struct.queue*, %struct.queue** %3, align 8
  %11 = call i32 @bzero(%struct.queue* %10, i32 4)
  %12 = load %struct.queue*, %struct.queue** %3, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  %14 = call i32 @LIST_INIT(i32* %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %16 = call i32* @opendir(i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EX_NOINPUT, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  br label %23

23:                                               ; preds = %98, %78, %35, %22
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.dirent* @readdir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %7, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %99

27:                                               ; preds = %23
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %28 = load %struct.dirent*, %struct.dirent** %7, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 81
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %23

36:                                               ; preds = %27
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %38 = load %struct.dirent*, %struct.dirent** %7, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %102

45:                                               ; preds = %36
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %47 = load %struct.dirent*, %struct.dirent** %7, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i64 @asprintf(i8** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %102

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @stat(i8* %55, %struct.stat* %4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %82

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @S_ISREG(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* @errno, align 4
  br label %82

66:                                               ; preds = %59
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @stat(i8* %67, %struct.stat* %4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %82

71:                                               ; preds = %66
  %72 = load %struct.queue*, %struct.queue** %3, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call %struct.qitem* @readqueuef(%struct.queue* %72, i8* %73)
  store %struct.qitem* %74, %struct.qitem** %5, align 8
  %75 = load %struct.qitem*, %struct.qitem** %5, align 8
  %76 = icmp eq %struct.qitem* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %82

78:                                               ; preds = %71
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.qitem*, %struct.qitem** %5, align 8
  %81 = getelementptr inbounds %struct.qitem, %struct.qitem* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %23

82:                                               ; preds = %77, %70, %64, %58
  %83 = load i32, i32* @LOG_INFO, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @syslog(i32 %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %84, i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %23

99:                                               ; preds = %23
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @closedir(i32* %100)
  store i32 0, i32* %2, align 4
  br label %103

102:                                              ; preds = %53, %44
  store i32 -1, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @bzero(%struct.queue*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.qitem* @readqueuef(%struct.queue*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
