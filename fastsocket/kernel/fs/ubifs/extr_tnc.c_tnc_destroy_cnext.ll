; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_destroy_cnext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_destroy_cnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i32, %struct.ubifs_znode* }

@COMMIT_BROKEN = common dso_local global i64 0, align 8
@OBSOLETE_ZNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @tnc_destroy_cnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tnc_destroy_cnext(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 1
  %7 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %8 = icmp ne %struct.ubifs_znode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @COMMIT_BROKEN, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubifs_assert(i32 %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 1
  %20 = load %struct.ubifs_znode*, %struct.ubifs_znode** %19, align 8
  store %struct.ubifs_znode* %20, %struct.ubifs_znode** %3, align 8
  br label %21

21:                                               ; preds = %44, %10
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %22, %struct.ubifs_znode** %4, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %23, i32 0, i32 1
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %24, align 8
  store %struct.ubifs_znode* %25, %struct.ubifs_znode** %3, align 8
  %26 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %33 = call i32 @kfree(%struct.ubifs_znode* %32)
  br label %34

34:                                               ; preds = %31, %21
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %37 = icmp ne %struct.ubifs_znode* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 1
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %41, align 8
  %43 = icmp ne %struct.ubifs_znode* %39, %42
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi i1 [ false, %35 ], [ %43, %38 ]
  br i1 %45, label %21, label %46

46:                                               ; preds = %9, %44
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
