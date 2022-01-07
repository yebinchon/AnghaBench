; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_addlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_addlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid property '%s'\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"bad property list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_5__**, i32)* @addlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addlist(i32* %0, i8* %1, %struct.TYPE_5__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @zprop_name_to_prop(i8* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @ZPROP_INVAL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @zprop_valid_for_type(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ZPROP_INVAL, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %23, %18, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ZPROP_INVAL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @zpool_prop_feature(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @zpool_prop_unsupported(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %37, %33, %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @zfs_prop_user(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @zfs_prop_userquota(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @zfs_prop_written(i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %53, %37
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i32 @dgettext(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @zfs_error_aux(i32* %58, i32 %60, i8* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @EZFS_BADPROP, align 4
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i32 @dgettext(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @zfs_error(i32* %63, i32 %64, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %106

68:                                               ; preds = %53, %49, %45, %41, %25
  %69 = load i32*, i32** %6, align 8
  %70 = call %struct.TYPE_5__* @zfs_alloc(i32* %69, i32 24)
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %11, align 8
  %71 = icmp eq %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %106

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @ZPROP_INVAL, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32* @zfs_strdup(i32* %81, i8* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = icmp eq i32* %83, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = call i32 @free(%struct.TYPE_5__* %88)
  store i32 -1, i32* %5, align 4
  br label %106

90:                                               ; preds = %80
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %103

95:                                               ; preds = %73
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @zprop_width(i32 %96, i32* %98, i32 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %105, align 8
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %87, %72, %57
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @zprop_name_to_prop(i8*, i32) #1

declare dso_local i32 @zprop_valid_for_type(i32, i32) #1

declare dso_local i32 @zpool_prop_feature(i8*) #1

declare dso_local i32 @zpool_prop_unsupported(i8*) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i32 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @zfs_prop_written(i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @zfs_alloc(i32*, i32) #1

declare dso_local i32* @zfs_strdup(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zprop_width(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
