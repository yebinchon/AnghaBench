; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check_test.c_do_exec_with_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check_test.c_do_exec_with_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Executing %s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32*)* @do_exec_with_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_exec_with_arg(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8*], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @get_process_helpers_path(i32* %11, i32 0, i32* %9)
  %13 = call i8* @atf_fs_path_cstring(i32* %9)
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* %13, i8** %14, align 16
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  store i8* %17, i8** %18, align 16
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  %25 = load i8*, i8** %24, align 16
  %26 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %23, i8* %25)
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @atf_check_exec_array(i8** %27, i32* %28)
  %30 = call i32 @RE(i32 %29)
  %31 = call i32 @atf_fs_path_fini(i32* %9)
  ret void
}

declare dso_local i32 @get_process_helpers_path(i32*, i32, i32*) #1

declare dso_local i8* @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @RE(i32) #1

declare dso_local i32 @atf_check_exec_array(i8**, i32*) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
