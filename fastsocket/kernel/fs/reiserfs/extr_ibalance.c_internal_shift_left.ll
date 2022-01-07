; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_internal_shift_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_internal_shift_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32 }
%struct.buffer_info = type { i64, i32, i32 }
%struct.buffer_head = type { i32 }

@FIRST_TO_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tree_balance*, i32, i32)* @internal_shift_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_shift_left(i32 %0, %struct.tree_balance* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_balance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_info, align 8
  %10 = alloca %struct.buffer_info, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @internal_define_dest_src_infos(i32 %13, %struct.tree_balance* %14, i32 %15, %struct.buffer_info* %9, %struct.buffer_info* %10, i32* %12, %struct.buffer_head** %11)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @B_NR_ITEMS(i32 %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @internal_insert_key(%struct.buffer_info* %9, i32 %22, %struct.buffer_head* %23, i32 %24)
  %26 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @B_NR_ITEMS(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @replace_key(%struct.tree_balance* %37, %struct.buffer_head* %38, i32 %39, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %36, %32
  br label %53

44:                                               ; preds = %19
  %45 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @replace_key(%struct.tree_balance* %45, %struct.buffer_head* %46, i32 %47, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %44, %43
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* @FIRST_TO_LAST, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @internal_move_pointers_items(%struct.buffer_info* %9, %struct.buffer_info* %10, i32 %55, i32 %56, i32 0)
  ret void
}

declare dso_local i32 @internal_define_dest_src_infos(i32, %struct.tree_balance*, i32, %struct.buffer_info*, %struct.buffer_info*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @internal_insert_key(%struct.buffer_info*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @B_NR_ITEMS(i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @internal_move_pointers_items(%struct.buffer_info*, %struct.buffer_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
