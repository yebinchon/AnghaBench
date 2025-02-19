; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_status.c_zpool_import_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_status.c_zpool_import_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i32 0, align 4
@NMSGID = common dso_local global i64 0, align 8
@zfs_msgid_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zpool_import_status(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @B_TRUE, align 4
  %8 = call i64 @check_status(i32* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NMSGID, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  store i8* null, i8** %13, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load i8**, i8*** @zfs_msgid_table, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %4, align 8
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i64, i64* %5, align 8
  ret i64 %21
}

declare dso_local i64 @check_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
