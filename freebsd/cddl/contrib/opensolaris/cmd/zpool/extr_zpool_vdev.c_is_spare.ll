; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_is_spare.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_is_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @is_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_spare(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @B_FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %95

23:                                               ; preds = %2
  %24 = load i32, i32* @g_zfs, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @zpool_in_use(i32 %24, i32 %25, i64* %7, i8** %8, i32* %16)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @POOL_STATE_SPARE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @zpool_read_label(i32 %36, i32** %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %31, %28, %23
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* @B_FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %95

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %52 = call i64 @nvlist_lookup_uint64(i32* %50, i32 %51, i64* %10)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @verify(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @nvlist_free(i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %60 = call i64 @nvlist_lookup_nvlist(i32* %58, i32 %59, i32** %12)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @verify(i32 %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %66 = call i64 @nvlist_lookup_nvlist_array(i32* %64, i32 %65, i32*** %13, i64* %15)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %45
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load i32**, i32*** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %79 = call i64 @nvlist_lookup_uint64(i32* %77, i32 %78, i64* %11)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @verify(i32 %81)
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* @B_TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %95

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %14, align 8
  br label %69

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %45
  %94 = load i32, i32* @B_FALSE, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %86, %39, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @zpool_in_use(i32, i32, i64*, i8**, i32*) #1

declare dso_local i64 @zpool_read_label(i32, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
