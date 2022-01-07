; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zfs_path_to_zhandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zfs_path_to_zhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat64 = type { i64 }
%struct.extmnttab = type { i8*, i32, i32, i32 }
%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MNTTYPE_ZFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"'%s': not a ZFS filesystem\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfs_path_to_zhandle(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat64, align 8
  %9 = alloca %struct.extmnttab, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.statfs, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 47
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32* @zfs_open(%struct.TYPE_4__* %23, i8* %24, i32 %25)
  store i32* %26, i32** %4, align 8
  br label %71

27:                                               ; preds = %17, %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @stat64(i8* %28, %struct.stat64* %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i8* @strerror(i32 %34)
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %35)
  store i32* null, i32** %4, align 8
  br label %71

37:                                               ; preds = %27
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @statfs(i8* %38, %struct.statfs* %11)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @statfs2mnttab(%struct.statfs* %11, %struct.extmnttab* %9)
  br label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %48)
  br label %50

50:                                               ; preds = %44, %42
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32* null, i32** %4, align 8
  br label %71

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MNTTYPE_ZFS, align 4
  %58 = call i64 @strcmp(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %61, i8* %62, i8* %63)
  store i32* null, i32** %4, align 8
  br label %71

65:                                               ; preds = %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %9, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %70 = call i32* @zfs_open(%struct.TYPE_4__* %66, i8* %68, i32 %69)
  store i32* %70, i32** %4, align 8
  br label %71

71:                                               ; preds = %65, %60, %53, %31, %22
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @zfs_open(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @stat64(i8*, %struct.stat64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @statfs2mnttab(%struct.statfs*, %struct.extmnttab*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
