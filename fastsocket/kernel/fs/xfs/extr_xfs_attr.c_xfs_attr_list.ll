; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_7__*, i32* }
%struct.attrlist = type { i32*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@xfs_attr_put_listent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_list(i32* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca %struct.attrlist*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @XFS_ERROR(i32 %25)
  store i32 %26, i32* %6, align 4
  br label %104

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37, %32
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @XFS_ERROR(i32 %48)
  store i32 %49, i32* %6, align 4
  br label %104

50:                                               ; preds = %42, %27
  %51 = load i8*, i8** %8, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 3
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EFAULT, align 4
  %57 = call i32 @XFS_ERROR(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %104

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ATTR_KERNOVAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 48)
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  store i32* %66, i32** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, -4
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @xfs_attr_put_listent, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = bitcast i8* %86 to %struct.attrlist*
  store %struct.attrlist* %87, %struct.attrlist** %13, align 8
  %88 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %89 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %91 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.attrlist*, %struct.attrlist** %13, align 8
  %95 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  %98 = call i32 @xfs_attr_list_int(%struct.TYPE_6__* %12)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp sge i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %64, %55, %47, %24
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xfs_attr_list_int(%struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
