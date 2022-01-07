; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"MODULE***\0A\00", align 1
@file = common dso_local global i32 0, align 4
@IT_tr_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @module() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @tab(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i32, i32* @file, align 4
  %6 = call i32 @getc(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @file, align 4
  %9 = call i32 @ungetc(i32 %7, i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, 127
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @getone(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @IT_tr_CODE, align 4
  %19 = icmp ne i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %4, label %22

22:                                               ; preds = %20
  %23 = call i32 @tab(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @file, align 4
  %25 = call i32 @getc(i32 %24)
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %39, %22
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* @file, align 4
  %41 = call i32 @getc(i32 %40)
  store i32 %41, i32* %1, align 4
  br label %26

42:                                               ; preds = %26
  ret void
}

declare dso_local i32 @tab(i32, i8*) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i64 @getone(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
