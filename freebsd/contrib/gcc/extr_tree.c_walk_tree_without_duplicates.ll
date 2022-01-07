; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_walk_tree_without_duplicates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_walk_tree_without_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_set_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_tree_without_duplicates(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pointer_set_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = call %struct.pointer_set_t* (...) @pointer_set_create()
  store %struct.pointer_set_t* %9, %struct.pointer_set_t** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.pointer_set_t*, %struct.pointer_set_t** %8, align 8
  %14 = call i32 @walk_tree(i32* %10, i32 %11, i8* %12, %struct.pointer_set_t* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.pointer_set_t*, %struct.pointer_set_t** %8, align 8
  %16 = call i32 @pointer_set_destroy(%struct.pointer_set_t* %15)
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare dso_local %struct.pointer_set_t* @pointer_set_create(...) #1

declare dso_local i32 @walk_tree(i32*, i32, i8*, %struct.pointer_set_t*) #1

declare dso_local i32 @pointer_set_destroy(%struct.pointer_set_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
