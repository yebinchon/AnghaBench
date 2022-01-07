; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_next_dataset.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_next_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"siK\00", align 1
@ZFS_IOC_SNAPSHOT_LIST_NEXT = common dso_local global i32 0, align 4
@ZFS_IOC_DATASET_LIST_NEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sKO\00", align 1
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@PyExc_StopIteration = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot get snapshots of %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot get child datasets of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @py_next_dataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @py_next_dataset(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  store i32* null, i32** %12, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @PyArg_ParseTuple(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, i32* %9, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %69

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @strlcpy(i32 %20, i8* %21, i32 4)
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @ZFS_IOC_SNAPSHOT_LIST_NEXT, align 4
  store i32 %28, i32* %6, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @ZFS_IOC_DATASET_LIST_NEXT, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %6, align 4
  %33 = call i32* @ioctl_with_dstnv(i32 %32, %struct.TYPE_4__* %8)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @add_ds_props(%struct.TYPE_4__* %8, i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42, i32* %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @Py_DECREF(i32* %45)
  br label %67

47:                                               ; preds = %31
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @ESRCH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @PyExc_StopIteration, align 4
  %53 = call i32 @PyErr_SetNone(i32 %52)
  br label %66

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @seterr(i32 %58, i8* %59)
  br label %65

61:                                               ; preds = %54
  %62 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @seterr(i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %3, align 8
  br label %69

69:                                               ; preds = %67, %17
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i8**, i32*, i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32* @ioctl_with_dstnv(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @add_ds_props(%struct.TYPE_4__*, i32*) #2

declare dso_local i32* @Py_BuildValue(i8*, i32, i32, i32*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i32 @PyErr_SetNone(i32) #2

declare dso_local i32 @seterr(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
