; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_deduce_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_deduce_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @deduce_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @deduce_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** @program_name, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %5, align 8
  store i8* null, i8** %4, align 8
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  br label %8

31:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i8*, i8** %2, align 8
  %36 = load i8*, i8** @program_name, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** @program_name, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = add nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i8* @look_for_prog(i8* %35, i8* %36, i32 %43)
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** @program_name, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** @program_name, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i8* @look_for_prog(i8* %52, i8* %53, i32 %60)
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %51, %48, %45
  %63 = load i8*, i8** %3, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %2, align 8
  %67 = call i8* @xstrdup(i8* %66)
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local i8* @look_for_prog(i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
