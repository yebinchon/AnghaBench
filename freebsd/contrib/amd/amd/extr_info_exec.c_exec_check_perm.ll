; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_check_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_check_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"exec_check_permission got a NULL map\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"map \22%s\22 stat failure: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"map \22%s\22 should be regular file\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"map \22%s\22 owned by uid %u (must be 0)\00", align 1
@EACCES = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"map \22%s\22 should be executable\00", align 1
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"map \22%s\22 should not be setuid/setgid\00", align 1
@S_IWOTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"map \22%s\22 should not be world writeable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @exec_check_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_check_perm(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = call i32 @dlog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %2, align 4
  br label %77

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @XLOG_ERROR, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @plog(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %2, align 4
  br label %77

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @S_ISREG(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @XLOG_ERROR, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @plog(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %2, align 4
  br label %77

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @XLOG_ERROR, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i32, i8*, i8*, ...) @plog(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load i32, i32* @EACCES, align 4
  store i32 %40, i32* %2, align 4
  br label %77

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @S_IXUSR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @XLOG_ERROR, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @plog(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @EACCES, align 4
  store i32 %51, i32* %2, align 4
  br label %77

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @S_ISUID, align 4
  %56 = load i32, i32* @S_ISGID, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* @XLOG_ERROR, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @plog(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @EACCES, align 4
  store i32 %64, i32* %2, align 4
  br label %77

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @S_IWOTH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @XLOG_ERROR, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 (i32, i8*, i8*, ...) @plog(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EACCES, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %71, %60, %47, %33, %24, %14, %7
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dlog(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @plog(i32, i8*, i8*, ...) #1

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
