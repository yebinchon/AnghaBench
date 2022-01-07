; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_offsettable_memref_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_offsettable_memref_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_offsettable_memref_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @MEM_P(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GET_MODE(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @XEXP(i32 %11, i32 0)
  %13 = call i64 @offsettable_address_p(i32 1, i32 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %22

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @GET_MODE(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @XEXP(i32 %19, i32 0)
  %21 = call i32 @rs6000_legitimate_offset_address_p(i32 %18, i32 %20, i32 1)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %15, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @offsettable_address_p(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @rs6000_legitimate_offset_address_p(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
