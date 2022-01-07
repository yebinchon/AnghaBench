; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_lookup_stmt_eh_region_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_lookup_stmt_eh_region_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32 }
%struct.throw_stmt_node = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_stmt_eh_region_fn(%struct.function* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.throw_stmt_node*, align 8
  %7 = alloca %struct.throw_stmt_node, align 4
  store %struct.function* %0, %struct.function** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.function*, %struct.function** %4, align 8
  %9 = call i32 @get_eh_throw_stmt_table(%struct.function* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.throw_stmt_node, %struct.throw_stmt_node* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.function*, %struct.function** %4, align 8
  %16 = call i32 @get_eh_throw_stmt_table(%struct.function* %15)
  %17 = call i64 @htab_find(i32 %16, %struct.throw_stmt_node* %7)
  %18 = inttoptr i64 %17 to %struct.throw_stmt_node*
  store %struct.throw_stmt_node* %18, %struct.throw_stmt_node** %6, align 8
  %19 = load %struct.throw_stmt_node*, %struct.throw_stmt_node** %6, align 8
  %20 = icmp ne %struct.throw_stmt_node* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.throw_stmt_node*, %struct.throw_stmt_node** %6, align 8
  %23 = getelementptr inbounds %struct.throw_stmt_node, %struct.throw_stmt_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ -1, %25 ]
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @get_eh_throw_stmt_table(%struct.function*) #1

declare dso_local i64 @htab_find(i32, %struct.throw_stmt_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
