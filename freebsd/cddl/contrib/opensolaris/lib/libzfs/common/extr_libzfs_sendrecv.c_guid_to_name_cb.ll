; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_guid_to_name_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_guid_to_name_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32* }

@ZFS_PROP_GUID = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @guid_to_name_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guid_to_name_cb(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @strrchr(i32 %18, i8 signext 47)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @strcmp(i8* %23, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32 @zfs_close(%struct.TYPE_12__* %30)
  store i32 0, i32* %3, align 4
  br label %71

32:                                               ; preds = %21, %15, %2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i32, i32* @ZFS_PROP_GUID, align 4
  %35 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %33, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcpy(i32 %43, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @zfs_close(%struct.TYPE_12__* %48)
  %50 = load i32, i32* @EEXIST, align 4
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %32
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = call i32 @zfs_iter_children(%struct.TYPE_12__* %52, i32 (%struct.TYPE_12__*, i8*)* @guid_to_name_cb, %struct.TYPE_13__* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EEXIST, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = call i32 @zfs_iter_bookmarks(%struct.TYPE_12__* %64, i32 (%struct.TYPE_12__*, i8*)* @guid_to_name_cb, %struct.TYPE_13__* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %58, %51
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call i32 @zfs_close(%struct.TYPE_12__* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %40, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_12__*) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @zfs_iter_children(%struct.TYPE_12__*, i32 (%struct.TYPE_12__*, i8*)*, %struct.TYPE_13__*) #1

declare dso_local i32 @zfs_iter_bookmarks(%struct.TYPE_12__*, i32 (%struct.TYPE_12__*, i8*)*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
