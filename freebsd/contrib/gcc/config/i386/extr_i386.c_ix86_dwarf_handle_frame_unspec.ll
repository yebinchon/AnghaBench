; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_dwarf_handle_frame_unspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_dwarf_handle_frame_unspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @ix86_dwarf_handle_frame_unspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_dwarf_handle_frame_unspec(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @SET_SRC(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @UNSPEC, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %33 [
    i32 128, label %17
    i32 129, label %24
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @XVECEXP(i32 %19, i32 0, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @SET_DEST(i32 %21)
  %23 = call i32 @dwarf2out_reg_save_reg(i8* %18, i32 %20, i32 %22)
  br label %35

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SET_DEST(i32 %26)
  %28 = call i32 @REGNO(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @XVECEXP(i32 %29, i32 0, i32 0)
  %31 = call i32 @INTVAL(i32 %30)
  %32 = call i32 @dwarf2out_def_cfa(i8* %25, i32 %28, i32 %31)
  br label %35

33:                                               ; preds = %3
  %34 = call i32 (...) @gcc_unreachable()
  br label %35

35:                                               ; preds = %33, %24, %17
  ret void
}

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @dwarf2out_reg_save_reg(i8*, i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @dwarf2out_def_cfa(i8*, i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
