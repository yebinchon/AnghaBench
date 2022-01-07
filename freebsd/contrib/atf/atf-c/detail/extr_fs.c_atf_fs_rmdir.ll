; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cannot remove directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_fs_rmdir(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @atf_fs_path_cstring(i32* %4)
  %6 = call i64 @rmdir(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EEXIST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* @ENOTEMPTY, align 8
  store i64 %13, i64* @errno, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i64, i64* @errno, align 8
  %16 = call i32 @atf_libc_error(i64 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @atf_no_error()
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @rmdir(i32) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @atf_libc_error(i64, i8*) #1

declare dso_local i32 @atf_no_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
