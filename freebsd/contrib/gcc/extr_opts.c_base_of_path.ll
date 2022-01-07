; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_base_of_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_base_of_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @base_of_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_of_path(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %8, align 1
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i8, i8* %8, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i8, i8* %8, align 1
  %18 = call i64 @IS_DIR_SEPARATOR(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %30

23:                                               ; preds = %16
  %24 = load i8, i8* %8, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %8, align 1
  br label %13

34:                                               ; preds = %13
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8**, i8*** %4, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
