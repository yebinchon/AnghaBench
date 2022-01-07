; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_create_parents.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_create_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to %s ancestor '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_parents(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 47
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 47)
  %22 = icmp eq i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %28 = call i32* @zfs_open(i32* %25, i8* %26, i32 %27)
  store i32* %28, i32** %8, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i8*, i8** %9, align 8
  store i8 0, i8* %30, align 1
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %34 = call i32* @zfs_open(i32* %31, i8* %32, i32 %33)
  store i32* %34, i32** %8, align 8
  %35 = load i8*, i8** %9, align 8
  store i8 47, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %19
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %110

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @zfs_close(i32* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %98, %40
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 47)
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %102

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  store i8 0, i8* %53, align 1
  %54 = load i32*, i32** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32* @make_dataset_handle(i32* %54, i8* %55)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @zfs_close(i32* %60)
  br label %98

62:                                               ; preds = %52
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %66 = call i64 @zfs_create(i32* %63, i8* %64, i32 %65, i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i8* @dgettext(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %70, i8** %10, align 8
  br label %103

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %75 = call i32* @zfs_open(i32* %72, i8* %73, i32 %74)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @TEXT_DOMAIN, align 4
  %80 = call i8* @dgettext(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %80, i8** %10, align 8
  br label %103

81:                                               ; preds = %71
  %82 = load i32*, i32** %8, align 8
  %83 = call i64 @zfs_mount(i32* %82, i32* null, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @TEXT_DOMAIN, align 4
  %87 = call i8* @dgettext(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %87, i8** %10, align 8
  br label %103

88:                                               ; preds = %81
  %89 = load i32*, i32** %8, align 8
  %90 = call i64 @zfs_share(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @TEXT_DOMAIN, align 4
  %94 = call i8* @dgettext(i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %94, i8** %10, align 8
  br label %103

95:                                               ; preds = %88
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @zfs_close(i32* %96)
  br label %98

98:                                               ; preds = %95, %59
  %99 = load i8*, i8** %9, align 8
  store i8 47, i8* %99, align 1
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  br label %48

102:                                              ; preds = %48
  store i32 0, i32* %4, align 4
  br label %110

103:                                              ; preds = %92, %85, %78, %68
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @TEXT_DOMAIN, align 4
  %106 = call i8* @dgettext(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @zfs_error_aux(i32* %104, i8* %106, i8* %107, i8* %108)
  store i32 -1, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %102, %39
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zfs_open(i32*, i8*, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32* @make_dataset_handle(i32*, i8*) #1

declare dso_local i64 @zfs_create(i32*, i8*, i32, i32*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i64 @zfs_mount(i32*, i32*, i32) #1

declare dso_local i64 @zfs_share(i32*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
