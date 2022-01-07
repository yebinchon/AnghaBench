; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_ubifs_lpt_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_ubifs_lpt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32*, i32*, i32*, %struct.TYPE_6__, %struct.TYPE_5__*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.ubifs_nnode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPROPS_HEAP_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_lpt_free(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = call i32 @free_obsolete_cnodes(%struct.ubifs_info* %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @vfree(i32* %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 7
  store i32* null, i32** %15, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @vfree(i32* %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 6
  store i32* null, i32** %21, align 8
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %95

31:                                               ; preds = %2
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = call %struct.ubifs_nnode* @first_nnode(%struct.ubifs_info* %32, i32* %7)
  store %struct.ubifs_nnode* %33, %struct.ubifs_nnode** %5, align 8
  br label %34

34:                                               ; preds = %55, %31
  %35 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %36 = icmp ne %struct.ubifs_nnode* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %44 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @kfree(i32* %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %57 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %58 = call %struct.ubifs_nnode* @next_nnode(%struct.ubifs_info* %56, %struct.ubifs_nnode* %57, i32* %7)
  store %struct.ubifs_nnode* %58, %struct.ubifs_nnode** %5, align 8
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @LPROPS_HEAP_CNT, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @vfree(i32* %89)
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @kfree(i32* %93)
  br label %95

95:                                               ; preds = %77, %30
  ret void
}

declare dso_local i32 @free_obsolete_cnodes(%struct.ubifs_info*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.ubifs_nnode* @first_nnode(%struct.ubifs_info*, i32*) #1

declare dso_local %struct.ubifs_nnode* @next_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
