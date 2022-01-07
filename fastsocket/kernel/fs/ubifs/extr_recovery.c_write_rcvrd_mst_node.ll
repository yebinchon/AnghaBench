; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_write_rcvrd_mst_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_write_rcvrd_mst_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_mst_node = type { i32 }

@UBIFS_MST_LNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@UBIFS_MST_RCVRY = common dso_local global i32 0, align 4
@UBIFS_MST_NODE_SZ = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_mst_node*)* @write_rcvrd_mst_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_rcvrd_mst_node(%struct.ubifs_info* %0, %struct.ubifs_mst_node* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_mst_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_mst_node* %1, %struct.ubifs_mst_node** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @UBIFS_MST_LNUM, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @UBIFS_MST_RCVRY, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %4, align 8
  %25 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %26 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %23, %struct.ubifs_mst_node* %24, i32 %25, i32 1)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @UBI_SHORTTERM, align 4
  %34 = call i32 @ubi_leb_change(i32 %29, i32 %30, %struct.ubifs_mst_node* %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @UBI_SHORTTERM, align 4
  %47 = call i32 @ubi_leb_change(i32 %41, i32 %43, %struct.ubifs_mst_node* %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %50, %37
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %4, align 8
  %55 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dbg_rcvry(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_mst_node*, i32, i32) #1

declare dso_local i32 @ubi_leb_change(i32, i32, %struct.ubifs_mst_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
