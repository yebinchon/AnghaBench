; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_rollback_destroy_dependent.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_rollback_destroy_dependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i64 }

@ZFS_PROP_NAME = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @rollback_destroy_dependent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rollback_destroy_dependent(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = load i32, i32* @ZFS_PROP_NAME, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MS_FORCE, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = call i32* @changelist_gather(%struct.TYPE_7__* %10, i32 %11, i32 0, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @changelist_prefix(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %19
  %29 = load i8*, i8** @B_TRUE, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i32 @zfs_close(%struct.TYPE_7__* %32)
  store i32 0, i32* %3, align 4
  br label %56

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load i32, i32* @B_FALSE, align 4
  %37 = call i64 @zfs_destroy(%struct.TYPE_7__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** @B_TRUE, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %49

43:                                               ; preds = %34
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @changelist_remove(i32* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @changelist_postfix(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @changelist_free(i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i32 @zfs_close(%struct.TYPE_7__* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32* @changelist_gather(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @changelist_prefix(i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_7__*) #1

declare dso_local i64 @zfs_destroy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @changelist_remove(i32*, i32) #1

declare dso_local i32 @changelist_postfix(i32*) #1

declare dso_local i32 @changelist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
