; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_check_prog_in_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_check_prog_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prog_found_pair = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@atf_fs_access_x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_prog_in_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_prog_in_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prog_found_pair*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.prog_found_pair*
  store %struct.prog_found_pair* %9, %struct.prog_found_pair** %5, align 8
  %10 = load %struct.prog_found_pair*, %struct.prog_found_pair** %5, align 8
  %11 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @atf_no_error()
  store i32 %15, i32* %6, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.prog_found_pair*, %struct.prog_found_pair** %5, align 8
  %19 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @atf_fs_path_init_fmt(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @atf_is_error(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %47

26:                                               ; preds = %16
  %27 = load i32, i32* @atf_fs_access_x, align 4
  %28 = call i32 @atf_fs_eaccess(i32* %7, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @atf_is_error(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load %struct.prog_found_pair*, %struct.prog_found_pair** %5, align 8
  %34 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %46

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @atf_error_free(i32 %36)
  %38 = load %struct.prog_found_pair*, %struct.prog_found_pair** %5, align 8
  %39 = getelementptr inbounds %struct.prog_found_pair, %struct.prog_found_pair* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @INV(i32 %43)
  %45 = call i32 (...) @atf_no_error()
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %35, %32
  br label %47

47:                                               ; preds = %46, %25
  %48 = call i32 @atf_fs_path_fini(i32* %7)
  br label %49

49:                                               ; preds = %47, %14
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i32 @atf_fs_path_init_fmt(i32*, i8*, i8*, i32) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_fs_eaccess(i32*, i32) #1

declare dso_local i32 @atf_error_free(i32) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
