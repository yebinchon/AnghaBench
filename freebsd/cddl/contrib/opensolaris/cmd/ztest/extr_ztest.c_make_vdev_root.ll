; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_vdev_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_vdev_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_ROOT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i32, i32, i32, i32, i32)* @make_vdev_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_vdev_root(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %18, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @UMEM_NOFAIL, align 4
  %31 = call i32** @umem_alloc(i32 %29, i32 %30)
  store i32** %31, i32*** %20, align 8
  store i32 0, i32* %21, align 4
  br label %32

32:                                               ; preds = %60, %9
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = call i32* @make_vdev_mirror(i8* %37, i8* %38, i8* %39, i64 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32**, i32*** %20, align 8
  %46 = load i32, i32* %21, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* %44, i32** %48, align 8
  %49 = load i32**, i32*** %20, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @nvlist_add_uint64(i32* %53, i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  br label %60

60:                                               ; preds = %36
  %61 = load i32, i32* %21, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %21, align 4
  br label %32

63:                                               ; preds = %32
  %64 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %65 = call i64 @nvlist_alloc(i32** %19, i32 %64, i32 0)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @VERIFY(i32 %67)
  %69 = load i32*, i32** %19, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %71 = load i32, i32* @VDEV_TYPE_ROOT, align 4
  %72 = call i64 @nvlist_add_string(i32* %69, i32 %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  %76 = load i32*, i32** %19, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i8*, i8** %11, align 8
  br label %83

81:                                               ; preds = %63
  %82 = load i8*, i8** @ZPOOL_CONFIG_CHILDREN, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i8* [ %80, %79 ], [ %82, %81 ]
  %85 = load i32**, i32*** %20, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i64 @nvlist_add_nvlist_array(i32* %76, i8* %84, i32** %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @VERIFY(i32 %89)
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %102, %83
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32**, i32*** %20, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @nvlist_free(i32* %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %91

105:                                              ; preds = %91
  %106 = load i32**, i32*** %20, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @umem_free(i32** %106, i32 %110)
  %112 = load i32*, i32** %19, align 8
  ret i32* %112
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32** @umem_alloc(i32, i32) #1

declare dso_local i32* @make_vdev_mirror(i8*, i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i8*, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @umem_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
