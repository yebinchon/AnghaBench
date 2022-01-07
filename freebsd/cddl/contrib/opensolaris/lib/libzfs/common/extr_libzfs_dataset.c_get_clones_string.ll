; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_clones_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_clones_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @get_clones_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clones_string(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @zfs_get_clones_nvl(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @nvlist_next_nvpair(i32* %18, i32* null)
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %39, %15
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @strlcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i8* @nvpair_name(i32* %35)
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @strlcat(i8* %34, i8* %36, i64 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @nvlist_next_nvpair(i32* %40, i32* %41)
  store i32* %42, i32** %9, align 8
  br label %20

43:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @zfs_get_clones_nvl(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i8* @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
