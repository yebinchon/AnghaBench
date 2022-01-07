; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_encoding_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_encoding_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_EH_PE_omit = common dso_local global i8 0, align 1
@stdoutput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @encoding_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encoding_size(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @DW_EH_PE_omit, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 7
  switch i32 %13, label %23 [
    i32 0, label %14
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @stdoutput, align 4
  %16 = call i32 @bfd_get_arch_size(i32 %15)
  %17 = icmp eq i32 %16, 64
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 8, i32 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %10
  store i32 2, i32* %2, align 4
  br label %25

21:                                               ; preds = %10
  store i32 4, i32* %2, align 4
  br label %25

22:                                               ; preds = %10
  store i32 8, i32* %2, align 4
  br label %25

23:                                               ; preds = %10
  %24 = call i32 (...) @abort() #3
  unreachable

25:                                               ; preds = %22, %21, %20, %14, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @bfd_get_arch_size(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
