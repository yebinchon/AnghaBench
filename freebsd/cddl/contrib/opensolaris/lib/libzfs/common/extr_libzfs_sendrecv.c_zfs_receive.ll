; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@CL_GATHER_MOUNT_ALWAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_receive(i32* %0, i8* %1, i32* %2, %struct.TYPE_4__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %6
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @nvlist_lookup_string(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %109

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %6
  %36 = load i32, i32* @ZFS_DEV, align 4
  %37 = load i32, i32* @O_RDWR, align 4
  %38 = load i32, i32* @O_EXCL, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @open(i32 %36, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp sge i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @VERIFY(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @zfs_receive_impl(i32* %45, i8* %46, i8* %47, %struct.TYPE_4__* %48, i32 %49, i32* null, i32* null, i32* %50, i8** %14, i32 %51, i32* %17, i32* null)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @close(i32 %53)
  %55 = icmp eq i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @VERIFY(i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %35
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %14, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %72 = call i32* @zfs_open(i32* %69, i8* %70, i32 %71)
  store i32* %72, i32** %19, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load i32*, i32** %19, align 8
  %77 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %78 = load i32, i32* @CL_GATHER_MOUNT_ALWAYS, align 4
  %79 = call i32* @changelist_gather(i32* %76, i32 %77, i32 %78, i32 0)
  store i32* %79, i32** %20, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @zfs_close(i32* %80)
  %82 = load i32*, i32** %20, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32*, i32** %20, align 8
  %86 = call i32 @changelist_postfix(i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %20, align 8
  %88 = call i32 @changelist_free(i32* %87)
  br label %89

89:                                               ; preds = %84, %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32*, i32** %19, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %20, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %93, %90
  store i32 -1, i32* %15, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %65, %60, %35
  %102 = load i8*, i8** %14, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %32
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @zfs_receive_impl(i32*, i8*, i8*, %struct.TYPE_4__*, i32, i32*, i32*, i32*, i8**, i32, i32*, i32*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32* @zfs_open(i32*, i8*, i32) #1

declare dso_local i32* @changelist_gather(i32*, i32, i32, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @changelist_postfix(i32*) #1

declare dso_local i32 @changelist_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
