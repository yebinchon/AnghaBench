; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_calc_nnode_num_from_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_calc_nnode_num_from_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_nnode = type { i32, i32 }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_nnode*, i32)* @calc_nnode_num_from_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_nnode_num_from_parent(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %11 = icmp ne %struct.ubifs_nnode* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %37

13:                                               ; preds = %3
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %18 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %24 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %13, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
