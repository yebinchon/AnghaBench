; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_check_balance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_check_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64*, %struct.virtual_node*, i64 }
%struct.virtual_node = type { i8*, i32, i32, i32, %struct.item_head*, i8* }
%struct.item_head = type { i32 }

@M_INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vs-8255: ins_ih can not be 0 in insert mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tree_balance*, i32, i32, i32, %struct.item_head*, i8*)* @check_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_balance(i32 %0, %struct.tree_balance* %1, i32 %2, i32 %3, i32 %4, %struct.item_head* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree_balance*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.item_head*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.virtual_node*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.item_head* %5, %struct.item_head** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load %struct.tree_balance*, %struct.tree_balance** %10, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.virtual_node*
  %21 = load %struct.tree_balance*, %struct.tree_balance** %10, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 1
  store %struct.virtual_node* %20, %struct.virtual_node** %22, align 8
  store %struct.virtual_node* %20, %struct.virtual_node** %16, align 8
  %23 = load %struct.tree_balance*, %struct.tree_balance** %10, align 8
  %24 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %23, i32 0, i32 1
  %25 = load %struct.virtual_node*, %struct.virtual_node** %24, align 8
  %26 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %25, i64 1
  %27 = bitcast %struct.virtual_node* %26 to i8*
  %28 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %29 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %32 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %35 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %38 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.item_head*, %struct.item_head** %14, align 8
  %40 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %41 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %40, i32 0, i32 4
  store %struct.item_head* %39, %struct.item_head** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %44 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @M_INSERT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %7
  %49 = load %struct.virtual_node*, %struct.virtual_node** %16, align 8
  %50 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %49, i32 0, i32 4
  %51 = load %struct.item_head*, %struct.item_head** %50, align 8
  %52 = icmp ne %struct.item_head* %51, null
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %7
  %55 = phi i1 [ false, %7 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @RFALSE(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.tree_balance*, %struct.tree_balance** %10, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.tree_balance*, %struct.tree_balance** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ip_check_balance(%struct.tree_balance* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %74

70:                                               ; preds = %54
  %71 = load %struct.tree_balance*, %struct.tree_balance** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @dc_check_balance(%struct.tree_balance* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @ip_check_balance(%struct.tree_balance*, i32) #1

declare dso_local i32 @dc_check_balance(%struct.tree_balance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
