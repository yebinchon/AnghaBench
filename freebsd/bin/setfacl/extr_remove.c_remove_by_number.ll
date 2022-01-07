; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_remove.c_remove_by_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_remove.c_remove_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%s: acl_dup() failed\00", align 1
@ACL_UNDEFINED_TAG = common dso_local global i64 0, align 8
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: acl_get_tag_type() failed\00", align 1
@ACL_MASK = common dso_local global i64 0, align 8
@have_mask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: acl_delete_entry_np() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_by_number(i64 %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* @acl_dup(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i64, i64* @ACL_UNDEFINED_TAG, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %24, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %25

25:                                               ; preds = %48, %35, %22
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @acl_get_entry(i32* %26, i32 %27, i32* %8)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %25

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @acl_get_tag_type(i32 %37, i64* %10)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @ACL_MASK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* @have_mask, align 4
  br label %48

48:                                               ; preds = %47, %43
  br label %25

49:                                               ; preds = %25
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @acl_delete_entry_np(i32* %50, i64 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @acl_free(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32**, i32*** %6, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %69

68:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @acl_dup(i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32*) #1

declare dso_local i32 @acl_get_tag_type(i32, i64*) #1

declare dso_local i32 @acl_delete_entry_np(i32*, i64) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @acl_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
