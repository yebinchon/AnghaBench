; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_ep_parse_optional_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_ep_parse_optional_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ep_parse_optional_filename.filename = internal global [1024 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @ep_parse_optional_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ep_parse_optional_filename(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i8* null, i8** %2, align 8
  br label %45

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8 0, i8* %6, align 1
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i8, i8* %6, align 1
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* @ep_parse_optional_filename.filename, i64 0, i64 %30
  store i8 %28, i8* %31, align 1
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %42

36:                                               ; preds = %27
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %20

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i8**, i8*** %3, align 8
  store i8* %43, i8** %44, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ep_parse_optional_filename.filename, i64 0, i64 0), i8** %2, align 8
  br label %45

45:                                               ; preds = %42, %18
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
