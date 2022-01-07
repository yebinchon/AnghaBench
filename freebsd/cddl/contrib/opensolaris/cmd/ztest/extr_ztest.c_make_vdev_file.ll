; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_vdev_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_vdev_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ztest_shared = common dso_local global %struct.TYPE_3__* null, align 8
@ztest_aux_template = common dso_local global i8* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ztest_dev_template = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't ftruncate %s\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_FILE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i64)* @make_vdev_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_vdev_file(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i64 (...) @ztest_get_ashift()
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  store i8* %19, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ztest_shared, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = trunc i64 %17 to i32
  %36 = load i8*, i8** @ztest_aux_template, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 1), align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 0), align 8
  br label %44

42:                                               ; preds = %30
  %43 = load i8*, i8** %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i8* [ %41, %40 ], [ %43, %42 ]
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i64, i64* %13, align 8
  %49 = call i32 (i8*, i32, i8*, i32, i8*, i64, ...) @snprintf(i8* %34, i32 %35, i8* %36, i32 %37, i8* %45, i64 %47, i64 %48)
  br label %70

50:                                               ; preds = %27
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ztest_shared, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = sext i32 %53 to i64
  store i64 %55, i64* %13, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = trunc i64 %17 to i32
  %58 = load i8*, i8** @ztest_dev_template, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 1), align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 0), align 8
  br label %66

64:                                               ; preds = %50
  %65 = load i8*, i8** %8, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  %68 = load i64, i64* %13, align 8
  %69 = call i32 (i8*, i32, i8*, i32, i8*, i64, ...) @snprintf(i8* %56, i32 %57, i8* %58, i32 %59, i8* %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %44
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @O_RDWR, align 4
  %77 = load i32, i32* @O_CREAT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @O_TRUNC, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @open(i8* %75, i32 %80, i32 438)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i32, i32* %15, align 4
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @ftruncate(i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @close(i32 %96)
  br label %98

98:                                               ; preds = %95, %71
  %99 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %100 = call i64 @nvlist_alloc(i32** %14, i32 %99, i32 0)
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @VERIFY(i32 %102)
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %106 = load i8*, i8** @VDEV_TYPE_FILE, align 8
  %107 = call i64 @nvlist_add_string(i32* %104, i32 %105, i8* %106)
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @VERIFY(i32 %109)
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @nvlist_add_string(i32* %111, i32 %112, i8* %113)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @VERIFY(i32 %116)
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @nvlist_add_uint64(i32* %118, i32 %119, i64 %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @VERIFY(i32 %123)
  %125 = load i32*, i32** %14, align 8
  %126 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %126)
  ret i32* %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ztest_get_ashift(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i64, ...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fatal(i32, i8*, i8*) #2

declare dso_local i64 @ftruncate(i32, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
