; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_anode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_anode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anode = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@ANODE_RD_AHEAD = common dso_local global i32 0, align 4
@ANODE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"bad magic on anode %08x\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bad number of nodes in anode %08x\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"bad first_free pointer in anode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.anode* @hpfs_map_anode(%struct.super_block* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.anode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.anode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.TYPE_4__* @hpfs_sb(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @hpfs_chk_sectors(%struct.super_block* %15, i64 %16, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.anode* null, %struct.anode** %4, align 8
  br label %104

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %25 = load i32, i32* @ANODE_RD_AHEAD, align 4
  %26 = call %struct.anode* @hpfs_map_sector(%struct.super_block* %22, i64 %23, %struct.buffer_head** %24, i32 %25)
  store %struct.anode* %26, %struct.anode** %8, align 8
  %27 = icmp ne %struct.anode* %26, null
  br i1 %27, label %28, label %98

28:                                               ; preds = %21
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call %struct.TYPE_4__* @hpfs_sb(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %97

34:                                               ; preds = %28
  %35 = load %struct.anode*, %struct.anode** %8, align 8
  %36 = getelementptr inbounds %struct.anode, %struct.anode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ANODE_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.anode*, %struct.anode** %8, align 8
  %42 = getelementptr inbounds %struct.anode, %struct.anode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %34
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @hpfs_error(%struct.super_block* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %100

50:                                               ; preds = %40
  %51 = load %struct.anode*, %struct.anode** %8, align 8
  %52 = getelementptr inbounds %struct.anode, %struct.anode* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.anode*, %struct.anode** %8, align 8
  %56 = getelementptr inbounds %struct.anode, %struct.anode* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = add i32 %54, %59
  %61 = load %struct.anode*, %struct.anode** %8, align 8
  %62 = getelementptr inbounds %struct.anode, %struct.anode* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 60, i32 40
  %68 = icmp ne i32 %60, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %50
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @hpfs_error(%struct.super_block* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  br label %100

73:                                               ; preds = %50
  %74 = load %struct.anode*, %struct.anode** %8, align 8
  %75 = getelementptr inbounds %struct.anode, %struct.anode* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.anode*, %struct.anode** %8, align 8
  %79 = getelementptr inbounds %struct.anode, %struct.anode* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.anode*, %struct.anode** %8, align 8
  %83 = getelementptr inbounds %struct.anode, %struct.anode* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 8, i32 12
  %89 = mul nsw i32 %81, %88
  %90 = add nsw i32 8, %89
  %91 = icmp ne i32 %77, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %73
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @hpfs_error(%struct.super_block* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  br label %100

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %28
  br label %98

98:                                               ; preds = %97, %21
  %99 = load %struct.anode*, %struct.anode** %8, align 8
  store %struct.anode* %99, %struct.anode** %4, align 8
  br label %104

100:                                              ; preds = %92, %69, %46
  %101 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %101, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  store %struct.anode* null, %struct.anode** %4, align 8
  br label %104

104:                                              ; preds = %100, %98, %19
  %105 = load %struct.anode*, %struct.anode** %4, align 8
  ret %struct.anode* %105
}

declare dso_local %struct.TYPE_4__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i64, i32, i8*) #1

declare dso_local %struct.anode* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
