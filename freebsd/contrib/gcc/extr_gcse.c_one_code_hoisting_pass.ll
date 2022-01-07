; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_one_code_hoisting_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_one_code_hoisting_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@max_cuid = common dso_local global i32 0, align 4
@expr_hash_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Code Hosting Expressions\00", align 1
@last_basic_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @one_code_hoisting_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_code_hoisting_pass() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @max_cuid, align 4
  %3 = call i32 @alloc_hash_table(i32 %2, %struct.TYPE_6__* @expr_hash_table, i32 0)
  %4 = call i32 @compute_hash_table(%struct.TYPE_6__* @expr_hash_table)
  %5 = load i64, i64* @dump_file, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @dump_file, align 8
  %9 = call i32 @dump_hash_table(i64 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* @expr_hash_table)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expr_hash_table, i32 0, i32 0), align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @last_basic_block, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expr_hash_table, i32 0, i32 0), align 8
  %16 = call i32 @alloc_code_hoist_mem(i32 %14, i64 %15)
  %17 = call i32 (...) @compute_code_hoist_data()
  %18 = call i32 (...) @hoist_code()
  %19 = call i32 (...) @free_code_hoist_mem()
  br label %20

20:                                               ; preds = %13, %10
  %21 = call i32 @free_hash_table(%struct.TYPE_6__* @expr_hash_table)
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @alloc_hash_table(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @compute_hash_table(%struct.TYPE_6__*) #1

declare dso_local i32 @dump_hash_table(i64, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @alloc_code_hoist_mem(i32, i64) #1

declare dso_local i32 @compute_code_hoist_data(...) #1

declare dso_local i32 @hoist_code(...) #1

declare dso_local i32 @free_code_hoist_mem(...) #1

declare dso_local i32 @free_hash_table(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
