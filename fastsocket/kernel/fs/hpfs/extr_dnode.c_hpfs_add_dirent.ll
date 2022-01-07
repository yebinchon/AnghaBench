; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_add_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_add_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.hpfs_dirent = type { i64, i32, i32, i32 }
%struct.hpfs_inode_info = type { i32 }
%struct.dnode = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"hpfs_add_dirent\00", align 1
@FREE_DNODES_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_add_dirent(%struct.inode* %0, i8* %1, i32 %2, %struct.hpfs_dirent* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpfs_dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpfs_inode_info*, align 8
  %13 = alloca %struct.dnode*, align 8
  %14 = alloca %struct.hpfs_dirent*, align 8
  %15 = alloca %struct.hpfs_dirent*, align 8
  %16 = alloca %struct.quad_buffer_head, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.hpfs_dirent* %3, %struct.hpfs_dirent** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %21)
  store %struct.hpfs_inode_info* %22, %struct.hpfs_inode_info** %12, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %12, align 8
  %24 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  br label %26

26:                                               ; preds = %87, %5
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_2__* @hpfs_sb(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i64 @hpfs_stop_cycles(i32 %37, i32 %38, i32* %19, i32* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %134

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call %struct.dnode* @hpfs_map_dnode(i32 %46, i32 %47, %struct.quad_buffer_head* %16)
  store %struct.dnode* %48, %struct.dnode** %13, align 8
  %49 = icmp ne %struct.dnode* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %134

51:                                               ; preds = %43
  %52 = load %struct.dnode*, %struct.dnode** %13, align 8
  %53 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %52)
  store %struct.hpfs_dirent* %53, %struct.hpfs_dirent** %15, align 8
  %54 = load %struct.dnode*, %struct.dnode** %13, align 8
  %55 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %54)
  store %struct.hpfs_dirent* %55, %struct.hpfs_dirent** %14, align 8
  br label %56

56:                                               ; preds = %93, %51
  %57 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %58 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %59 = icmp ult %struct.hpfs_dirent* %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %67 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %70 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %73 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @hpfs_compare_names(i32 %63, i8* %64, i32 %65, i32 %68, i32 %71, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %60
  %78 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %16)
  store i32 -1, i32* %6, align 4
  br label %134

79:                                               ; preds = %60
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %84 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %89 = call i32 @de_down_pointer(%struct.hpfs_dirent* %88)
  store i32 %89, i32* %17, align 4
  %90 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %16)
  br label %26

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %95 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %94)
  store %struct.hpfs_dirent* %95, %struct.hpfs_dirent** %14, align 8
  br label %56

96:                                               ; preds = %91, %56
  %97 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %16)
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @hpfs_lock_creation(i32 %103)
  br label %105

105:                                              ; preds = %100, %96
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FREE_DNODES_ADD, align 4
  %110 = call i64 @hpfs_check_free_dnodes(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  br label %124

113:                                              ; preds = %105
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %123 = call i32 @hpfs_add_to_dnode(%struct.inode* %118, i32 %119, i8* %120, i32 %121, %struct.hpfs_dirent* %122, i32 0)
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %113, %112
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @hpfs_unlock_creation(i32 %130)
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %77, %50, %41
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i32, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i32, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_compare_names(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_lock_creation(i32) #1

declare dso_local i64 @hpfs_check_free_dnodes(i32, i32) #1

declare dso_local i32 @hpfs_add_to_dnode(%struct.inode*, i32, i8*, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @hpfs_unlock_creation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
