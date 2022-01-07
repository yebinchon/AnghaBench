; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_do_fancy_stuff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_do_fancy_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"@code{\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_fancy_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fancy_stuff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @init_string(i32* %2)
  br label %4

4:                                                ; preds = %65, %0
  %5 = load i32*, i32** @tos, align 8
  %6 = load i32, i32* %1, align 4
  %7 = call signext i8 @at(i32* %5, i32 %6)
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %4
  %10 = load i32*, i32** @tos, align 8
  %11 = load i32, i32* %1, align 4
  %12 = call signext i8 @at(i32* %10, i32 %11)
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 60
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = load i32*, i32** @tos, align 8
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, 1
  %19 = call signext i8 @at(i32* %16, i32 %18)
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 60
  br i1 %21, label %22, label %58

22:                                               ; preds = %15
  %23 = load i32*, i32** @tos, align 8
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 2
  %26 = call signext i8 @at(i32* %23, i32 %25)
  %27 = call i32 @isspace(i8 zeroext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %1, align 4
  %31 = add i32 %30, 2
  store i32 %31, i32* %1, align 4
  %32 = call i32 @cattext(i32* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %47, %29
  %34 = load i32*, i32** @tos, align 8
  %35 = load i32, i32* %1, align 4
  %36 = call signext i8 @at(i32* %34, i32 %35)
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32*, i32** @tos, align 8
  %41 = load i32, i32* %1, align 4
  %42 = call signext i8 @at(i32* %40, i32 %41)
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 62
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ false, %33 ], [ %44, %39 ]
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = load i32*, i32** @tos, align 8
  %49 = load i32, i32* %1, align 4
  %50 = call signext i8 @at(i32* %48, i32 %49)
  %51 = call i32 @catchar(i32* %2, i8 signext %50)
  %52 = load i32, i32* %1, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %33

54:                                               ; preds = %45
  %55 = call i32 @cattext(i32* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %1, align 4
  %57 = add i32 %56, 2
  store i32 %57, i32* %1, align 4
  br label %65

58:                                               ; preds = %22, %15, %9
  %59 = load i32*, i32** @tos, align 8
  %60 = load i32, i32* %1, align 4
  %61 = call signext i8 @at(i32* %59, i32 %60)
  %62 = call i32 @catchar(i32* %2, i8 signext %61)
  %63 = load i32, i32* %1, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %58, %54
  br label %4

66:                                               ; preds = %4
  %67 = load i32*, i32** @tos, align 8
  %68 = call i32 @delete_string(i32* %67)
  %69 = load i32, i32* %2, align 4
  %70 = load i32*, i32** @tos, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @pc, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @pc, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local signext i8 @at(i32*, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @cattext(i32*, i8*) #1

declare dso_local i32 @catchar(i32*, i8 signext) #1

declare dso_local i32 @delete_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
