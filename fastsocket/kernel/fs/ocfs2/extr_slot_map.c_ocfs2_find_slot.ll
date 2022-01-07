; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_find_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i32, %struct.ocfs2_slot_info* }
%struct.ocfs2_slot_info = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no free slots available!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"slot %d is already allocated to this node!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"taking node slot %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_slot(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %6 = call i32 (...) @mlog_entry_void()
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 4
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %8, align 8
  store %struct.ocfs2_slot_info* %9, %struct.ocfs2_slot_info** %5, align 8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %14 = call i32 @ocfs2_update_slot_info(%struct.ocfs2_slot_info* %13)
  %15 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @__ocfs2_node_num_to_slot(%struct.ocfs2_slot_info* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__ocfs2_find_empty_slot(%struct.ocfs2_slot_info* %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* @ML_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @mlog(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %22
  br label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @ML_NOTICE, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @mlog(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ocfs2_set_slot(%struct.ocfs2_slot_info* %44, i32 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %61 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ocfs2_update_disk_slot(%struct.ocfs2_super* %60, %struct.ocfs2_slot_info* %61, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %43
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %71

71:                                               ; preds = %68, %43
  br label %72

72:                                               ; preds = %71, %30
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @mlog_exit(i32 %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_update_slot_info(%struct.ocfs2_slot_info*) #1

declare dso_local i32 @__ocfs2_node_num_to_slot(%struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @__ocfs2_find_empty_slot(%struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_set_slot(%struct.ocfs2_slot_info*, i32, i32) #1

declare dso_local i32 @ocfs2_update_disk_slot(%struct.ocfs2_super*, %struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
