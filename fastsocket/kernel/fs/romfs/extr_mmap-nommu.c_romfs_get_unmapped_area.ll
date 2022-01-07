; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/romfs/extr_mmap-nommu.c_romfs_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/romfs/extr_mmap-nommu.c_romfs_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i64 (%struct.mtd_info*, i64, i64, i64)*, i64 }
%struct.TYPE_6__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @romfs_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @romfs_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.mtd_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.mtd_info*, %struct.mtd_info** %24, align 8
  store %struct.mtd_info* %25, %struct.mtd_info** %13, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %27 = icmp ne %struct.mtd_info* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %106

29:                                               ; preds = %5
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call i64 @i_size_read(%struct.inode* %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %44, %45
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %38, %29
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %6, align 8
  br label %109

51:                                               ; preds = %42
  %52 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i64 (%struct.mtd_info*, i64, i64, i64)*, i64 (%struct.mtd_info*, i64, i64, i64)** %53, align 8
  %55 = icmp ne i64 (%struct.mtd_info*, i64, i64, i64)* %54, null
  br i1 %55, label %56, label %105

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %6, align 8
  br label %109

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  %75 = icmp uge i64 %69, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68, %62
  %77 = load i64, i64* @EINVAL, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %6, align 8
  br label %109

79:                                               ; preds = %68
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = call %struct.TYPE_6__* @ROMFS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = sub i64 %89, %90
  %92 = icmp ugt i64 %86, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i64, i64* @EINVAL, align 8
  %95 = sub nsw i64 0, %94
  store i64 %95, i64* %6, align 8
  br label %109

96:                                               ; preds = %79
  %97 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 0
  %99 = load i64 (%struct.mtd_info*, i64, i64, i64)*, i64 (%struct.mtd_info*, i64, i64, i64)** %98, align 8
  %100 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 %99(%struct.mtd_info* %100, i64 %101, i64 %102, i64 %103)
  store i64 %104, i64* %6, align 8
  br label %109

105:                                              ; preds = %51
  br label %106

106:                                              ; preds = %105, %28
  %107 = load i64, i64* @ENOSYS, align 8
  %108 = sub nsw i64 0, %107
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %106, %96, %93, %76, %59, %48
  %110 = load i64, i64* %6, align 8
  ret i64 %110
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ROMFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
