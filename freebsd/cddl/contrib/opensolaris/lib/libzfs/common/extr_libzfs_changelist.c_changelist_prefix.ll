; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_changelist.c_changelist_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_changelist.c_changelist_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i64 }

@B_FALSE = common dso_local global i8* null, align 8
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@CL_GATHER_DONT_UNMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @changelist_prefix(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 129
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 128
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %95

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_8__* @uu_list_first(i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %4, align 8
  br label %21

21:                                               ; preds = %81, %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** @B_FALSE, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %81

31:                                               ; preds = %24
  %32 = call i64 (...) @getzoneid()
  %33 = load i64, i64* @GLOBAL_ZONEID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %81

41:                                               ; preds = %35, %31
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ZFS_IS_VOLUME(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %78 [
    i32 129, label %51
    i32 128, label %73
  ]

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CL_GATHER_DONT_UNMOUNT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %79

59:                                               ; preds = %51
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @zfs_unmount(i32 %62, i32* null, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  %69 = load i8*, i8** @B_FALSE, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %59
  br label %79

73:                                               ; preds = %47
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @zfs_unshare_smb(i32 %76, i32* null)
  br label %79

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %78, %73, %72, %58
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %40, %27
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = call %struct.TYPE_8__* @uu_list_next(i32 %84, %struct.TYPE_8__* %85)
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %4, align 8
  br label %21

87:                                               ; preds = %21
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = call i32 @changelist_postfix(%struct.TYPE_9__* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_8__* @uu_list_first(i32) #1

declare dso_local i64 @getzoneid(...) #1

declare dso_local i32 @ZFS_IS_VOLUME(i32) #1

declare dso_local i32 @zfs_unmount(i32, i32*, i32) #1

declare dso_local i32 @zfs_unshare_smb(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @uu_list_next(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @changelist_postfix(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
