; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_expand_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_expand_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_expand_decl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @VAR_DECL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_STATIC(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @anon_aggr_type_p(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @emit_local_var(i32 %18)
  br label %26

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NULL_TREE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @DECL_ANON_UNION_ELEMS(i32 %23)
  %25 = call i32 @expand_anon_union_decl(i32 %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  br label %28

27:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i32 @anon_aggr_type_p(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @emit_local_var(i32) #1

declare dso_local i32 @expand_anon_union_decl(i32, i32, i32) #1

declare dso_local i32 @DECL_ANON_UNION_ELEMS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
