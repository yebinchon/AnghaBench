; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_claim_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_claim_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64* }
%struct.TYPE_2__ = type { i32 }

@QUOTA_OK = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_claim_space(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @QUOTA_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i64 @IS_NOQUOTA(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @inode_claim_rsv_space(%struct.inode* %12, i32 %13)
  br label %102

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_2__* @sb_dqopt(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i64 @IS_NOQUOTA(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_2__* @sb_dqopt(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @up_read(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @inode_claim_rsv_space(%struct.inode* %32, i32 %33)
  br label %102

35:                                               ; preds = %15
  %36 = call i32 @spin_lock(i32* @dq_data_lock)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %61, %35
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAXQUOTAS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dquot_claim_reserved_space(i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @inode_claim_rsv_space(%struct.inode* %65, i32 %66)
  %68 = call i32 @spin_unlock(i32* @dq_data_lock)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %92, %64
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MAXQUOTAS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @mark_dquot_dirty(i64 %89)
  br label %91

91:                                               ; preds = %82, %73
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.TYPE_2__* @sb_dqopt(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @up_read(i32* %100)
  br label %102

102:                                              ; preds = %95, %25, %11
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i32 @inode_claim_rsv_space(%struct.inode*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @sb_dqopt(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dquot_claim_reserved_space(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_dquot_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
