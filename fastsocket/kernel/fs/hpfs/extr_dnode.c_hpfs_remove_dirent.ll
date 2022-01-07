; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_remove_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_remove_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.hpfs_dirent = type { i64, i64, i64 }
%struct.quad_buffer_head = type { %struct.dnode* }
%struct.dnode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [73 x i8] c"hpfs_remove_dirent: attempt to delete first or last dirent in dnode %08x\00", align 1
@FREE_DNODES_DEL = common dso_local global i32 0, align 4
@hpfs_pos_del = common dso_local global i32 0, align 4
@hpfs_pos_subst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_remove_dirent(%struct.inode* %0, i64 %1, %struct.hpfs_dirent* %2, %struct.quad_buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hpfs_dirent*, align 8
  %10 = alloca %struct.quad_buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dnode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.hpfs_dirent* %2, %struct.hpfs_dirent** %9, align 8
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %18 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %17, i32 0, i32 0
  %19 = load %struct.dnode*, %struct.dnode** %18, align 8
  store %struct.dnode* %19, %struct.dnode** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %21 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %26 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %5
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @hpfs_error(i32 %32, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %36 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %35)
  store i32 1, i32* %6, align 4
  br label %147

37:                                               ; preds = %24
  %38 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %39 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %44 = call i64 @de_down_pointer(%struct.hpfs_dirent* %43)
  store i64 %44, i64* %13, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %45
  %49 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %50 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %55 = load %struct.dnode*, %struct.dnode** %12, align 8
  %56 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %55)
  %57 = icmp eq %struct.hpfs_dirent* %54, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %60 = call %struct.TYPE_2__* @de_next_de(%struct.hpfs_dirent* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %58, %48
  store i32 1, i32* %14, align 4
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hpfs_lock_creation(i32 %67)
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FREE_DNODES_DEL, align 4
  %73 = call i64 @hpfs_check_free_dnodes(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %77 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %76)
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hpfs_unlock_creation(i32 %80)
  store i32 2, i32* %6, align 4
  br label %147

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %58, %53, %45
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = load i32, i32* @hpfs_pos_del, align 4
  %90 = load %struct.dnode*, %struct.dnode** %12, align 8
  %91 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %92 = call i32 @get_pos(%struct.dnode* %90, %struct.hpfs_dirent* %91)
  store i32 %92, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @for_all_poss(%struct.inode* %88, i32 %89, i32 %93, i32 1)
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dnode*, %struct.dnode** %12, align 8
  %99 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %100 = call i32 @hpfs_delete_de(i32 %97, %struct.dnode* %98, %struct.hpfs_dirent* %99)
  %101 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %102 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %101)
  %103 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %104 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %103)
  %105 = load i64, i64* %13, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %83
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @move_to_top(%struct.inode* %108, i64 %109, i64 %110)
  store i64 %111, i64* %16, align 8
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = load i32, i32* @hpfs_pos_subst, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @for_all_poss(%struct.inode* %112, i32 %113, i32 5, i32 %114)
  %116 = load i64, i64* %16, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %107
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = load i64, i64* %16, align 8
  %121 = call i32 @delete_empty_dnode(%struct.inode* %119, i64 %120)
  br label %122

122:                                              ; preds = %118, %107
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @hpfs_unlock_creation(i32 %128)
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i64, i64* %16, align 8
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %6, align 4
  br label %147

135:                                              ; preds = %83
  %136 = load %struct.inode*, %struct.inode** %7, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @delete_empty_dnode(%struct.inode* %136, i64 %137)
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.inode*, %struct.inode** %7, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @hpfs_unlock_creation(i32 %144)
  br label %146

146:                                              ; preds = %141, %135
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %130, %75, %29
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @hpfs_error(i32, i8*, i64) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.TYPE_2__* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_lock_creation(i32) #1

declare dso_local i64 @hpfs_check_free_dnodes(i32, i32) #1

declare dso_local i32 @hpfs_unlock_creation(i32) #1

declare dso_local i32 @for_all_poss(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @get_pos(%struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_delete_de(i32, %struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i64 @move_to_top(%struct.inode*, i64, i64) #1

declare dso_local i32 @delete_empty_dnode(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
