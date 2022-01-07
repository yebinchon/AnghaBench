; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exofs_mountopt = type { i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"parse_options %s\0A\00", align 1
@BLK_DEFAULT_SG_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXOFS_MIN_PID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Partition ID must be >= %u\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Timout must be > 0\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Need to specify the following options:\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"    -o pid=pid_no_to_use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.exofs_mountopt*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.exofs_mountopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.exofs_mountopt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.exofs_mountopt* %1, %struct.exofs_mountopt** %5, align 8
  %14 = load i32, i32* @MAX_OPT_ARGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @EXOFS_DBGMSG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.exofs_mountopt*, %struct.exofs_mountopt** %5, align 8
  %21 = call i32 @memset(%struct.exofs_mountopt* %20, i32 0, i32 8)
  %22 = load i32, i32* @BLK_DEFAULT_SG_TIMEOUT, align 4
  %23 = load %struct.exofs_mountopt*, %struct.exofs_mountopt** %5, align 8
  %24 = getelementptr inbounds %struct.exofs_mountopt, %struct.exofs_mountopt* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %82, %32, %2
  %26 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %25

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @tokens, align 4
  %36 = call i32 @match_token(i8* %34, i32 %35, i32* %17)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %82 [
    i32 129, label %38
    i32 128, label %62
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %17, i64 0
  %41 = call i32 @match_strlcpy(i8* %39, i32* %40, i32 32)
  %42 = icmp eq i32 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

46:                                               ; preds = %38
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %48 = call i32 @simple_strtoull(i8* %47, i32* null, i32 0)
  %49 = load %struct.exofs_mountopt*, %struct.exofs_mountopt** %5, align 8
  %50 = getelementptr inbounds %struct.exofs_mountopt, %struct.exofs_mountopt* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.exofs_mountopt*, %struct.exofs_mountopt** %5, align 8
  %52 = getelementptr inbounds %struct.exofs_mountopt, %struct.exofs_mountopt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EXOFS_MIN_PID, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @EXOFS_MIN_PID, align 4
  %58 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

61:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %82

62:                                               ; preds = %33
  %63 = getelementptr inbounds i32, i32* %17, i64 0
  %64 = call i32 @match_int(i32* %63, i32* %9)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load %struct.exofs_mountopt*, %struct.exofs_mountopt** %5, align 8
  %81 = getelementptr inbounds %struct.exofs_mountopt, %struct.exofs_mountopt* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %33, %76, %61
  br label %25

83:                                               ; preds = %25
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %86, %72, %66, %56, %43
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EXOFS_DBGMSG(i8*, i8*) #2

declare dso_local i32 @memset(%struct.exofs_mountopt*, i32, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_strlcpy(i8*, i32*, i32) #2

declare dso_local i32 @simple_strtoull(i8*, i32*, i32) #2

declare dso_local i32 @EXOFS_ERR(i8*, ...) #2

declare dso_local i32 @match_int(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
