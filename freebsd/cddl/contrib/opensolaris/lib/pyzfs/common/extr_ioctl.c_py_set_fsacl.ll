; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_set_fsacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_set_fsacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"siO!\00", align 1
@PyDict_Type = common dso_local global i32 0, align 4
@NV_ENCODE_NATIVE = common dso_local global i32 0, align 4
@ZFS_IOC_SET_FSACL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot set permissions on %s\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @py_set_fsacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @py_set_fsacl(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PyArg_ParseTuple(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, i32* %6, i32* @PyDict_Type, i32** %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %66

20:                                               ; preds = %2
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @dict2nvl(i32* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %66

26:                                               ; preds = %20
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %29 = call i32 @nvlist_size(i32* %27, i64* %7, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %38 = call i32 @nvlist_pack(i32* %36, i8** %10, i64* %7, i32 %37, i32 0)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @strlcpy(i32 %44, i8* %45, i32 4)
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @ZFS_IOC_SET_FSACL, align 4
  %55 = call i32 @ioctl_with_cmdstr(i32 %54, %struct.TYPE_3__* %8)
  store i32 %55, i32* %14, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %26
  %61 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @seterr(i32 %61, i8* %62)
  store i32* null, i32** %3, align 8
  br label %66

64:                                               ; preds = %26
  %65 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %66

66:                                               ; preds = %64, %60, %25, %19
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i8**, i32*, i32*, i32**) #2

declare dso_local i32* @dict2nvl(i32*) #2

declare dso_local i32 @nvlist_size(i32*, i64*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @nvlist_pack(i32*, i8**, i64*, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @ioctl_with_cmdstr(i32, %struct.TYPE_3__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @seterr(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
