; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_sb.c_ubifs_write_sb_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_sb.c_ubifs_write_sb_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_sb_node = type { i32 }

@UBIFS_SB_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_SB_LNUM = common dso_local global i32 0, align 4
@UBI_LONGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_write_sb_node(%struct.ubifs_info* %0, %struct.ubifs_sb_node* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_sb_node*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_sb_node* %1, %struct.ubifs_sb_node** %4, align 8
  %6 = load i32, i32* @UBIFS_SB_NODE_SZ, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ALIGN(i32 %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %13 = load i32, i32* @UBIFS_SB_NODE_SZ, align 4
  %14 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %11, %struct.ubifs_sb_node* %12, i32 %13, i32 1)
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = load i32, i32* @UBIFS_SB_LNUM, align 4
  %17 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @UBI_LONGTERM, align 4
  %20 = call i32 @ubifs_leb_change(%struct.ubifs_info* %15, i32 %16, %struct.ubifs_sb_node* %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_sb_node*, i32, i32) #1

declare dso_local i32 @ubifs_leb_change(%struct.ubifs_info*, i32, %struct.ubifs_sb_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
