; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_split_mirror_vdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_split_mirror_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to build a pool from the specified devices\0A\00", align 1
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot use '%s' as a device for splitting\0A\00", align 1
@ZPOOL_COPY_BOOT_LABEL = common dso_local global i32 0, align 4
@ZPOOL_NO_BOOT_LABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @split_mirror_vdev(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %3, i32* %22, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32* null, i32** %14, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = load i8**, i8*** %13, align 8
  %28 = call i32* @construct_spec(i32 %26, i8** %27)
  store i32* %28, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* %32)
  store i32* null, i32** %7, align 8
  br label %83

34:                                               ; preds = %25
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %37 = call i64 @nvlist_lookup_nvlist_array(i32* %35, i32 %36, i32*** %15, i64* %17)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @verify(i32 %39)
  store i64 0, i64* %16, align 8
  br label %41

41:                                               ; preds = %66, %34
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32**, i32*** %15, align 8
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %51 = call i64 @nvlist_lookup_string(i32* %49, i32 %50, i8** %18)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @verify(i32 %53)
  %55 = load i8*, i8** %18, align 8
  %56 = call i8* @is_grouping(i8* %55, i32* %20, i32* %21)
  store i8* %56, i8** %19, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %19, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* %60, i8* %61)
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @nvlist_free(i32* %63)
  store i32* null, i32** %7, align 8
  br label %83

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %16, align 8
  br label %41

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69, %6
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @zpool_vdev_split(i32* %71, i8* %72, i32** %14, i32* %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @nvlist_free(i32* %79)
  store i32* null, i32** %7, align 8
  br label %83

81:                                               ; preds = %70
  %82 = load i32*, i32** %14, align 8
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %81, %78, %58, %30
  %84 = load i32*, i32** %7, align 8
  ret i32* %84
}

declare dso_local i32* @construct_spec(i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i8* @is_grouping(i8*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @zpool_vdev_split(i32*, i8*, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
