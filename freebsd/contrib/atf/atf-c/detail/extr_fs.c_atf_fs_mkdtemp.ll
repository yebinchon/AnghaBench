; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_mkdtemp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_mkdtemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRWXU = common dso_local global i32 0, align 4
@atf_fs_stat_dir_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_fs_mkdtemp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @S_IRWXU, align 4
  %6 = load i32, i32* @S_IRWXU, align 4
  %7 = call i32 @check_umask(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @atf_fs_stat_dir_type, align 4
  %12 = call i32 (...) @current_umask()
  %13 = call i32 @invalid_umask_error(i32* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @copy_contents(i32* %15, i8** %4)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @atf_is_error(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %41

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @do_mkdtemp(i8* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @atf_is_error(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %38

28:                                               ; preds = %21
  %29 = load i32*, i32** %2, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @replace_contents(i32* %29, i8* %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @atf_is_error(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @INV(i32 %36)
  br label %38

38:                                               ; preds = %28, %27
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %38, %20, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @check_umask(i32, i32) #1

declare dso_local i32 @invalid_umask_error(i32*, i32, i32) #1

declare dso_local i32 @current_umask(...) #1

declare dso_local i32 @copy_contents(i32*, i8**) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @do_mkdtemp(i8*) #1

declare dso_local i32 @replace_contents(i32*, i8*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
