; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_initioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_initioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"zfs.ioctl\00", align 1
@zfsmethods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"zfs.util\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ZFSError\00", align 1
@ZFSError = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@zfsdevfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initioctl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @zfsmethods, align 4
  %5 = call i32* @Py_InitModule(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32* %5, i32** %1, align 8
  %6 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %19

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @PyObject_GetAttrString(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %12, i8** @ZFSError, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @PyObject_GetAttrString(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @PyObject_AsFileDescriptor(i32* %16)
  store i32 %17, i32* @zfsdevfd, align 4
  %18 = call i32 (...) @zfs_prop_init()
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @Py_InitModule(i8*, i32) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i8* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32 @PyObject_AsFileDescriptor(i32*) #1

declare dso_local i32 @zfs_prop_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
