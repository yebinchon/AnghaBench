; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_xlate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@add_underscore = common dso_local global i64 0, align 8
@add_stdcall_underscore = common dso_local global i64 0, align 8
@killat = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xlate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 64
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @add_underscore, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @add_stdcall_underscore, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 64)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19, %13
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %25, 2
  %27 = call i8* @xmalloc(i64 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 95, i8* %29, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %23, %19, %16, %1
  %36 = load i64, i64* @killat, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %2, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 64)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** %5, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %38
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
