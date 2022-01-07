; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_encode_section_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_encode_section_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ia64_encode_section_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_encode_section_info(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @default_encode_section_info(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @VAR_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DECL_RTL(i32 %16)
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @MEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @DECL_RTL(i32 %22)
  %24 = call i32 @XEXP(i32 %23, i32 0)
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @SYMBOL_REF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @TREE_STATIC(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @DECL_EXTERNAL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = call i32 @ia64_encode_addr_area(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %32, %21, %15, %3
  ret void
}

declare dso_local i32 @default_encode_section_info(i32, i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i32 @ia64_encode_addr_area(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
