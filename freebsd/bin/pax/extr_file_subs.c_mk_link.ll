; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_mk_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_mk_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32, i32, i32 }

@kflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unable to link file %s to itself\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unable to remove %s\00", align 1
@nodirs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not link to %s from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i8*, i32)* @mk_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_link(i8* %0, %struct.stat* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @lstat(i8* %12, %struct.stat* %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %4
  %16 = load i64, i64* @kflag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %96

19:                                               ; preds = %15
  %20 = load %struct.stat*, %struct.stat** %7, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.stat*, %struct.stat** %7, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %5, align 4
  br label %96

36:                                               ; preds = %26, %19
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @S_ISDIR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @rmdir(i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @errno, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i32, i32, i8*, i8*, ...) @syswarn(i32 1, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 -1, i32* %5, align 4
  br label %96

49:                                               ; preds = %41
  br label %63

50:                                               ; preds = %36
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @unlink(i8* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @errno, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 (i32, i32, i8*, i8*, ...) @syswarn(i32 1, i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 -1, i32* %5, align 4
  br label %96

61:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %96

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %4
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @link(i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %95

71:                                               ; preds = %65
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @nodirs, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.stat*, %struct.stat** %7, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.stat*, %struct.stat** %7, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @chk_path(i8* %76, i32 %79, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %65

86:                                               ; preds = %75, %71
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 (i32, i32, i8*, i8*, ...) @syswarn(i32 1, i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* %92)
  store i32 -1, i32* %5, align 4
  br label %96

94:                                               ; preds = %86
  store i32 1, i32* %5, align 4
  br label %96

95:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %94, %89, %61, %57, %45, %33, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @paxwarn(i32, i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i64 @chk_path(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
