; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_max_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_max_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_zfs = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @max_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_width(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @g_zfs, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @B_TRUE, align 4
  %18 = call i8* @zpool_vdev_name(i32 %14, i32* %15, i32* %16, i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %25, %4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %35 = call i64 @nvlist_lookup_nvlist_array(i32* %33, i32 %34, i32*** %10, i64* %12)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i32**, i32*** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @max_width(i32* %43, i32* %47, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %11, align 8
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %64 = call i64 @nvlist_lookup_nvlist_array(i32* %62, i32 %63, i32*** %10, i64* %12)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  br label %67

67:                                               ; preds = %86, %66
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = load i32**, i32*** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 2
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @max_width(i32* %72, i32* %76, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %71
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %67

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %61
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %93 = call i64 @nvlist_lookup_nvlist_array(i32* %91, i32 %92, i32*** %10, i64* %12)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %115, %95
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = load i32*, i32** %5, align 8
  %102 = load i32**, i32*** %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 2
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @max_width(i32* %101, i32* %105, i32 %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %100
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %96

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118, %90
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
