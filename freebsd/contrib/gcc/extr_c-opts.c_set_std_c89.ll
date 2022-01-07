; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_set_std_c89.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_set_std_c89.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_in = common dso_local global i32 0, align 4
@CLK_STDC94 = common dso_local global i32 0, align 4
@CLK_STDC89 = common dso_local global i32 0, align 4
@CLK_GNUC89 = common dso_local global i32 0, align 4
@flag_iso = common dso_local global i32 0, align 4
@flag_no_asm = common dso_local global i32 0, align 4
@flag_no_gnu_keywords = common dso_local global i32 0, align 4
@flag_no_nonansi_builtin = common dso_local global i32 0, align 4
@flag_isoc94 = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_std_c89 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_std_c89(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @parse_in, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @CLK_STDC94, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @CLK_STDC89, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @CLK_GNUC89, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i32 [ %9, %8 ], [ %18, %17 ]
  %21 = call i32 @cpp_set_lang(i32 %5, i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* @flag_iso, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* @flag_no_asm, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* @flag_no_gnu_keywords, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* @flag_no_nonansi_builtin, align 4
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* @flag_isoc94, align 4
  store i64 0, i64* @flag_isoc99, align 8
  ret void
}

declare dso_local i32 @cpp_set_lang(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
