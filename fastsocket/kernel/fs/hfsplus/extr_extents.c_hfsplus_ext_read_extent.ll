; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_read_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_read_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hfs_find_data = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @hfsplus_ext_read_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_ext_read_extent(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfs_find_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call { i64, i64 } @HFSPLUS_I(%struct.inode* %13)
  %15 = bitcast %struct.TYPE_4__* %8 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i64 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i64 } %14, 1
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %12, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call { i64, i64 } @HFSPLUS_I(%struct.inode* %25)
  %27 = bitcast %struct.TYPE_4__* %9 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = extractvalue { i64, i64 } %26, 0
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = extractvalue { i64, i64 } %26, 1
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call { i64, i64 } @HFSPLUS_I(%struct.inode* %34)
  %36 = bitcast %struct.TYPE_4__* %10 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %35, 1
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %33, %42
  %44 = icmp slt i64 %24, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %60

46:                                               ; preds = %23, %2
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HFSPLUS_SB(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hfs_find_init(i32 %53, %struct.hfs_find_data* %6)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data* %6, %struct.inode* %55, i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = call i32 @hfs_find_exit(%struct.hfs_find_data* %6)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %46, %45
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local { i64, i64 } @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(i32) #1

declare dso_local i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data*, %struct.inode*, i64) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
