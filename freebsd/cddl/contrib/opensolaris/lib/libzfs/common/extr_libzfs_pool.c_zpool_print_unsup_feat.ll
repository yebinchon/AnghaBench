; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_print_unsup_feat.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_print_unsup_feat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_UNSUP_FEAT = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"\09%s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpool_print_unsup_feat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %9 = call i64 @nvlist_lookup_nvlist(i32* %7, i32 %8, i32** %3)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @verify(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @ZPOOL_CONFIG_UNSUP_FEAT, align 4
  %15 = call i64 @nvlist_lookup_nvlist(i32* %13, i32 %14, i32** %4)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @verify(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @nvlist_next_nvpair(i32* %19, i32* null)
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %49, %1
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @nvpair_type(i32* %25)
  %27 = load i64, i64* @DATA_TYPE_STRING, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @verify(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @nvpair_value_string(i32* %31, i8** %6)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @verify(i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @nvpair_name(i32* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  br label %48

44:                                               ; preds = %24
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @nvpair_name(i32* %45)
  %47 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @nvlist_next_nvpair(i32* %50, i32* %51)
  store i32* %52, i32** %5, align 8
  br label %21

53:                                               ; preds = %21
  ret void
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i64 @nvpair_value_string(i32*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
