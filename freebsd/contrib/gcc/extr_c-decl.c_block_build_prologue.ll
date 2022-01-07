; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_block_build_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_block_build_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_sema_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c".block_descriptor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @block_build_prologue(%struct.block_sema_info* %0) #0 {
  %2 = alloca %struct.block_sema_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.block_sema_info* %0, %struct.block_sema_info** %2, align 8
  %5 = call i32 @get_identifier(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 @lookup_name(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @gcc_assert(i64 %7)
  %9 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %10 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @TREE_VALUE(i64 %17)
  %19 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %20 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @declare_block_prologue_local_vars(i64 %16, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @TREE_CHAIN(i64 %24)
  store i64 %25, i64* %3, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %28 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %41, %26
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @TREE_VALUE(i64 %35)
  %37 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %38 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @declare_block_prologue_local_vars(i64 %34, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @TREE_CHAIN(i64 %42)
  store i64 %43, i64* %3, align 8
  br label %30

44:                                               ; preds = %30
  ret void
}

declare dso_local i64 @lookup_name(i32) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @declare_block_prologue_local_vars(i64, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
