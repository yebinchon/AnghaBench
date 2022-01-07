; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_perform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack = common dso_local global i32 0, align 4
@tos = common dso_local global i32 0, align 4
@ptr = common dso_local global i32 0, align 4
@idx = common dso_local global i32 0, align 4
@warning = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"warning, %s is not recognised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @stack, align 4
  store i32 %3, i32* @tos, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* @ptr, align 4
  %6 = load i32, i32* @idx, align 4
  %7 = call i64 @at(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %4
  %10 = load i32, i32* @ptr, align 4
  %11 = load i32, i32* @idx, align 4
  %12 = call i64 @iscommand(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = load i32, i32* @ptr, align 4
  %16 = load i32, i32* @idx, align 4
  %17 = call i32 @addr(i32 %15, i32 %16)
  %18 = call i32 @nextword(i32 %17, i8** %1)
  %19 = load i8*, i8** %1, align 8
  %20 = call i32* @lookup_word(i8* %19)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @exec(i32* %24)
  br label %35

26:                                               ; preds = %14
  %27 = load i64, i64* @warning, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = call i32 (...) @skip_past_newline()
  br label %35

35:                                               ; preds = %33, %23
  br label %38

36:                                               ; preds = %9
  %37 = call i32 (...) @skip_past_newline()
  br label %38

38:                                               ; preds = %36, %35
  br label %4

39:                                               ; preds = %4
  ret void
}

declare dso_local i64 @at(i32, i32) #1

declare dso_local i64 @iscommand(i32, i32) #1

declare dso_local i32 @nextword(i32, i8**) #1

declare dso_local i32 @addr(i32, i32) #1

declare dso_local i32* @lookup_word(i8*) #1

declare dso_local i32 @exec(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @skip_past_newline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
