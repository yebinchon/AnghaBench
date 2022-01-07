; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dsl_prop_set_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dsl_prop_set_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s %s = %s at '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64)* @ztest_dsl_prop_set_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_dsl_prop_set_uint64(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @zfs_prop_to_name(i32 %17)
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ZPROP_SRC_NONE, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dsl_prop_set_int(i8* %23, i8* %24, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @ztest_record_enospc(i32 %39)
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %64

42:                                               ; preds = %31
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @ASSERT0(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @dsl_prop_get_integer(i8* %45, i8* %46, i32* %14, i8* %22)
  %48 = call i32 @VERIFY0(i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %50 = icmp sge i32 %49, 6
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i64 @zfs_prop_index_to_string(i32 %52, i32 %53, i8** %11)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @VERIFY(i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %59, i8* %60, i8* %22)
  br label %62

62:                                               ; preds = %51, %42
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %64

64:                                               ; preds = %62, %38
  %65 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i8* @zfs_prop_to_name(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_prop_set_int(i8*, i8*, i32, i32) #1

declare dso_local i32 @ztest_record_enospc(i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_prop_get_integer(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfs_prop_index_to_string(i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
