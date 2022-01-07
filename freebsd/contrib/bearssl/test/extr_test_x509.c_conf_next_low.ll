; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_conf_next_low.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_conf_next_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf_delayed_char = common dso_local global i32 0, align 4
@conf = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@conf_linenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @conf_next_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_next_low() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @conf_delayed_char, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* @conf_delayed_char, align 4
  br label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @conf, align 4
  %8 = call i32 @fgetc(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %6
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* @conf, align 4
  %19 = call i32 @fgetc(i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  store i32 %28, i32* @conf_delayed_char, align 4
  store i32 10, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @conf_linenum, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @conf_linenum, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @fgetc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
