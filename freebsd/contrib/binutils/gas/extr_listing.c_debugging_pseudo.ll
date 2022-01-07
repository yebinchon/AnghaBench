; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_debugging_pseudo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_debugging_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@debugging_pseudo.in_debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"endef\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"stabs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"stabn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @debugging_pseudo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugging_pseudo(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* @debugging_pseudo.in_debug, align 4
  store i32 1, i32* %3, align 4
  br label %91

12:                                               ; preds = %2
  %13 = load i32, i32* @debugging_pseudo.in_debug, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* @debugging_pseudo.in_debug, align 4
  br label %14

14:                                               ; preds = %19, %12
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @ISSPACE(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 46
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %91

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %91

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %91

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %91

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %91

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %91

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %91

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %91

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %91

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %91

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %91

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = call i64 @strncmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %91

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @strncmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %27, %11
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
