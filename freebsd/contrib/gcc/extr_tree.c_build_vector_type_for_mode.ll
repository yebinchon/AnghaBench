; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_vector_type_for_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_vector_type_for_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_vector_type_for_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @GET_MODE_CLASS(i32 %6)
  switch i32 %7, label %27 [
    i32 128, label %8
    i32 129, label %8
    i32 130, label %11
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @GET_MODE_NUNITS(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_MODE_BITSIZE(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TYPE_SIZE(i32 %14)
  %16 = call i32 @TREE_INT_CST_LOW(i32 %15)
  %17 = srem i32 %13, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GET_MODE_BITSIZE(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TYPE_SIZE(i32 %23)
  %25 = call i32 @TREE_INT_CST_LOW(i32 %24)
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @gcc_unreachable()
  br label %29

29:                                               ; preds = %27, %11, %8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @make_vector_type(i32 %30, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @make_vector_type(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
