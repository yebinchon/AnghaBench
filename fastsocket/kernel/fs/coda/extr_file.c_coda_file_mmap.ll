; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_file_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32*, i32 }
%struct.vm_area_struct = type { i32 }
%struct.coda_file_info = type { i64, i32, %struct.file* }
%struct.coda_inode_info = type { i32 }

@CODA_MAGIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @coda_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.coda_file_info*, align 8
  %7 = alloca %struct.coda_inode_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.coda_file_info* @CODA_FTOC(%struct.file* %11)
  store %struct.coda_file_info* %12, %struct.coda_file_info** %6, align 8
  %13 = load %struct.coda_file_info*, %struct.coda_file_info** %6, align 8
  %14 = icmp ne %struct.coda_file_info* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.coda_file_info*, %struct.coda_file_info** %6, align 8
  %17 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CODA_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.coda_file_info*, %struct.coda_file_info** %6, align 8
  %26 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %25, i32 0, i32 2
  %27 = load %struct.file*, %struct.file** %26, align 8
  store %struct.file* %27, %struct.file** %8, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.file*, %struct.file** %8, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.file*, %struct.vm_area_struct*)**
  %38 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %37, align 8
  %39 = icmp ne i32 (%struct.file*, %struct.vm_area_struct*)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32, %21
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %105

43:                                               ; preds = %32
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.inode*, %struct.inode** %48, align 8
  store %struct.inode* %49, %struct.inode** %9, align 8
  %50 = load %struct.file*, %struct.file** %8, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.inode*, %struct.inode** %54, align 8
  store %struct.inode* %55, %struct.inode** %10, align 8
  %56 = load %struct.file*, %struct.file** %8, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = icmp eq i32* %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %43
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  br label %85

73:                                               ; preds = %43
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %105

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call %struct.coda_inode_info* @ITOC(%struct.inode* %86)
  store %struct.coda_inode_info* %87, %struct.coda_inode_info** %7, align 8
  %88 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %89 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.coda_file_info*, %struct.coda_file_info** %6, align 8
  %93 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.file*, %struct.file** %8, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = bitcast {}** %99 to i32 (%struct.file*, %struct.vm_area_struct*)**
  %101 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %100, align 8
  %102 = load %struct.file*, %struct.file** %8, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %104 = call i32 %101(%struct.file* %102, %struct.vm_area_struct* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %85, %81, %40
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.coda_file_info* @CODA_FTOC(%struct.file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
