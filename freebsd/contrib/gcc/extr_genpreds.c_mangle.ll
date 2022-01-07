; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_mangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtl_obstack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"_l\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"_g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mangle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %26, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %20 [
    i32 95, label %11
    i32 60, label %14
    i32 62, label %17
  ]

11:                                               ; preds = %7
  %12 = load i32, i32* @rtl_obstack, align 4
  %13 = call i32 @obstack_grow(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %25

14:                                               ; preds = %7
  %15 = load i32, i32* @rtl_obstack, align 4
  %16 = call i32 @obstack_grow(i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %25

17:                                               ; preds = %7
  %18 = load i32, i32* @rtl_obstack, align 4
  %19 = call i32 @obstack_grow(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %25

20:                                               ; preds = %7
  %21 = load i32, i32* @rtl_obstack, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @obstack_1grow(i32 %21, i8 signext %23)
  br label %25

25:                                               ; preds = %20, %17, %14, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  br label %3

29:                                               ; preds = %3
  %30 = load i32, i32* @rtl_obstack, align 4
  %31 = call i32 @obstack_1grow(i32 %30, i8 signext 0)
  %32 = load i32, i32* @rtl_obstack, align 4
  %33 = call i8* @obstack_finish(i32 %32)
  ret i8* %33
}

declare dso_local i32 @obstack_grow(i32, i8*, i32) #1

declare dso_local i32 @obstack_1grow(i32, i8 signext) #1

declare dso_local i8* @obstack_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
