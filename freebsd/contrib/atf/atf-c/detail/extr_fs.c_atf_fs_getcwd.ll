; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_getcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_fs.c_atf_fs_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot determine current directory\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_fs_getcwd(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @MAXPATHLEN, align 4
  %6 = call i8* @getcwd(i32* null, i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @atf_libc_error(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @atf_fs_path_init_fmt(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @free(i8* %16)
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i32 @atf_libc_error(i32, i8*) #1

declare dso_local i32 @atf_fs_path_init_fmt(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
