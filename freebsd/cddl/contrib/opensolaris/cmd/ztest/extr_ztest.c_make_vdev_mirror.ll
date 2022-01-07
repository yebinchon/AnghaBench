; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_vdev_mirror.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_make_vdev_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_MIRROR = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i32, i32, i32)* @make_vdev_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_vdev_mirror(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32* @make_vdev_raidz(i8* %22, i8* %23, i8* %24, i64 %25, i32 %26, i32 %27)
  store i32* %28, i32** %8, align 8
  br label %98

29:                                               ; preds = %7
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @UMEM_NOFAIL, align 4
  %35 = call i32** @umem_alloc(i32 %33, i32 %34)
  store i32** %35, i32*** %17, align 8
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %52, %29
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32* @make_vdev_raidz(i8* %41, i8* %42, i8* %43, i64 %44, i32 %45, i32 %46)
  %48 = load i32**, i32*** %17, align 8
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  store i32* %47, i32** %51, align 8
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %57 = call i64 @nvlist_alloc(i32** %16, i32 %56, i32 0)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @VERIFY(i32 %59)
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %63 = load i32, i32* @VDEV_TYPE_MIRROR, align 4
  %64 = call i64 @nvlist_add_string(i32* %61, i32 %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @VERIFY(i32 %66)
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %70 = load i32**, i32*** %17, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @nvlist_add_nvlist_array(i32* %68, i32 %69, i32** %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %87, %55
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32**, i32*** %17, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @nvlist_free(i32* %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %18, align 4
  br label %76

90:                                               ; preds = %76
  %91 = load i32**, i32*** %17, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @umem_free(i32** %91, i32 %95)
  %97 = load i32*, i32** %16, align 8
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %90, %21
  %99 = load i32*, i32** %8, align 8
  ret i32* %99
}

declare dso_local i32* @make_vdev_raidz(i8*, i8*, i8*, i64, i32, i32) #1

declare dso_local i32** @umem_alloc(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @umem_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
