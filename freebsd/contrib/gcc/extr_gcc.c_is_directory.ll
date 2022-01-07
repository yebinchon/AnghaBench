; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_is_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_is_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@DIR_SEPARATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"usr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @is_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_directory(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 3, %12
  %14 = call i8* @alloca(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @memcpy(i8* %15, i8* %16, i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @IS_DIR_SEPARATOR(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @DIR_SEPARATOR, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  store i8 %30, i8* %31, align 1
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  store i8 46, i8* %34, align 1
  %36 = load i8*, i8** %8, align 8
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @IS_DIR_SEPARATOR(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %52, %45
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = icmp eq i64 %62, 10
  br i1 %63, label %64, label %81

64:                                               ; preds = %57
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @IS_DIR_SEPARATOR(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %52
  store i32 0, i32* %3, align 4
  br label %93

81:                                               ; preds = %75, %69, %64, %57, %39, %33
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @stat(i8* %82, %struct.stat* %9)
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %85, %81
  %91 = phi i1 [ false, %81 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %80
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
