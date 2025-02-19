; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_remove.c_remove_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_remove.c_remove_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [69 x i8] c"%s: branding mismatch; existing ACL is %s, entry to be removed is %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: acl_dup() failed\00", align 1
@ACL_UNDEFINED_TAG = common dso_local global i64 0, align 8
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: acl_get_tag_type() failed\00", align 1
@ACL_MASK = common dso_local global i64 0, align 8
@have_mask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: cannot remove non-existent ACL entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_acl(i32* %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @acl_get_brand_np(i32* %15, i32* %13)
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @acl_get_brand_np(i32* %18, i32* %14)
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i64 @branding_mismatch(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @brand_name(i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @brand_name(i32 %28)
  %30 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27, i32 %29)
  store i32 -1, i32* %4, align 4
  br label %82

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @acl_dup(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i64, i64* @ACL_UNDEFINED_TAG, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %71, %40
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @acl_get_entry(i32* %44, i32 %45, i32* %8)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @acl_get_tag_type(i32 %50, i64* %10)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @ACL_MASK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* @have_mask, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @acl_delete_entry(i32* %62, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %66, %61
  br label %43

72:                                               ; preds = %43
  %73 = load i32**, i32*** %6, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @acl_free(i32* %74)
  %76 = load i32*, i32** %9, align 8
  %77 = load i32**, i32*** %6, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %82

81:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %80, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @acl_get_brand_np(i32*, i32*) #1

declare dso_local i64 @branding_mismatch(i32, i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @brand_name(i32) #1

declare dso_local i32* @acl_dup(i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32*) #1

declare dso_local i32 @acl_get_tag_type(i32, i64*) #1

declare dso_local i32 @acl_delete_entry(i32*, i32) #1

declare dso_local i32 @acl_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
