; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_print_hashes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_print_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" sha%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_hashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hashes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 6
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %9, %10
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %20 [
    i32 3, label %16
    i32 4, label %17
    i32 5, label %18
    i32 6, label %19
  ]

16:                                               ; preds = %14
  store i32 224, i32* %4, align 4
  br label %21

17:                                               ; preds = %14
  store i32 256, i32* %4, align 4
  br label %21

18:                                               ; preds = %14
  store i32 384, i32* %4, align 4
  br label %21

19:                                               ; preds = %14
  store i32 512, i32* %4, align 4
  br label %21

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %8
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
