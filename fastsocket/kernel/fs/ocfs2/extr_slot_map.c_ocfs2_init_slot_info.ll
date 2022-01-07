; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_init_slot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_init_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_slot_info* }
%struct.ocfs2_slot_info = type { i32, %struct.inode*, %struct.ocfs2_slot*, i32 }
%struct.inode = type { i32 }
%struct.ocfs2_slot = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLOT_MAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_init_slot_info(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %4, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = add i64 32, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ocfs2_slot_info* @kzalloc(i32 %12, i32 %13)
  store %struct.ocfs2_slot_info* %14, %struct.ocfs2_slot_info** %5, align 8
  %15 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %16 = icmp ne %struct.ocfs2_slot_info* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @mlog_errno(i32 %20)
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %24 = call i32 @ocfs2_uses_extended_slot_map(%struct.ocfs2_super* %23)
  %25 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %33 = bitcast %struct.ocfs2_slot_info* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 32
  %35 = bitcast i8* %34 to %struct.ocfs2_slot*
  %36 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %36, i32 0, i32 2
  store %struct.ocfs2_slot* %35, %struct.ocfs2_slot** %37, align 8
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %39 = load i32, i32* @SLOT_MAP_SYSTEM_INODE, align 4
  %40 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %41 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %38, i32 %39, i32 %40)
  store %struct.inode* %41, %struct.inode** %4, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %22
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %65

49:                                               ; preds = %22
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %51, i32 0, i32 1
  store %struct.inode* %50, %struct.inode** %52, align 8
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %54 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %55 = call i32 @ocfs2_map_slot_buffers(%struct.ocfs2_super* %53, %struct.ocfs2_slot_info* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %65

61:                                               ; preds = %49
  %62 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 1
  store %struct.ocfs2_slot_info* %62, %struct.ocfs2_slot_info** %64, align 8
  br label %65

65:                                               ; preds = %61, %58, %44, %17
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %70 = icmp ne %struct.ocfs2_slot_info* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %73 = call i32 @__ocfs2_free_slot_info(%struct.ocfs2_slot_info* %72)
  br label %74

74:                                               ; preds = %71, %68, %65
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.ocfs2_slot_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_uses_extended_slot_map(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_map_slot_buffers(%struct.ocfs2_super*, %struct.ocfs2_slot_info*) #1

declare dso_local i32 @__ocfs2_free_slot_info(%struct.ocfs2_slot_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
