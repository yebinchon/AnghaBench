; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_propagate_extensions_to_uses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_propagate_extensions_to_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"* Phase 1: Propagate extensions to uses.  *\0A\00", align 1
@uses_num = common dso_local global i32 0, align 4
@df = common dso_local global i32 0, align 4
@def_entry = common dso_local global i32 0, align 4
@use_entry = common dso_local global i32 0, align 4
@see_update_leader_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @see_propagate_extensions_to_uses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_propagate_extensions_to_uses() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* @dump_file, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @dump_file, align 8
  %9 = call i32 @fprintf(i64 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @see_update_defs_relevancy()
  %12 = call i32 (...) @see_update_uses_relevancy()
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %26, %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @uses_num, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* @df, align 4
  %19 = load i32, i32* @df, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @DF_USES_GET(i32 %19, i32 %20)
  %22 = load i32, i32* @def_entry, align 4
  %23 = load i32, i32* @use_entry, align 4
  %24 = load i32, i32* @see_update_leader_extra_info, align 4
  %25 = call i32 @union_defs(i32 %18, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %2, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %13

29:                                               ; preds = %13
  %30 = call i32 (...) @see_handle_relevant_uses()
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %48

34:                                               ; preds = %29
  %35 = call i32 (...) @see_handle_relevant_defs()
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %45, %38, %33
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @see_update_defs_relevancy(...) #1

declare dso_local i32 @see_update_uses_relevancy(...) #1

declare dso_local i32 @union_defs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DF_USES_GET(i32, i32) #1

declare dso_local i32 @see_handle_relevant_uses(...) #1

declare dso_local i32 @see_handle_relevant_defs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
