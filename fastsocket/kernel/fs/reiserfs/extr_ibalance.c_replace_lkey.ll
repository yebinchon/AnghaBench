; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_replace_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_replace_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32**, i32*, i32, i32** }
%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"L[h](%p) and CFL[h](%p) must exist in replace_lkey\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, i32, %struct.item_head*)* @replace_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_lkey(%struct.tree_balance* %0, i32 %1, %struct.item_head* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.item_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.item_head* %2, %struct.item_head** %6, align 8
  %7 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %8 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %7, i32 0, i32 3
  %9 = load i32**, i32*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br label %24

24:                                               ; preds = %15, %3
  %25 = phi i1 [ true, %3 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %28 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %35 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @RFALSE(i32 %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %33, i32* %40)
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PATH_H_PBUFFER(i32 %44, i32 %45)
  %47 = call i64 @B_NR_ITEMS(i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  br label %78

50:                                               ; preds = %24
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @B_N_PDELIM_KEY(i32* %57, i32 %64)
  %66 = load %struct.item_head*, %struct.item_head** %6, align 8
  %67 = load i32, i32* @KEY_SIZE, align 4
  %68 = call i32 @memcpy(i32 %65, %struct.item_head* %66, i32 %67)
  %69 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %70 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @do_balance_mark_internal_dirty(%struct.tree_balance* %69, i32* %76, i32 0)
  br label %78

78:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, i32*, i32*) #1

declare dso_local i64 @B_NR_ITEMS(i32) #1

declare dso_local i32 @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.item_head*, i32) #1

declare dso_local i32 @B_N_PDELIM_KEY(i32*, i32) #1

declare dso_local i32 @do_balance_mark_internal_dirty(%struct.tree_balance*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
