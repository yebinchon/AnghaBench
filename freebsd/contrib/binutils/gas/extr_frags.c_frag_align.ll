; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@abs_section_offset = common dso_local global i32 0, align 4
@rs_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag_align(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @now_seg, align 8
  %11 = load i64, i64* @absolute_section, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 -1, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @abs_section_offset, align 4
  %17 = load i32, i32* %8, align 4
  %18 = xor i32 %17, -1
  %19 = add nsw i32 %16, %18
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @abs_section_offset, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %13
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* @abs_section_offset, align 4
  br label %32

32:                                               ; preds = %30, %24
  br label %41

33:                                               ; preds = %3
  %34 = load i32, i32* @rs_align, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @frag_var(i32 %34, i32 1, i32 1, i32 %35, i32* null, i32 %36, i8* null)
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %9, align 8
  store i8 %39, i8* %40, align 1
  br label %41

41:                                               ; preds = %33, %32
  ret void
}

declare dso_local i8* @frag_var(i32, i32, i32, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
