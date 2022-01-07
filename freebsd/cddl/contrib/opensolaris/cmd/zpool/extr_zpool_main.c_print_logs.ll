; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_print_logs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_print_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\09logs\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64)* @print_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_logs(i32* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %16 = call i64 @nvlist_lookup_nvlist_array(i32* %14, i32 %15, i32*** %11, i64* %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %72

19:                                               ; preds = %4
  %20 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @printf(i8* %20)
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %69, %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32**, i32*** %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %33 = call i32 @nvlist_lookup_uint64(i32* %31, i32 %32, i32* %12)
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %69

37:                                               ; preds = %26
  %38 = load i32, i32* @g_zfs, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32**, i32*** %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @B_TRUE, align 4
  %45 = call i8* @zpool_vdev_name(i32 %38, i32* %39, i32* %43, i32 %44)
  store i8* %45, i8** %13, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32**, i32*** %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = call i32 @print_status_config(i32* %49, i8* %50, i32* %54, i32 %55, i32 2, i32 %56)
  br label %66

58:                                               ; preds = %37
  %59 = load i8*, i8** %13, align 8
  %60 = load i32**, i32*** %11, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @print_import_config(i8* %59, i32* %63, i32 %64, i32 2)
  br label %66

66:                                               ; preds = %58, %48
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %66, %36
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %22

72:                                               ; preds = %18, %22
  ret void
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i32 @print_status_config(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @print_import_config(i8*, i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
