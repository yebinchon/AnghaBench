; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_FindHereOrAbove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_FindHereOrAbove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Dir_FindHereOrAbove(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = trunc i64 %19 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @strlen(i8* %21)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %21, i64 %30
  store i8* %31, i8** %13, align 8
  br label %32

32:                                               ; preds = %91, %4
  br label %33

33:                                               ; preds = %32
  %34 = trunc i64 %24 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %35)
  %37 = call i32 @cached_stat(i8* %25, %struct.stat* %10)
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %73

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @S_IFMT, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @S_IFDIR, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %39
  %47 = call i32 @strlen(i8* %25)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %25, i64 %48
  store i8* %49, i8** %15, align 8
  br label %50

50:                                               ; preds = %60, %46
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ugt i8* %51, %25
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %15, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 47
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %15, align 8
  br label %50

63:                                               ; preds = %58
  %64 = load i8*, i8** %15, align 8
  %65 = icmp ugt i8* %64, %25
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** %15, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %94

73:                                               ; preds = %33
  %74 = load i8*, i8** %13, align 8
  %75 = icmp eq i8* %74, %21
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %93

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %88, %77
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ugt i8* %79, %21
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8*, i8** %13, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 47
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i1 [ false, %78 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %13, align 8
  br label %78

91:                                               ; preds = %86
  %92 = load i8*, i8** %13, align 8
  store i8 0, i8* %92, align 1
  br label %32

93:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @cached_stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
