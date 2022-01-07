; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argv0 = common dso_local global i8* null, align 8
@NM_TAR = common dso_local global i32 0, align 4
@NM_CPIO = common dso_local global i32 0, align 4
@NM_PAX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 47)
  store i8* %8, i8** @argv0, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** @argv0, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @argv0, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @argv0, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* @NM_TAR, align 4
  %19 = load i8*, i8** @argv0, align 8
  %20 = call i64 @strcmp(i32 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = call i32 @tar_options(i32 %23, i8** %24)
  br label %41

26:                                               ; preds = %17
  %27 = load i32, i32* @NM_CPIO, align 4
  %28 = load i8*, i8** @argv0, align 8
  %29 = call i64 @strcmp(i32 %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = call i32 @cpio_options(i32 %32, i8** %33)
  br label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** @NM_PAX, align 8
  store i8* %37, i8** @argv0, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i8**, i8*** %4, align 8
  %40 = call i32 @pax_options(i32 %38, i8** %39)
  br label %41

41:                                               ; preds = %36, %31, %22
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @tar_options(i32, i8**) #1

declare dso_local i32 @cpio_options(i32, i8**) #1

declare dso_local i32 @pax_options(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
