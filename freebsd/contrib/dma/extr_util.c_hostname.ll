; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_util.c_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_util.c_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@hostname.name = internal global [256 x i8] zeroinitializer, align 16
@hostname.initialized = internal global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_.-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown-hostname\00", align 1
@HOST_NAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostname() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @hostname.initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i8** %1, align 8
  br label %103

7:                                                ; preds = %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %7
  br label %68

15:                                               ; preds = %10
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %68

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i8* @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i32 256, i32* %28)
  store i8* %29, i8** %2, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i8*, i8** %2, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %68

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i8** %2, align 8
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isalnum(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %2, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ true, %41 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %36
  %54 = phi i1 [ false, %36 ], [ %52, %51 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %2, align 8
  br label %36

59:                                               ; preds = %53
  %60 = load i8*, i8** %2, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), align 16
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %68

64:                                               ; preds = %59
  store i32 1, i32* @hostname.initialized, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i8** %1, align 8
  br label %103

65:                                               ; preds = %15
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  store i32 1, i32* @hostname.initialized, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i8** %1, align 8
  br label %103

68:                                               ; preds = %63, %34, %26, %14
  %69 = call i64 @gethostname(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i32 256)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), align 16
  br label %72

72:                                               ; preds = %71, %68
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 255), align 1
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i8** %2, align 8
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i8*, i8** %2, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i8*, i8** %2, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isalnum(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %2, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br label %90

90:                                               ; preds = %88, %73
  %91 = phi i1 [ false, %73 ], [ %89, %88 ]
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %2, align 8
  br label %73

96:                                               ; preds = %90
  %97 = load i8*, i8** %2, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), align 16
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  store i32 1, i32* @hostname.initialized, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hostname.name, i64 0, i64 0), i8** %1, align 8
  br label %103

103:                                              ; preds = %102, %65, %64, %6
  %104 = load i8*, i8** %1, align 8
  ret i8* %104
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @gethostname(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
