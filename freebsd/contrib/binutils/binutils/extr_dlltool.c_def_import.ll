; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_def_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_def_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @def_import(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %11, align 8
  br label %24

17:                                               ; preds = %5
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %11, align 8
  br label %23

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %23

23:                                               ; preds = %22, %20
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add nsw i64 %29, %31
  %33 = add nsw i64 %32, 2
  %34 = call i64 @alloca(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %27, %24
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @append_import(i8* %42, i8* %43, i32 %44)
  ret void
}

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @append_import(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
