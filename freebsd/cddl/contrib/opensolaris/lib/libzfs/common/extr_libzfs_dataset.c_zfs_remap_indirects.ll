; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_remap_indirects.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_remap_indirects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot remap dataset '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_remap_indirects(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %8 = load i32, i32* @TEXT_DOMAIN, align 4
  %9 = call i8* @dgettext(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @snprintf(i8* %7, i32 1024, i8* %9, i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @lzc_remap(i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %32 [
    i32 128, label %18
    i32 129, label %27
  ]

18:                                               ; preds = %16
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @TEXT_DOMAIN, align 4
  %21 = call i8* @dgettext(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @zfs_error_aux(i32* %19, i8* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @EZFS_BADVERSION, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %26 = call i32 @zfs_error(i32* %23, i32 %24, i8* %25)
  br label %37

27:                                               ; preds = %16
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @EZFS_BADTYPE, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %31 = call i32 @zfs_error(i32* %28, i32 %29, i8* %30)
  br label %37

32:                                               ; preds = %16
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %36 = call i32 @zfs_standard_error(i32* %33, i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %32, %27, %18
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @lzc_remap(i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
