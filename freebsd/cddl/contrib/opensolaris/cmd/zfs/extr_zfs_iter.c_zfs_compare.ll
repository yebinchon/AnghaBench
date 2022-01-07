; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_iter.c_zfs_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_iter.c_zfs_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @zfs_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_compare(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @zfs_get_name(i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i8* @zfs_get_name(i32* %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strchr(i8* %28, i8 signext 64)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @strchr(i8* %31, i8 signext 64)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i8*, i8** %11, align 8
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %3
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** %12, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %43
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %96

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %15, align 4
  br label %95

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  br label %94

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %66 = call i64 @zfs_prop_get_int(i32* %64, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %69 = call i64 @zfs_prop_get_int(i32* %67, i32 %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i64, i64* %14, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @strcmp(i8* %77, i8* %79)
  store i32 %80, i32* %15, align 4
  br label %93

81:                                               ; preds = %72, %63
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %15, align 4
  br label %92

86:                                               ; preds = %81
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %15, align 4
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %62
  br label %95

95:                                               ; preds = %94, %58
  br label %96

96:                                               ; preds = %95, %52, %43
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i8*, i8** %11, align 8
  store i8 64, i8* %100, align 1
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** %12, align 8
  store i8 64, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, i32* %15, align 4
  ret i32 %107
}

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
