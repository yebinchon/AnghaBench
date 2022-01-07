; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s@s1_%llu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/c1_%llu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s@s2_%llu\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/c2_%llu\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s@s3_%llu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"dsl_destroy_head(%s) = %d\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"dsl_destroy_snapshot(%s) = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dsl_dataset_cleanup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %28 = trunc i64 %13 to i32
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @snprintf(i8* %15, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = trunc i64 %17 to i32
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @snprintf(i8* %18, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34)
  %36 = trunc i64 %20 to i32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @snprintf(i8* %21, i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32 %37)
  %39 = trunc i64 %23 to i32
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @snprintf(i8* %24, i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %41)
  %43 = trunc i64 %26 to i32
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @snprintf(i8* %27, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %18, i32 %44)
  %46 = call i32 @dsl_destroy_head(i8* %24)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %2
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %24, i32 %54)
  br label %56

56:                                               ; preds = %53, %49, %2
  %57 = load i32, i32* @B_FALSE, align 4
  %58 = call i32 @dsl_destroy_snapshot(i8* %27, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ENOENT, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %27, i32 %66)
  br label %68

68:                                               ; preds = %65, %61, %56
  %69 = load i32, i32* @B_FALSE, align 4
  %70 = call i32 @dsl_destroy_snapshot(i8* %21, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @ENOENT, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %21, i32 %78)
  br label %80

80:                                               ; preds = %77, %73, %68
  %81 = call i32 @dsl_destroy_head(i8* %18)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %18, i32 %89)
  br label %91

91:                                               ; preds = %88, %84, %80
  %92 = load i32, i32* @B_FALSE, align 4
  %93 = call i32 @dsl_destroy_snapshot(i8* %15, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %15, i32 %101)
  br label %103

103:                                              ; preds = %100, %96, %91
  %104 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @dsl_destroy_head(i8*) #2

declare dso_local i32 @fatal(i32, i8*, i8*, i32) #2

declare dso_local i32 @dsl_destroy_snapshot(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
