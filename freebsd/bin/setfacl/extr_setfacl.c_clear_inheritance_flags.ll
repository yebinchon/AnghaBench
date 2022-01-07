; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_setfacl.c_clear_inheritance_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_setfacl.c_clear_inheritance_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_BRAND_NFS4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"acl_dup() failed\00", align 1
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"acl_get_flagset_np() failed\00", align 1
@ACL_ENTRY_INHERIT_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"acl_delete_entry() failed\00", align 1
@ACL_ENTRY_FILE_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_DIRECTORY_INHERIT = common dso_local global i32 0, align 4
@ACL_ENTRY_NO_PROPAGATE_INHERIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"acl_delete_flag_np() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @clear_inheritance_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clear_inheritance_flags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @acl_get_brand_np(i32* %9, i32* %7)
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  store i32* %15, i32** %2, align 8
  br label %65

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @acl_dup(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  store i32* %23, i32** %2, align 8
  br label %65

24:                                               ; preds = %16
  %25 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %62, %50, %36, %24
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @acl_get_entry(i32* %27, i32 %28, i32* %5)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @acl_get_flagset_np(i32 %33, i32* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %26

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ACL_ENTRY_INHERIT_ONLY, align 4
  %41 = call i32 @acl_get_flag_np(i32 %39, i32 %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @acl_delete_entry(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  br label %26

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ACL_ENTRY_FILE_INHERIT, align 4
  %54 = load i32, i32* @ACL_ENTRY_DIRECTORY_INHERIT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ACL_ENTRY_NO_PROPAGATE_INHERIT, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @acl_delete_flag_np(i32 %52, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %51
  br label %26

63:                                               ; preds = %26
  %64 = load i32*, i32** %4, align 8
  store i32* %64, i32** %2, align 8
  br label %65

65:                                               ; preds = %63, %21, %14
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local i32 @acl_get_brand_np(i32*, i32*) #1

declare dso_local i32* @acl_dup(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32*) #1

declare dso_local i64 @acl_get_flagset_np(i32, i32*) #1

declare dso_local i32 @acl_get_flag_np(i32, i32) #1

declare dso_local i64 @acl_delete_entry(i32*, i32) #1

declare dso_local i64 @acl_delete_flag_np(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
