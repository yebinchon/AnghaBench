; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_prop_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_prop_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZPROP_SRC_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32, i32*)* @zpool_get_prop_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zpool_get_prop_string(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @zpool_prop_to_name(i32 %16)
  %18 = call i64 @nvlist_lookup_nvlist(i32* %15, i32 %17, i32** %7)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @ZPROP_SOURCE, align 4
  %23 = call i64 @nvlist_lookup_uint64(i32* %21, i32 %22, i32* %9)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @verify(i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @ZPROP_VALUE, align 4
  %30 = call i64 @nvlist_lookup_string(i32* %28, i32 %29, i8** %10)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @verify(i32 %32)
  br label %42

34:                                               ; preds = %3
  %35 = load i32, i32* @ZPROP_SRC_DEFAULT, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @zpool_prop_default_string(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %10, align 8
  ret i8* %49
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @zpool_prop_default_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
