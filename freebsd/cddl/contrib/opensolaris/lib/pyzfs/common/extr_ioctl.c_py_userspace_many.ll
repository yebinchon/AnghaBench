; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_userspace_many.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_userspace_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@ZFS_NUM_USERQUOTA_PROPS = common dso_local global i64 0, align 8
@zfs_userquota_prop_prefixes = common dso_local global i32* null, align 8
@PyExc_KeyError = common dso_local global i32 0, align 4
@zfsdevfd = common dso_local global i32 0, align 4
@ZFS_IOC_USERSPACE_MANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sI\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot get %s property on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @py_userspace_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @py_userspace_many(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 40, i1 false)
  store i32 1048576, i32* %10, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @PyArg_ParseTuple(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, i8** %9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %125

23:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ZFS_NUM_USERQUOTA_PROPS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i8* %29, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %24

41:                                               ; preds = %36, %24
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @ZFS_NUM_USERQUOTA_PROPS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @PyExc_KeyError, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @PyErr_SetString(i32 %46, i8* %47)
  store i32* null, i32** %3, align 8
  br label %125

49:                                               ; preds = %41
  %50 = call i32* (...) @PyDict_New()
  store i32* %50, i32** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strlcpy(i32 %54, i8* %55, i32 4)
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %49, %110
  %61 = load i8*, i8** %11, align 8
  %62 = bitcast i8* %61 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %15, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @zfsdevfd, align 4
  %69 = load i32, i32* @ZFS_IOC_USERSPACE_MANY, align 4
  %70 = call i32 @ioctl(i32 %68, i32 %69, %struct.TYPE_5__* %6)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %60
  br label %111

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %83, %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32* (i8*, i32, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  store i32* %90, i32** %16, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* (i8*, i32, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  store i32* %94, i32** %17, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @PyDict_SetItem(i32* %95, i32* %96, i32* %97)
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @Py_DECREF(i32* %99)
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @Py_DECREF(i32* %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 1
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = sub i64 %107, 12
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  br label %79

110:                                              ; preds = %79
  br label %60

111:                                              ; preds = %77
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @Py_DECREF(i32* %117)
  %119 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @seterr(i32 %119, i8* %120, i8* %121)
  store i32* null, i32** %3, align 8
  br label %125

123:                                              ; preds = %111
  %124 = load i32*, i32** %12, align 8
  store i32* %124, i32** %3, align 8
  br label %125

125:                                              ; preds = %123, %116, %45, %22
  %126 = load i32*, i32** %3, align 8
  ret i32* %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i8**, i8**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32* @PyDict_New(...) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32* @Py_BuildValue(i8*, i32, ...) #2

declare dso_local i32 @PyDict_SetItem(i32*, i32*, i32*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @seterr(i32, i8*, i8*) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
