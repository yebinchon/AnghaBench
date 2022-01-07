; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_merge_symbol_lists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_merge_symbol_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { i32, %struct.pending*, i32* }

@free_pendings = common dso_local global %struct.pending* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_symbol_lists(%struct.pending** %0, %struct.pending** %1) #0 {
  %3 = alloca %struct.pending**, align 8
  %4 = alloca %struct.pending**, align 8
  %5 = alloca i32, align 4
  store %struct.pending** %0, %struct.pending*** %3, align 8
  store %struct.pending** %1, %struct.pending*** %4, align 8
  %6 = load %struct.pending**, %struct.pending*** %3, align 8
  %7 = icmp ne %struct.pending** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.pending**, %struct.pending*** %3, align 8
  %10 = load %struct.pending*, %struct.pending** %9, align 8
  %11 = icmp ne %struct.pending* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %46

13:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pending**, %struct.pending*** %3, align 8
  %17 = load %struct.pending*, %struct.pending** %16, align 8
  %18 = getelementptr inbounds %struct.pending, %struct.pending* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.pending**, %struct.pending*** %3, align 8
  %23 = load %struct.pending*, %struct.pending** %22, align 8
  %24 = getelementptr inbounds %struct.pending, %struct.pending* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pending**, %struct.pending*** %4, align 8
  %31 = call i32 @add_symbol_to_list(i32 %29, %struct.pending** %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.pending**, %struct.pending*** %3, align 8
  %37 = load %struct.pending*, %struct.pending** %36, align 8
  %38 = getelementptr inbounds %struct.pending, %struct.pending* %37, i32 0, i32 1
  %39 = load %struct.pending**, %struct.pending*** %4, align 8
  call void @merge_symbol_lists(%struct.pending** %38, %struct.pending** %39)
  %40 = load %struct.pending*, %struct.pending** @free_pendings, align 8
  %41 = load %struct.pending**, %struct.pending*** %3, align 8
  %42 = load %struct.pending*, %struct.pending** %41, align 8
  %43 = getelementptr inbounds %struct.pending, %struct.pending* %42, i32 0, i32 1
  store %struct.pending* %40, %struct.pending** %43, align 8
  %44 = load %struct.pending**, %struct.pending*** %3, align 8
  %45 = load %struct.pending*, %struct.pending** %44, align 8
  store %struct.pending* %45, %struct.pending** @free_pendings, align 8
  br label %46

46:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @add_symbol_to_list(i32, %struct.pending**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
