; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_f_xhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_f_xhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8** }

@opt_hostd = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"gethostbyname xhost(%s): h_errno %d\00", align 1
@h_errno = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"xhost: compare %s==%s\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"xhost(%s): matched h_name %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gethostbyname(%s) has no aliases\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"xhost: compare alias %s==%s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"xhost(%s): matched alias %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @f_xhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_xhost(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @opt_hostd, align 4
  %12 = call i64 @STREQ(i8* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %86

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.hostent* @gethostbyname(i8* %16)
  store %struct.hostent* %17, %struct.hostent** %4, align 8
  %18 = load %struct.hostent*, %struct.hostent** %4, align 8
  %19 = icmp eq %struct.hostent* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @XLOG_ERROR, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** @h_errno, align 8
  %24 = call i32 @plog(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  store i32 0, i32* %2, align 4
  br label %86

25:                                               ; preds = %15
  %26 = load %struct.hostent*, %struct.hostent** %4, align 8
  %27 = getelementptr inbounds %struct.hostent, %struct.hostent* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.hostent*, %struct.hostent** %4, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @opt_hostd, align 4
  %35 = call i32 (i8*, i8*, ...) @dlog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load %struct.hostent*, %struct.hostent** %4, align 8
  %37 = getelementptr inbounds %struct.hostent, %struct.hostent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @opt_hostd, align 4
  %40 = call i64 @STREQ(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i32, i32* @XLOG_INFO, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.hostent*, %struct.hostent** %4, align 8
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @plog(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %47)
  store i32 1, i32* %2, align 4
  br label %86

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.hostent*, %struct.hostent** %4, align 8
  %52 = getelementptr inbounds %struct.hostent, %struct.hostent* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = icmp eq i8** %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, i8*, ...) @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  store i32 0, i32* %2, align 4
  br label %86

58:                                               ; preds = %50
  %59 = load %struct.hostent*, %struct.hostent** %4, align 8
  %60 = getelementptr inbounds %struct.hostent, %struct.hostent* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  store i8** %61, i8*** %5, align 8
  br label %62

62:                                               ; preds = %82, %58
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @opt_hostd, align 4
  %70 = call i32 (i8*, i8*, ...) @dlog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @opt_hostd, align 4
  %74 = call i64 @STREQ(i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load i32, i32* @XLOG_INFO, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @plog(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %78, i8* %80)
  store i32 1, i32* %2, align 4
  br label %86

82:                                               ; preds = %66
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %5, align 8
  br label %62

85:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %76, %55, %42, %20, %14, %8
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @STREQ(i8*, i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @dlog(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
