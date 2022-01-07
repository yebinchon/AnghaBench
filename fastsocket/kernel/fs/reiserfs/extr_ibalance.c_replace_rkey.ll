; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_replace_rkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_replace_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32**, i32*, i32** }
%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"R[h](%p) and CFR[h](%p) must exist in replace_rkey\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"R[h] can not be empty if it exists (item number=%d)\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, i32, %struct.item_head*)* @replace_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_rkey(%struct.tree_balance* %0, i32 %1, %struct.item_head* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.item_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.item_head* %2, %struct.item_head** %6, align 8
  %7 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %8 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %7, i32 0, i32 2
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
  %28 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %36 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %34, i32* %41)
  %43 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @B_NR_ITEMS(i32* %49)
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %54 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @B_NR_ITEMS(i32* %59)
  %61 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %63 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %70 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @B_N_PDELIM_KEY(i32* %68, i32 %75)
  %77 = load %struct.item_head*, %struct.item_head** %6, align 8
  %78 = load i32, i32* @KEY_SIZE, align 4
  %79 = call i32 @memcpy(i32 %76, %struct.item_head* %77, i32 %78)
  %80 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %81 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %82 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @do_balance_mark_internal_dirty(%struct.tree_balance* %80, i32* %87, i32 0)
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, i32, ...) #1

declare dso_local i32 @B_NR_ITEMS(i32*) #1

declare dso_local i32 @memcpy(i32, %struct.item_head*, i32) #1

declare dso_local i32 @B_N_PDELIM_KEY(i32*, i32) #1

declare dso_local i32 @do_balance_mark_internal_dirty(%struct.tree_balance*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
