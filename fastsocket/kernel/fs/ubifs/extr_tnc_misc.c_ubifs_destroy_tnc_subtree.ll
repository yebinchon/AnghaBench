; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_destroy_tnc_subtree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_destroy_tnc_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_znode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_destroy_tnc_subtree(%struct.ubifs_znode* %0) #0 {
  %2 = alloca %struct.ubifs_znode*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %2, align 8
  %6 = load %struct.ubifs_znode*, %struct.ubifs_znode** %2, align 8
  %7 = call %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode* %6)
  store %struct.ubifs_znode* %7, %struct.ubifs_znode** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %9 = call i32 @ubifs_assert(%struct.ubifs_znode* %8)
  br label %10

10:                                               ; preds = %1, %76
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %58, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %11
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %24, align 8
  %26 = icmp ne %struct.ubifs_znode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %58

28:                                               ; preds = %17
  %29 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %40, align 8
  %42 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %44, %33, %28
  %48 = call i32 (...) @cond_resched()
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %50 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %55, align 8
  %57 = call i32 @kfree(%struct.ubifs_znode* %56)
  br label %58

58:                                               ; preds = %47, %27
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %11

61:                                               ; preds = %11
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %2, align 8
  %64 = icmp eq %struct.ubifs_znode* %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %67 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %74 = call i32 @kfree(%struct.ubifs_znode* %73)
  %75 = load i64, i64* %4, align 8
  ret i64 %75

76:                                               ; preds = %61
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %78 = call %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_znode* %77)
  store %struct.ubifs_znode* %78, %struct.ubifs_znode** %3, align 8
  br label %10
}

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
