; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_dataset_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_py_dataset_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@ZFS_IOC_OBJSET_STATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot access dataset %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @py_dataset_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @py_dataset_props(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @PyArg_ParseTuple(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlcpy(i32 %17, i8* %18, i32 4)
  %20 = load i32, i32* @ZFS_IOC_OBJSET_STATS, align 4
  %21 = call i32* @ioctl_with_dstnv(i32 %20, %struct.TYPE_4__* %6)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @add_ds_props(%struct.TYPE_4__* %6, i32* %25)
  br label %31

27:                                               ; preds = %15
  %28 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @seterr(i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i8**) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32* @ioctl_with_dstnv(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @add_ds_props(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @seterr(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
