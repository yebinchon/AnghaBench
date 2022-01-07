; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_free_buffers_in_tb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_free_buffers_in_tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32**, i32**, i32**, i32**, i32**, i32**, i32 }

@MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*)* @free_buffers_in_tb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffers_in_tb(%struct.tree_balance* %0) #0 {
  %2 = alloca %struct.tree_balance*, align 8
  %3 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %2, align 8
  %4 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %5 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @pathrelse(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %97, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_HEIGHT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %100

12:                                               ; preds = %8
  %13 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %14 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %13, i32 0, i32 5
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @brelse(i32* %19)
  %21 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 4
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @brelse(i32* %27)
  %29 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @brelse(i32* %35)
  %37 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @brelse(i32* %43)
  %45 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %46 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @brelse(i32* %51)
  %53 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %54 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @brelse(i32* %59)
  %61 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %62 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %61, i32 0, i32 5
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* null, i32** %66, align 8
  %67 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 4
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* null, i32** %72, align 8
  %73 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %74 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %73, i32 0, i32 3
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  %79 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 2
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* null, i32** %84, align 8
  %85 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %86 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %85, i32 0, i32 1
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  store i32* null, i32** %90, align 8
  %91 = load %struct.tree_balance*, %struct.tree_balance** %2, align 8
  %92 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %12
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %8

100:                                              ; preds = %8
  ret void
}

declare dso_local i32 @pathrelse(i32) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
