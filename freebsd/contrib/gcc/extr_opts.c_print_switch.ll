; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@columns = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @print_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_switch(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = call i32 @putchar(i8 signext 44)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %13, %14
  %16 = load i32, i32* @columns, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = call i32 @putchar(i8 signext 10)
  %20 = call i32 @putchar(i8 signext 32)
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %11
  br label %24

22:                                               ; preds = %2
  %23 = call i32 @putchar(i8 signext 32)
  br label %24

24:                                               ; preds = %22, %21
  %25 = call i32 @putchar(i8 signext 32)
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fputs(i8* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %29, %30
  %32 = add i32 %31, 1
  ret i32 %32
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
