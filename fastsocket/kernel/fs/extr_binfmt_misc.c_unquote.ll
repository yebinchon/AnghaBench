; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_unquote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_unquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unquote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %61, %23, %1
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 92
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 120
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = call signext i8 @toupper(i32 %29)
  store i8 %30, i8* %3, align 1
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %3, align 1
  %34 = call i64 @isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 48, i32 55
  %38 = sub nsw i32 %32, %37
  %39 = shl i32 %38, 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = call signext i8 @toupper(i32 %45)
  store i8 %46, i8* %3, align 1
  %47 = load i8, i8* %3, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %3, align 1
  %50 = call i64 @isdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 48, i32 55
  %54 = sub nsw i32 %48, %53
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %58, %54
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %55, align 1
  br label %8

61:                                               ; preds = %18, %14
  %62 = load i8, i8* %3, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  store i8 %62, i8* %63, align 1
  br label %8

65:                                               ; preds = %8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  ret i32 %71
}

declare dso_local signext i8 @toupper(i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
