; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_mkstemp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_mkstemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRWXU = common dso_local global i32 0, align 4
@atf_fs_stat_reg_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_fs_mkstemp(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @S_IRWXU, align 4
  %9 = load i32, i32* @S_IRWXU, align 4
  %10 = call i32 @check_umask(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @atf_fs_stat_reg_type, align 4
  %15 = call i32 (...) @current_umask()
  %16 = call i32 @invalid_umask_error(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @copy_contents(i32* %18, i8** %6)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @atf_is_error(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %46

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @do_mkstemp(i8* %25, i32* %7)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @atf_is_error(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %43

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @replace_contents(i32* %32, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @atf_is_error(i32 %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @INV(i32 %41)
  br label %43

43:                                               ; preds = %31, %30
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %43, %23, %12
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @check_umask(i32, i32) #1

declare dso_local i32 @invalid_umask_error(i32*, i32, i32) #1

declare dso_local i32 @current_umask(...) #1

declare dso_local i32 @copy_contents(i32*, i8**) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @do_mkstemp(i8*, i32*) #1

declare dso_local i32 @replace_contents(i32*, i8*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
