; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Successfully upgraded '%s' from version %llu to feature flags.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Successfully upgraded '%s' from version %llu to version %llu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @upgrade_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_version(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @zpool_get_config(i32* %9, i32* null)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %13 = call i64 @nvlist_lookup_uint64(i32* %11, i32 %12, i32* %8)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @verify(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @SPA_VERSION_IS_SUPPORTED(i32 %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @zpool_upgrade(i32* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SPA_VERSION_FEATURES, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @zpool_get_name(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i8*, i8*, i32, ...) @printf(i8* %37, i8* %39, i32 %40)
  br label %49

42:                                               ; preds = %32
  %43 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @zpool_get_name(i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i8*, i8*, i32, ...) @printf(i8* %43, i8* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i32) #1

declare dso_local i32 @zpool_upgrade(i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
