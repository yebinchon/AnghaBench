; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_nonstandard_alias_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_nonstandard_alias_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@NO_ESCAPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @nonstandard_alias_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonstandard_alias_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @get_otype(i32 %10, i32 1)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_otype(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @get_ssa_base(i32 %15)
  %17 = call %struct.TYPE_2__* @var_ann(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NO_ESCAPE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @struct_class_union_p(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @struct_class_union_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i32 0, i32* %4, align 4
  br label %50

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @struct_field_tag_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @find_first_artificial_name(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @find_first_artificial_name(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %50

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @nonstandard_alias_types_p(i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %45, %36, %31, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @get_otype(i32, i32) #1

declare dso_local %struct.TYPE_2__* @var_ann(i32) #1

declare dso_local i32 @get_ssa_base(i32) #1

declare dso_local i64 @struct_class_union_p(i32) #1

declare dso_local i64 @struct_field_tag_p(i32) #1

declare dso_local i64 @find_first_artificial_name(i32) #1

declare dso_local i32 @nonstandard_alias_types_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
