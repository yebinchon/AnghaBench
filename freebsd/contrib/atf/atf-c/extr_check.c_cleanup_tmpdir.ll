; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_cleanup_tmpdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_cleanup_tmpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @cleanup_tmpdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_tmpdir(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @atf_fs_unlink(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @atf_is_error(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @atf_error_is(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @atf_libc_error_code(i32 %20)
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @INV(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @atf_error_free(i32 %28)
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @atf_is_error(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @INV(i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @atf_fs_unlink(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @atf_is_error(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @atf_error_is(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @atf_libc_error_code(i32 %48)
  %50 = load i64, i64* @ENOENT, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @INV(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @atf_error_free(i32 %56)
  br label %65

58:                                               ; preds = %37
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @atf_is_error(i32 %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @INV(i32 %63)
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @atf_fs_rmdir(i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @atf_is_error(i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @INV(i32 %72)
  ret void
}

declare dso_local i32 @atf_fs_unlink(i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i64 @atf_error_is(i32, i8*) #1

declare dso_local i64 @atf_libc_error_code(i32) #1

declare dso_local i32 @atf_error_free(i32) #1

declare dso_local i32 @atf_fs_rmdir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
