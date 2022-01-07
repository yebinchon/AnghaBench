; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_print_error_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_print_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"errors: List of errors unavailable (insufficient privileges)\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"errors: Permanent errors have been detected in the following files:\0A\0A\00", align 1
@ZPOOL_ERR_DATASET = common dso_local global i32 0, align 4
@ZPOOL_ERR_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%7s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_error_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error_log(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @zpool_get_errlog(i32* %13, i32** %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %58

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* %6, align 8
  %21 = call i8* @safe_malloc(i64 %20)
  store i8* %21, i8** %5, align 8
  store i32* null, i32** %4, align 8
  br label %22

22:                                               ; preds = %27, %18
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @nvlist_next_nvpair(i32* %23, i32* %24)
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @nvpair_value_nvlist(i32* %28, i32** %7)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @verify(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @ZPOOL_ERR_DATASET, align 4
  %35 = call i64 @nvlist_lookup_uint64(i32* %33, i32 %34, i32* %8)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @verify(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @ZPOOL_ERR_OBJECT, align 4
  %41 = call i64 @nvlist_lookup_uint64(i32* %39, i32 %40, i32* %9)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @verify(i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @zpool_obj_to_path(i32* %45, i32 %46, i32 %47, i8* %48, i64 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %22

53:                                               ; preds = %22
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @nvlist_free(i32* %56)
  br label %58

58:                                               ; preds = %53, %16
  ret void
}

declare dso_local i64 @zpool_get_errlog(i32*, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @safe_malloc(i64) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @zpool_obj_to_path(i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
