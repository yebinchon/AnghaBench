; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_inode_from_lvb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_inode_from_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64 }
%struct.ocfs2_inode_info = type { i32, i8*, i8*, i8*, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_meta_lvb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ocfs2_refresh_inode_from_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_refresh_inode_from_lvb(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ocfs2_inode_info*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca %struct.ocfs2_meta_lvb*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %6)
  store %struct.ocfs2_inode_info* %7, %struct.ocfs2_inode_info** %3, align 8
  %8 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %8, i32 0, i32 4
  store %struct.ocfs2_lock_res* %9, %struct.ocfs2_lock_res** %4, align 8
  %10 = call i32 (...) @mlog_entry_void()
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %12 = call i32 @mlog_meta_lvb(i32 0, %struct.ocfs2_lock_res* %11)
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 0
  %15 = call %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32* %14)
  store %struct.ocfs2_meta_lvb* %15, %struct.ocfs2_meta_lvb** %5, align 8
  %16 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @be32_to_cpu(i32 %21)
  %23 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be64_to_cpu(i32 %28)
  %30 = call i32 @i_size_write(%struct.inode* %25, i32 %29)
  %31 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be32_to_cpu(i32 %33)
  %35 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %36 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @be16_to_cpu(i32 %39)
  %41 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %42 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call i32 @ocfs2_set_inode_flags(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @S_ISLNK(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %1
  %51 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %52 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  br label %63

58:                                               ; preds = %50, %1
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = call i64 @ocfs2_inode_sector_count(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 7
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %65 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @be32_to_cpu(i32 %72)
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %77 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @be16_to_cpu(i32 %78)
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %83 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @be16_to_cpu(i32 %84)
  %86 = load %struct.inode*, %struct.inode** %2, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %2, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 2
  %90 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %91 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be64_to_cpu(i32 %92)
  %94 = call i32 @ocfs2_unpack_timespec(i32* %89, i32 %93)
  %95 = load %struct.inode*, %struct.inode** %2, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %98 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be64_to_cpu(i32 %99)
  %101 = call i32 @ocfs2_unpack_timespec(i32* %96, i32 %100)
  %102 = load %struct.inode*, %struct.inode** %2, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %105 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @be64_to_cpu(i32 %106)
  %108 = call i32 @ocfs2_unpack_timespec(i32* %103, i32 %107)
  %109 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %110 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog_meta_lvb(i32, %struct.ocfs2_lock_res*) #1

declare dso_local %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i8*) #1

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_unpack_timespec(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
