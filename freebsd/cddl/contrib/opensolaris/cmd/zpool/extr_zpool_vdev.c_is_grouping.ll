; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_is_grouping.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_is_grouping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"raidz\00", align 1
@errno = common dso_local global i64 0, align 8
@VDEV_TYPE_RAIDZ = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@VDEV_TYPE_MIRROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"spare\00", align 1
@VDEV_TYPE_SPARE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@VDEV_TYPE_LOG = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@VDEV_TYPE_L2CACHE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @is_grouping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @is_grouping(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 5
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i64 1, i64* %10, align 8
  br label %47

22:                                               ; preds = %14
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %113

28:                                               ; preds = %22
  store i64 0, i64* @errno, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strtol(i8* %29, i8** %9, i32 10)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* @errno, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %34, 1
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %10, align 8
  %38 = icmp sge i64 %37, 255
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %36, %33, %28
  store i8* null, i8** %4, align 8
  br label %113

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  store i32 255, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  store i8* %61, i8** %4, align 8
  br label %113

62:                                               ; preds = %3
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @INT_MAX, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  store i32 2, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i8*, i8** @VDEV_TYPE_MIRROR, align 8
  store i8* %78, i8** %4, align 8
  br label %113

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  store i8* %89, i8** %4, align 8
  br label %113

90:                                               ; preds = %79
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32*, i32** %6, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32*, i32** %6, align 8
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i8*, i8** @VDEV_TYPE_LOG, align 8
  store i8* %100, i8** %4, align 8
  br label %113

101:                                              ; preds = %90
  %102 = load i8*, i8** %5, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32*, i32** %6, align 8
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i8*, i8** @VDEV_TYPE_L2CACHE, align 8
  store i8* %111, i8** %4, align 8
  br label %113

112:                                              ; preds = %101
  store i8* null, i8** %4, align 8
  br label %113

113:                                              ; preds = %112, %110, %99, %88, %77, %60, %44, %27
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
