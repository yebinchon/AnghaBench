; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_next_nnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_next_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_nnode = type { i32, %struct.TYPE_2__*, %struct.ubifs_nnode* }
%struct.TYPE_2__ = type { %struct.ubifs_nnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, %struct.ubifs_nnode*, i32*)* @next_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @next_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32* %2) #0 {
  %4 = alloca %struct.ubifs_nnode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %13, i32 0, i32 2
  %15 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %14, align 8
  store %struct.ubifs_nnode* %15, %struct.ubifs_nnode** %8, align 8
  %16 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %17 = icmp ne %struct.ubifs_nnode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.ubifs_nnode* null, %struct.ubifs_nnode** %4, align 8
  br label %114

19:                                               ; preds = %3
  %20 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  store %struct.ubifs_nnode* %30, %struct.ubifs_nnode** %4, align 8
  br label %114

31:                                               ; preds = %19
  %32 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %33 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %53, %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %42 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %47, align 8
  store %struct.ubifs_nnode* %48, %struct.ubifs_nnode** %6, align 8
  %49 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %50 = icmp ne %struct.ubifs_nnode* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %36

56:                                               ; preds = %51, %36
  %57 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %58 = icmp ne %struct.ubifs_nnode* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  store %struct.ubifs_nnode* %63, %struct.ubifs_nnode** %4, align 8
  br label %114

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %109, %64
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %81 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %86, align 8
  %88 = icmp ne %struct.ubifs_nnode* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  store i32 1, i32* %12, align 4
  %90 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %91 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %96, align 8
  store %struct.ubifs_nnode* %97, %struct.ubifs_nnode** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %104

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %75

104:                                              ; preds = %89, %75
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %112

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %68

112:                                              ; preds = %107, %68
  %113 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  store %struct.ubifs_nnode* %113, %struct.ubifs_nnode** %4, align 8
  br label %114

114:                                              ; preds = %112, %59, %26, %18
  %115 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  ret %struct.ubifs_nnode* %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
