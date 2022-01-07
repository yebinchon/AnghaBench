; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_first_nnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_first_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_nnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_nnode* }
%struct.ubifs_info = type { i32, %struct.ubifs_nnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, i32*)* @first_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @first_nnode(%struct.ubifs_info* %0, i32* %1) #0 {
  %3 = alloca %struct.ubifs_nnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 1
  %12 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  store %struct.ubifs_nnode* %12, %struct.ubifs_nnode** %6, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %15 = icmp ne %struct.ubifs_nnode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.ubifs_nnode* null, %struct.ubifs_nnode** %3, align 8
  br label %64

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %36, align 8
  %38 = icmp ne %struct.ubifs_nnode* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  %40 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %46, align 8
  store %struct.ubifs_nnode* %47, %struct.ubifs_nnode** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %54

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %25

54:                                               ; preds = %39, %25
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %62

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %18

62:                                               ; preds = %57, %18
  %63 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  store %struct.ubifs_nnode* %63, %struct.ubifs_nnode** %3, align 8
  br label %64

64:                                               ; preds = %62, %16
  %65 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  ret %struct.ubifs_nnode* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
