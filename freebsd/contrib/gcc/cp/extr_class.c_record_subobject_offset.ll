; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_record_subobject_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_record_subobject_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @record_subobject_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_subobject_offset(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @is_empty_class(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = call %struct.TYPE_4__* @splay_tree_lookup(i32 %14, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* @NULL_TREE, align 8
  %25 = call %struct.TYPE_4__* @splay_tree_insert(i32 %21, i32 %23, i64 %24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %8, align 8
  br label %26

26:                                               ; preds = %20, %13
  %27 = load i64, i64* @NULL_TREE, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @tree_cons(i64 %27, i64 %28, i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @is_empty_class(i64) #1

declare dso_local %struct.TYPE_4__* @splay_tree_lookup(i32, i32) #1

declare dso_local %struct.TYPE_4__* @splay_tree_insert(i32, i32, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
