; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_mask.c_set_acl_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_mask.c_set_acl_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_mask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s: acl_dup() failed\00", align 1
@n_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: acl_calc_mask() failed\00", align 1
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: acl_get_tag_type() failed\00", align 1
@ACL_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: warning: no mask entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_acl_mask(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i64, i64* @have_mask, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  %14 = load i32**, i32*** %4, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* @acl_dup(i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* @n_flag, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = call i64 @acl_calc_mask(i32** %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @acl_free(i32* %31)
  store i32 -1, i32* %3, align 4
  br label %71

33:                                               ; preds = %25
  br label %62

34:                                               ; preds = %22
  %35 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %56, %34
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @acl_get_entry(i32* %37, i32 %38, i32** %6)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @acl_get_tag_type(i32* %43, i64* %8)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @ACL_MASK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @acl_free(i32* %54)
  store i32 0, i32* %3, align 4
  br label %71

56:                                               ; preds = %49
  br label %36

57:                                               ; preds = %36
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @acl_free(i32* %60)
  store i32 0, i32* %3, align 4
  br label %71

62:                                               ; preds = %33
  %63 = load i32**, i32*** %4, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @acl_free(i32* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @acl_dup(i32* %66)
  %68 = load i32**, i32*** %4, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @acl_free(i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %57, %53, %28, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @acl_dup(i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @acl_calc_mask(i32**) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @acl_free(i32*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32**) #1

declare dso_local i32 @acl_get_tag_type(i32*, i64*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
