; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_rmdirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_rmdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EROFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rmdir(%s): %m\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rmdir(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmdirs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @xstrdup(i8* %6)
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %66, %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @rmdir(i8* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ENOTEMPTY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EBUSY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EEXIST, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EROFS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINVAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @XLOG_ERROR, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @plog(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21
  br label %68

46:                                               ; preds = %17
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @dlog(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46
  br label %51

50:                                               ; preds = %12, %8
  br label %68

51:                                               ; preds = %49
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @strrchr(i8* %52, i8 signext 47)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = icmp ugt i8* %63, %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %8, label %68

68:                                               ; preds = %66, %50, %45
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @XFREE(i8* %69)
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i32 @dlog(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @XFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
