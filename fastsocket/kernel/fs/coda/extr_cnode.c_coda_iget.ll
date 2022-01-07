; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cnode.c_coda_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cnode.c_coda_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.super_block = type { i32 }
%struct.CodaFid = type { i32 }
%struct.coda_vattr = type { i32 }
%struct.coda_inode_info = type { i64 }

@coda_test_inode = common dso_local global i32 0, align 4
@coda_set_inode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @coda_iget(%struct.super_block* %0, %struct.CodaFid* %1, %struct.coda_vattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.CodaFid*, align 8
  %7 = alloca %struct.coda_vattr*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.coda_inode_info*, align 8
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %6, align 8
  store %struct.coda_vattr* %2, %struct.coda_vattr** %7, align 8
  %11 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %12 = call i64 @coda_f2i(%struct.CodaFid* %11)
  store i64 %12, i64* %10, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i32, i32* @coda_test_inode, align 4
  %16 = load i32, i32* @coda_set_inode, align 4
  %17 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %18 = call %struct.inode* @iget5_locked(%struct.super_block* %13, i64 %14, i32 %15, i32 %16, %struct.CodaFid* %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %4, align 8
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I_NEW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call %struct.coda_inode_info* @ITOC(%struct.inode* %33)
  store %struct.coda_inode_info* %34, %struct.coda_inode_info** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.coda_inode_info*, %struct.coda_inode_info** %9, align 8
  %39 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @unlock_new_inode(%struct.inode* %40)
  br label %42

42:                                               ; preds = %32, %25
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load %struct.coda_vattr*, %struct.coda_vattr** %7, align 8
  %45 = call i32 @coda_fill_inode(%struct.inode* %43, %struct.coda_vattr* %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %46, %struct.inode** %4, align 8
  br label %47

47:                                               ; preds = %42, %21
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %48
}

declare dso_local i64 @coda_f2i(%struct.CodaFid*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.CodaFid*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @coda_fill_inode(%struct.inode*, %struct.coda_vattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
