; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_fru.c_libzfs_fru_devpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_fru.c_libzfs_fru_devpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_6__* }

@ZFS_FRU_HASH_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libzfs_fru_devpath(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %11 = icmp eq %struct.TYPE_6__** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i32 @libzfs_fru_refresh(%struct.TYPE_5__* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = icmp eq %struct.TYPE_6__** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %60

21:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ZFS_FRU_HASH_SIZE, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  br label %33

33:                                               ; preds = %51, %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @_topo_fmri_strcmp_noauth(i32 %39, i8* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %3, align 8
  br label %60

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %6, align 8
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %22

59:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %60

60:                                               ; preds = %59, %46, %20
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i32 @libzfs_fru_refresh(%struct.TYPE_5__*) #1

declare dso_local i64 @_topo_fmri_strcmp_noauth(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
