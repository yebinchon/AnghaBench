; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_layout_empty_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_layout_empty_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@size_zero_node = common dso_local global i32 0, align 4
@OPT_Wabi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"offset of empty base %qT may not be ABI-compliant and maychange in a future version of GCC\00", align 1
@ssizetype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @layout_empty_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_empty_base(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BINFO_TYPE(i32 %10)
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @is_empty_class(i32 %12)
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @CLASSTYPE_ALIGN_UNIT(i32 %15)
  %17 = call i32 @ssize_int(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @BINFO_OFFSET(i32 %18)
  %20 = call i32 @integer_zerop(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %3
  %23 = call i64 @abi_version_at_least(i32 2)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @size_zero_node, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @BINFO_OFFSET(i32 %28)
  %30 = call i32 @size_diffop(i32 %27, i32 %29)
  %31 = call i32 @propagate_binfo_offsets(i32 %26, i32 %30)
  br label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @OPT_Wabi, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BINFO_TYPE(i32 %34)
  %36 = call i32 @warning(i32 %33, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @BINFO_OFFSET(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @layout_conflict_p(i32 %39, i32 %41, i32 %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ssizetype, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @convert(i32 %47, i32 %48)
  %50 = call i32 @propagate_binfo_offsets(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %59
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @BINFO_OFFSET(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @layout_conflict_p(i32 %52, i32 %54, i32 %55, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @propagate_binfo_offsets(i32 %60, i32 %61)
  br label %51

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @is_empty_class(i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i32 @CLASSTYPE_ALIGN_UNIT(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @BINFO_OFFSET(i32) #1

declare dso_local i64 @abi_version_at_least(i32) #1

declare dso_local i32 @propagate_binfo_offsets(i32, i32) #1

declare dso_local i32 @size_diffop(i32, i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i64 @layout_conflict_p(i32, i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
