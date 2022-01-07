; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mtab.c_hasmntstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mtab.c_hasmntstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hasmntstr(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @amu_hasmntopt(i32* %11, i8* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @hasmnteq(i32* %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 44)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @xstrdup(i8* %28)
  store i8* %29, i8** %3, align 8
  br label %51

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i8* @xmalloc(i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @strncpy(i8* %40, i8* %41, i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %3, align 8
  br label %51

49:                                               ; preds = %16
  br label %50

50:                                               ; preds = %49, %2
  store i8* null, i8** %3, align 8
  br label %51

51:                                               ; preds = %50, %30, %27
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i8* @amu_hasmntopt(i32*, i8*) #1

declare dso_local i8* @hasmnteq(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
