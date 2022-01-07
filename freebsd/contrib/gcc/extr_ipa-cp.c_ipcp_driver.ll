; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"\0AIPA constant propagation start:\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\0AIPA structures before propagation:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0AIPA structures after propagation:\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\0AProfiling info before insert stage:\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\0AProfiling info after insert stage:\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\0AIPA constant propagation end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_driver() #0 {
  %1 = load i64, i64* @dump_file, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @dump_file, align 8
  %5 = call i32 @fprintf(i64 %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 (...) @ipa_nodes_create()
  %8 = call i32 (...) @ipa_edges_create()
  %9 = call i32 (...) @ipcp_init_stage()
  %10 = load i64, i64* @dump_file, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load i64, i64* @dump_file, align 8
  %14 = call i32 @fprintf(i64 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i64, i64* @dump_file, align 8
  %16 = call i32 @ipcp_structures_print(i64 %15)
  br label %17

17:                                               ; preds = %12, %6
  %18 = call i32 (...) @ipcp_iterate_stage()
  %19 = load i64, i64* @dump_file, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @fprintf(i64 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i64, i64* @dump_file, align 8
  %25 = call i32 @ipcp_structures_print(i64 %24)
  %26 = load i64, i64* @dump_file, align 8
  %27 = call i32 @fprintf(i64 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i64, i64* @dump_file, align 8
  %29 = call i32 @ipcp_profile_print(i64 %28)
  br label %30

30:                                               ; preds = %21, %17
  %31 = call i32 (...) @ipcp_insert_stage()
  %32 = load i64, i64* @dump_file, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* @dump_file, align 8
  %36 = call i32 @fprintf(i64 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i64, i64* @dump_file, align 8
  %38 = call i32 @ipcp_profile_print(i64 %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = call i32 (...) @ipa_free()
  %41 = call i32 (...) @ipa_nodes_free()
  %42 = call i32 (...) @ipa_edges_free()
  %43 = load i64, i64* @dump_file, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @dump_file, align 8
  %47 = call i32 @fprintf(i64 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39
  %49 = call i32 @cgraph_remove_unreachable_nodes(i32 1, i32* null)
  ret i32 0
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @ipa_nodes_create(...) #1

declare dso_local i32 @ipa_edges_create(...) #1

declare dso_local i32 @ipcp_init_stage(...) #1

declare dso_local i32 @ipcp_structures_print(i64) #1

declare dso_local i32 @ipcp_iterate_stage(...) #1

declare dso_local i32 @ipcp_profile_print(i64) #1

declare dso_local i32 @ipcp_insert_stage(...) #1

declare dso_local i32 @ipa_free(...) #1

declare dso_local i32 @ipa_nodes_free(...) #1

declare dso_local i32 @ipa_edges_free(...) #1

declare dso_local i32 @cgraph_remove_unreachable_nodes(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
