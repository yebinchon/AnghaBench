; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_print_fpu_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_print_fpu_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"IVO \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DVZ \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OFL \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UFL \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INX \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_fpu_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fpu_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
