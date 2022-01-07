; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_display_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_display_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@return_code = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @display_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @get_file_size(i8* %4)
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* @return_code, align 4
  br label %35

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @target, align 4
  %11 = call i32* @bfd_openr(i8* %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @bfd_nonfatal(i8* %15)
  store i32 1, i32* @return_code, align 4
  br label %35

17:                                               ; preds = %8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @bfd_archive, align 4
  %20 = call i64 @bfd_check_format(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @display_archive(i32* %23)
  br label %28

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @display_bfd(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @bfd_close(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @bfd_nonfatal(i8* %33)
  store i32 1, i32* @return_code, align 4
  br label %35

35:                                               ; preds = %7, %14, %32, %28
  ret void
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i32) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @display_archive(i32*) #1

declare dso_local i32 @display_bfd(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
