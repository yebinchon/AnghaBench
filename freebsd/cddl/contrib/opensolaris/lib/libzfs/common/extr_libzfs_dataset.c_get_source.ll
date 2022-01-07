; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ZPROP_SRC_TEMPORARY = common dso_local global i64 0, align 8
@ZPROP_SRC_NONE = common dso_local global i64 0, align 8
@ZPROP_SRC_DEFAULT = common dso_local global i64 0, align 8
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@ZPROP_SRC_RECEIVED = common dso_local global i64 0, align 8
@ZPROP_SRC_LOCAL = common dso_local global i64 0, align 8
@ZPROP_SRC_INHERITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i8*, i8*, i64)* @get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_source(%struct.TYPE_3__* %0, i64* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZPROP_SRC_TEMPORARY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %5
  br label %62

19:                                               ; preds = %13
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @ZPROP_SRC_NONE, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  br label %62

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  br label %61

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %37 = call i32* @strstr(i8* %35, i32 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* @ZPROP_SRC_RECEIVED, align 8
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  br label %60

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcmp(i8* %43, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i64, i64* @ZPROP_SRC_LOCAL, align 8
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %59

52:                                               ; preds = %42
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @strlcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %31
  br label %62

62:                                               ; preds = %18, %61, %22
  ret void
}

declare dso_local i32* @strstr(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
