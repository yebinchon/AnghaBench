; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.super_block = type { i32, i32 }
%struct.object_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@adfs_dir_inode_operations = common dso_local global i32 0, align 4
@adfs_dir_operations = common dso_local global i32 0, align 4
@adfs_file_inode_operations = common dso_local global i32 0, align 4
@adfs_file_operations = common dso_local global i32 0, align 4
@adfs_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @adfs_iget(%struct.super_block* %0, %struct.object_info* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.object_info*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.object_info* %1, %struct.object_info** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.inode* @new_inode(%struct.super_block* %6)
  store %struct.inode* %7, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %137

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.TYPE_5__* @ADFS_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call %struct.TYPE_5__* @ADFS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 4
  %24 = load %struct.object_info*, %struct.object_info** %4, align 8
  %25 = getelementptr inbounds %struct.object_info, %struct.object_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load %struct.object_info*, %struct.object_info** %4, align 8
  %30 = getelementptr inbounds %struct.object_info, %struct.object_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  store i32 2, i32* %35, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.super_block*, %struct.super_block** %3, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %43, %46
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.object_info*, %struct.object_info** %4, align 8
  %51 = getelementptr inbounds %struct.object_info, %struct.object_info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load %struct.object_info*, %struct.object_info** %4, align 8
  %57 = getelementptr inbounds %struct.object_info, %struct.object_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.object_info*, %struct.object_info** %4, align 8
  %63 = getelementptr inbounds %struct.object_info, %struct.object_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load %struct.object_info*, %struct.object_info** %4, align 8
  %69 = getelementptr inbounds %struct.object_info, %struct.object_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load %struct.object_info*, %struct.object_info** %4, align 8
  %75 = getelementptr inbounds %struct.object_info, %struct.object_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -1048576
  %78 = icmp eq i32 %77, -1048576
  %79 = zext i1 %78 to i32
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.super_block*, %struct.super_block** %3, align 8
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = call i32 @adfs_atts2mode(%struct.super_block* %83, %struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 7
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @adfs_adfs2unix_time(i32* %89, %struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @S_ISDIR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %11
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 5
  store i32* @adfs_dir_inode_operations, i32** %109, align 8
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 4
  store i32* @adfs_dir_operations, i32** %111, align 8
  br label %134

112:                                              ; preds = %11
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @S_ISREG(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 5
  store i32* @adfs_file_inode_operations, i32** %120, align 8
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 4
  store i32* @adfs_file_operations, i32** %122, align 8
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32* @adfs_aops, i32** %126, align 8
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %118, %112
  br label %134

134:                                              ; preds = %133, %107
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = call i32 @insert_inode_hash(%struct.inode* %135)
  br label %137

137:                                              ; preds = %134, %10
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %138
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.TYPE_5__* @ADFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @ADFS_I(%struct.inode*) #1

declare dso_local i32 @adfs_atts2mode(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @adfs_adfs2unix_time(i32*, %struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
