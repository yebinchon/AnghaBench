; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"see_pre_extension_hash:\0A\00", align 1
@see_pre_extension_hash = common dso_local global i64 0, align 8
@see_print_pre_extension_expr = common dso_local global i32 0, align 4
@last_bb = common dso_local global i32 0, align 4
@see_bb_hash_ar = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Searching register properties in bb %d\0A\00", align 1
@see_print_register_properties = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @see_initialize_data_structures()
  %4 = call i32 (...) @see_propagate_extensions_to_uses()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %0
  %8 = call i32 (...) @init_recog()
  %9 = call i32 (...) @see_merge_and_eliminate_extensions()
  %10 = call i32 (...) @see_execute_LCM()
  %11 = call i32 (...) @see_commit_changes()
  %12 = load i64, i64* @dump_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %7
  %15 = load i64, i64* @dump_file, align 8
  %16 = call i32 (i64, i8*, ...) @fprintf(i64 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @see_pre_extension_hash, align 8
  %18 = load i32, i32* @see_print_pre_extension_expr, align 4
  %19 = call i32 @htab_traverse(i64 %17, i32 %18, i32* null)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %43, %14
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @last_bb, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i64*, i64** @see_bb_hash_ar, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i64, i64* @dump_file, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i64, i8*, ...) @fprintf(i64 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i64*, i64** @see_bb_hash_ar, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @see_print_register_properties, align 4
  %41 = call i32 @htab_traverse(i64 %39, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %31, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %20

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %7
  br label %48

48:                                               ; preds = %47, %0
  %49 = call i32 (...) @see_free_data_structures()
  ret void
}

declare dso_local i32 @see_initialize_data_structures(...) #1

declare dso_local i32 @see_propagate_extensions_to_uses(...) #1

declare dso_local i32 @init_recog(...) #1

declare dso_local i32 @see_merge_and_eliminate_extensions(...) #1

declare dso_local i32 @see_execute_LCM(...) #1

declare dso_local i32 @see_commit_changes(...) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @htab_traverse(i64, i32, i32*) #1

declare dso_local i32 @see_free_data_structures(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
