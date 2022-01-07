; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_file-type.c_file_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_file-type.c_file_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"regular empty file\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"regular file\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"block special file\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"character special file\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"symbolic link\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"message queue\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"semaphore\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"shared memory object\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"typed memory object\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"weird file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @file_type(%struct.stat* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %4 = load %struct.stat*, %struct.stat** %3, align 8
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @S_ISREG(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.stat*, %struct.stat** %3, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

16:                                               ; preds = %9
  %17 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i8* [ %15, %14 ], [ %17, %16 ]
  store i8* %19, i8** %2, align 8
  br label %94

20:                                               ; preds = %1
  %21 = load %struct.stat*, %struct.stat** %3, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @S_ISDIR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %2, align 8
  br label %94

28:                                               ; preds = %20
  %29 = load %struct.stat*, %struct.stat** %3, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @S_ISBLK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i8* %35, i8** %2, align 8
  br label %94

36:                                               ; preds = %28
  %37 = load %struct.stat*, %struct.stat** %3, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @S_ISCHR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** %2, align 8
  br label %94

44:                                               ; preds = %36
  %45 = load %struct.stat*, %struct.stat** %3, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @S_ISFIFO(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %51, i8** %2, align 8
  br label %94

52:                                               ; preds = %44
  %53 = load %struct.stat*, %struct.stat** %3, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @S_ISLNK(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %59, i8** %2, align 8
  br label %94

60:                                               ; preds = %52
  %61 = load %struct.stat*, %struct.stat** %3, align 8
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @S_ISSOCK(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %67, i8** %2, align 8
  br label %94

68:                                               ; preds = %60
  %69 = load %struct.stat*, %struct.stat** %3, align 8
  %70 = call i64 @S_TYPEISMQ(%struct.stat* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %73, i8** %2, align 8
  br label %94

74:                                               ; preds = %68
  %75 = load %struct.stat*, %struct.stat** %3, align 8
  %76 = call i64 @S_TYPEISSEM(%struct.stat* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %79, i8** %2, align 8
  br label %94

80:                                               ; preds = %74
  %81 = load %struct.stat*, %struct.stat** %3, align 8
  %82 = call i64 @S_TYPEISSHM(%struct.stat* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i8* %85, i8** %2, align 8
  br label %94

86:                                               ; preds = %80
  %87 = load %struct.stat*, %struct.stat** %3, align 8
  %88 = call i64 @S_TYPEISTMO(%struct.stat* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i8* %91, i8** %2, align 8
  br label %94

92:                                               ; preds = %86
  %93 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %92, %90, %84, %78, %72, %66, %58, %50, %42, %34, %26, %18
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_TYPEISMQ(%struct.stat*) #1

declare dso_local i64 @S_TYPEISSEM(%struct.stat*) #1

declare dso_local i64 @S_TYPEISSHM(%struct.stat*) #1

declare dso_local i64 @S_TYPEISTMO(%struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
