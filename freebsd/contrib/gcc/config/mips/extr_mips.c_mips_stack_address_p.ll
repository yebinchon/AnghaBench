; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_stack_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_stack_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_address_info = type { i64, i64 }

@ADDRESS_REG = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_stack_address_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips_address_info, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @mips_classify_address(%struct.mips_address_info* %5, i32 %6, i32 %7, i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ADDRESS_REG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %5, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @stack_pointer_rtx, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %15, %10, %2
  %21 = phi i1 [ false, %10 ], [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @mips_classify_address(%struct.mips_address_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
