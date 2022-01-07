; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_add_prefixed_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_add_prefixed_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iprefix = common dso_local global i8* null, align 8
@cpp_GCC_INCLUDE_DIR = common dso_local global i8* null, align 8
@cpp_GCC_INCLUDE_DIR_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @add_prefixed_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_prefixed_path(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** @iprefix, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @iprefix, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** @cpp_GCC_INCLUDE_DIR, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** @iprefix, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** @iprefix, align 8
  %23 = call i64 @strlen(i8* %22)
  br label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i64 [ %23, %21 ], [ %25, %24 ]
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = add i64 %30, 1
  %32 = call i64 @xmalloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i8* %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @add_path(i8* %49, i64 %50, i32 0, i32 0)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @add_path(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
