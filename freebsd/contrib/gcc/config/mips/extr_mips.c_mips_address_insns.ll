; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_address_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_address_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_address_info = type { i32, i32, i32, i32 }

@BLKmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_address_insns(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_address_info, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BLKmode, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_MODE_SIZE(i32 %13)
  %15 = load i32, i32* @UNITS_PER_WORD, align 4
  %16 = add nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @UNITS_PER_WORD, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @mips_classify_address(%struct.mips_address_info* %6, i32 %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %62 [
    i32 129, label %28
    i32 130, label %44
    i32 131, label %54
    i32 128, label %56
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @TARGET_MIPS16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mips16_unextended_reference_p(i32 %32, i32 %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %25
  %45 = load i32, i32* @TARGET_MIPS16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 2
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %25
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %25
  %57 = load i32, i32* %7, align 4
  %58 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mips_symbol_insns(i32 %59)
  %61 = mul nsw i32 %57, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %25
  br label %63

63:                                               ; preds = %62, %20
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56, %54, %52, %42, %39
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @mips_classify_address(%struct.mips_address_info*, i32, i32, i32) #1

declare dso_local i32 @mips16_unextended_reference_p(i32, i32, i32) #1

declare dso_local i32 @mips_symbol_insns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
