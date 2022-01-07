; ModuleID = '/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_preserve_fd_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_preserve_fd_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PC_ACL_NFS4 = common dso_local global i32 0, align 4
@ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"fpathconf(..., _PC_ACL_NFS4) failed for %s\00", align 1
@_PC_ACL_EXTENDED = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"fpathconf(..., _PC_ACL_EXTENDED) failed for %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get acl entries for %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"acl_is_trivial() failed for %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to set acl entries for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*)* @preserve_fd_acls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preserve_fd_acls(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @_PC_ACL_NFS4, align 4
  %16 = call i32 @fpathconf(i32 %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  %20 = load i32, i32* @ACL_TYPE_NFS4, align 4
  store i32 %20, i32* %10, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINVAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %97

31:                                               ; preds = %24, %21
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @_PC_ACL_EXTENDED, align 4
  %38 = call i32 @fpathconf(i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  %42 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  store i32 %42, i32* %10, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EINVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %97

53:                                               ; preds = %46, %43
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %97

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32* @acl_get_fd_np(i32 %60, i32 %61)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %97

68:                                               ; preds = %59
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @acl_is_trivial_np(i32* %69, i32* %13)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @acl_free(i32* %75)
  br label %97

77:                                               ; preds = %68
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @acl_free(i32* %81)
  br label %97

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @acl_set_fd_np(i32 %84, i32* %85, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @acl_free(i32* %92)
  br label %97

94:                                               ; preds = %83
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @acl_free(i32* %95)
  br label %97

97:                                               ; preds = %94, %89, %80, %72, %65, %58, %50, %28
  ret void
}

declare dso_local i32 @fpathconf(i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

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
