; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_preserve_fd_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_preserve_fd_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@_PC_ACL_NFS4 = common dso_local global i32 0, align 4
@ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"fpathconf(..., _PC_ACL_NFS4) failed for %s\00", align 1
@to = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_PC_ACL_EXTENDED = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"fpathconf(..., _PC_ACL_EXTENDED) failed for %s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to get acl entries while setting %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"acl_is_trivial() failed for %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to set acl entries for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preserve_fd_acls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @_PC_ACL_NFS4, align 4
  %13 = call i32 @fpathconf(i32 %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %17 = load i32, i32* @ACL_TYPE_NFS4, align 4
  store i32 %17, i32* %7, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINVAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %27 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 1, i32* %3, align 4
  br label %94

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @_PC_ACL_EXTENDED, align 4
  %35 = call i32 @fpathconf(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  %39 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  store i32 %39, i32* %7, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINVAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %49 = call i32 @warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 1, i32* %3, align 4
  br label %94

50:                                               ; preds = %43, %40
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %94

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32* @acl_get_fd_np(i32 %57, i32 %58)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %64 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 1, i32* %3, align 4
  br label %94

65:                                               ; preds = %56
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @acl_is_trivial_np(i32* %66, i32* %10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %71 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @acl_free(i32* %72)
  store i32 1, i32* %3, align 4
  br label %94

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @acl_free(i32* %78)
  store i32 0, i32* %3, align 4
  br label %94

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @acl_set_fd_np(i32 %81, i32* %82, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %88 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @acl_free(i32* %89)
  store i32 1, i32* %3, align 4
  br label %94

91:                                               ; preds = %80
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @acl_free(i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %86, %77, %69, %62, %55, %47, %25
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @fpathconf(i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32* @acl_get_fd_np(i32, i32) #1

declare dso_local i64 @acl_is_trivial_np(i32*, i32*) #1

declare dso_local i32 @acl_free(i32*) #1

declare dso_local i64 @acl_set_fd_np(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
