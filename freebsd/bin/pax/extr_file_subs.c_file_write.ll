; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_file_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"File seek on %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_write(i32 %0, i8* %1, i32 %2, i32* %3, i32* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %19, align 8
  br label %21

21:                                               ; preds = %96, %81, %7
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %101

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %13, align 8
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MIN(i32 %33, i32 %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %32
  %48 = load i8*, i8** %19, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %17, align 8
  br label %53

53:                                               ; preds = %64, %47
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i8*, i8** %16, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i1 [ false, %53 ], [ %61, %57 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %16, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %16, align 8
  br label %53

67:                                               ; preds = %62
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @SEEK_CUR, align 4
  %75 = call i64 @lseek(i32 %72, i32 %73, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @errno, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @syswarn(i32 1, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %79)
  store i32 -1, i32* %8, align 4
  br label %108

81:                                               ; preds = %71
  %82 = load i8*, i8** %16, align 8
  store i8* %82, i8** %19, align 8
  br label %21

83:                                               ; preds = %67
  %84 = load i32*, i32** %13, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %32
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %19, align 8
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @write(i32 %86, i8* %87, i32 %88)
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @errno, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @syswarn(i32 1, i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  store i32 -1, i32* %8, align 4
  br label %108

96:                                               ; preds = %85
  %97 = load i32, i32* %18, align 4
  %98 = load i8*, i8** %19, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %19, align 8
  br label %21

101:                                              ; preds = %21
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %101, %92, %77
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
