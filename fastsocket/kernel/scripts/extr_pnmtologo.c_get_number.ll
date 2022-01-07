; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_pnmtologo.c_get_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_pnmtologo.c_get_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: end of file\0A\00", align 1
@filename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_number(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @fgetc(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, i32* @filename, align 4
  %13 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %5
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @fgetc(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @filename, align 4
  %26 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 10
  br i1 %30, label %18, label %31

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @isspace(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %5, label %37

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @isdigit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 10, %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 48
  store i32 %47, i32* %4, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @fgetc(i32* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @EOF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @filename, align 4
  %55 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %42
  br label %38

57:                                               ; preds = %38
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
