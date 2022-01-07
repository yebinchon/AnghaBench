; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_stat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Cannot get information of %s; lstat(2) failed\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@atf_fs_stat_blk_type = common dso_local global i32 0, align 4
@atf_fs_stat_chr_type = common dso_local global i32 0, align 4
@atf_fs_stat_dir_type = common dso_local global i32 0, align 4
@atf_fs_stat_fifo_type = common dso_local global i32 0, align 4
@atf_fs_stat_lnk_type = common dso_local global i32 0, align 4
@atf_fs_stat_reg_type = common dso_local global i32 0, align 4
@atf_fs_stat_sock_type = common dso_local global i32 0, align 4
@atf_fs_stat_wht_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_fs_stat_init(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @atf_fs_path_cstring(i32* %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i32 @lstat(i8* %10, %struct.TYPE_5__* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @atf_libc_error(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %5, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IFMT, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = call i32 (...) @atf_no_error()
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %60 [
    i32 135, label %28
    i32 134, label %32
    i32 133, label %36
    i32 132, label %40
    i32 131, label %44
    i32 130, label %48
    i32 129, label %52
    i32 128, label %56
  ]

28:                                               ; preds = %19
  %29 = load i32, i32* @atf_fs_stat_blk_type, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %64

32:                                               ; preds = %19
  %33 = load i32, i32* @atf_fs_stat_chr_type, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %64

36:                                               ; preds = %19
  %37 = load i32, i32* @atf_fs_stat_dir_type, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %64

40:                                               ; preds = %19
  %41 = load i32, i32* @atf_fs_stat_fifo_type, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %64

44:                                               ; preds = %19
  %45 = load i32, i32* @atf_fs_stat_lnk_type, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %64

48:                                               ; preds = %19
  %49 = load i32, i32* @atf_fs_stat_reg_type, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %64

52:                                               ; preds = %19
  %53 = load i32, i32* @atf_fs_stat_sock_type, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %64

56:                                               ; preds = %19
  %57 = load i32, i32* @atf_fs_stat_wht_type, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %19
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @unknown_type_error(i8* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28
  br label %65

65:                                               ; preds = %64, %15
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i8* @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @lstat(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @atf_libc_error(i32, i8*, i8*) #1

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i32 @unknown_type_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
