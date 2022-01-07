; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_merge_and_eliminate_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_merge_and_eliminate_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"* Phase 2: Merge and eliminate locally redundant extensions.  *\0A\00", align 1
@last_bb = common dso_local global i32 0, align 4
@see_bb_splay_ar = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Handling references for bb %d\0A\00", align 1
@see_handle_extensions_for_one_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_merge_and_eliminate_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_merge_and_eliminate_extensions() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @dump_file, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @dump_file, align 8
  %6 = call i32 (i64, i8*, ...) @fprintf(i64 %5, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %35, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @last_bb, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i64*, i64** @see_bb_splay_ar, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = load i64, i64* @dump_file, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* @dump_file, align 8
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (i64, i8*, ...) @fprintf(i64 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i64*, i64** @see_bb_splay_ar, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @see_handle_extensions_for_one_ref, align 4
  %33 = call i32 @splay_tree_foreach(i64 %31, i32 %32, i32* null)
  br label %34

34:                                               ; preds = %26, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %8

38:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @splay_tree_foreach(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
