; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_merge.c_merge_user_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_merge.c_merge_user_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"acl_get_qualifier() failed\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"acl_get_permset() failed\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"acl_set_permset() failed\00", align 1
@ACL_BRAND_NFS4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"acl_get_entry_type_np() failed\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"acl_set_entry_type_np() failed\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"acl_get_flagset_np() failed\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"acl_set_flagset_np() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @merge_user_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_user_group(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i64* @acl_get_qualifier(i32 %14)
  store i64* %15, i64** %11, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64* @acl_get_qualifier(i32 %22)
  store i64* %23, i64** %12, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @acl_get_permset(i32 %36, i32* %7)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @acl_set_permset(i32 %43, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @acl_get_entry_type_np(i32 %55, i32* %8)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @acl_set_entry_type_np(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @acl_get_flagset_np(i32 %70, i32* %9)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @acl_set_flagset_np(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %49
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %28
  %86 = load i64*, i64** %11, align 8
  %87 = call i32 @acl_free(i64* %86)
  %88 = load i64*, i64** %12, align 8
  %89 = call i32 @acl_free(i64* %88)
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i64* @acl_get_qualifier(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @acl_get_permset(i32, i32*) #1

declare dso_local i32 @acl_set_permset(i32, i32) #1

declare dso_local i64 @acl_get_entry_type_np(i32, i32*) #1

declare dso_local i64 @acl_set_entry_type_np(i32, i32) #1

declare dso_local i64 @acl_get_flagset_np(i32, i32*) #1

declare dso_local i64 @acl_set_flagset_np(i32, i32) #1

declare dso_local i32 @acl_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
