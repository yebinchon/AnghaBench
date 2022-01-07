; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_setprop_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_setprop_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"size is less than current used or reserved space\00", align 1
@EZFS_PROPSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"size is greater than available space\00", align 1
@EZFS_DSREADONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"property value too long\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"pool and or dataset must be upgraded to set this property or value\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@ZFS_PROP_COMPRESSION = common dso_local global i32 0, align 4
@ZFS_PROP_RECORDSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"property setting is not allowed on bootable datasets\00", align 1
@EZFS_NOTSUP = common dso_local global i32 0, align 4
@ZFS_PROP_CHECKSUM = common dso_local global i32 0, align 4
@ZFS_PROP_DEDUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"property setting is not allowed on root pools\00", align 1
@ZPROP_INVAL = common dso_local global i32 0, align 4
@EZFS_VOLTOOBIG = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_setprop_error(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %120 [
    i32 136, label %10
    i32 139, label %36
    i32 132, label %40
    i32 140, label %45
    i32 135, label %54
    i32 133, label %63
    i32 138, label %63
    i32 137, label %104
    i32 134, label %119
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %30 [
    i32 131, label %12
    i32 130, label %12
    i32 128, label %21
    i32 129, label %21
  ]

12:                                               ; preds = %10, %10
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @TEXT_DOMAIN, align 4
  %15 = call i32 @dgettext(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @zfs_error_aux(i32* %13, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @EZFS_PROPSPACE, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @zfs_error(i32* %17, i32 %18, i8* %19)
  br label %35

21:                                               ; preds = %10, %10
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @TEXT_DOMAIN, align 4
  %24 = call i32 @dgettext(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @zfs_error_aux(i32* %22, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @EZFS_PROPSPACE, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @zfs_error(i32* %26, i32 %27, i8* %28)
  br label %35

30:                                               ; preds = %10
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @zfs_standard_error(i32* %31, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %21, %12
  br label %125

36:                                               ; preds = %4
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @zfs_standard_error(i32* %37, i32 139, i8* %38)
  br label %125

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @EZFS_DSREADONLY, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  br label %125

45:                                               ; preds = %4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i32 @dgettext(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @zfs_error_aux(i32* %46, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @EZFS_BADPROP, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @zfs_error(i32* %50, i32 %51, i8* %52)
  br label %125

54:                                               ; preds = %4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @TEXT_DOMAIN, align 4
  %57 = call i32 @dgettext(i32 %56, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @zfs_error_aux(i32* %55, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @EZFS_BADVERSION, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @zfs_error(i32* %59, i32 %60, i8* %61)
  br label %125

63:                                               ; preds = %4, %4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ZFS_PROP_COMPRESSION, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ZFS_PROP_RECORDSIZE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %63
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @TEXT_DOMAIN, align 4
  %74 = call i32 @dgettext(i32 %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @zfs_error_aux(i32* %72, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @EZFS_NOTSUP, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @zfs_error(i32* %76, i32 %77, i8* %78)
  br label %103

80:                                               ; preds = %67
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ZFS_PROP_CHECKSUM, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ZFS_PROP_DEDUP, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84, %80
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @TEXT_DOMAIN, align 4
  %91 = call i32 @dgettext(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @zfs_error_aux(i32* %89, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @EZFS_NOTSUP, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @zfs_error(i32* %93, i32 %94, i8* %95)
  br label %102

97:                                               ; preds = %84
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @zfs_standard_error(i32* %98, i32 %99, i8* %100)
  br label %102

102:                                              ; preds = %97, %88
  br label %103

103:                                              ; preds = %102, %71
  br label %125

104:                                              ; preds = %4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ZPROP_INVAL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @EZFS_BADPROP, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @zfs_error(i32* %109, i32 %110, i8* %111)
  br label %118

113:                                              ; preds = %104
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @zfs_standard_error(i32* %114, i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %113, %108
  br label %125

119:                                              ; preds = %4
  br label %120

120:                                              ; preds = %4, %119
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @zfs_standard_error(i32* %121, i32 %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %118, %103, %54, %45, %40, %36, %35
  ret void
}

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
