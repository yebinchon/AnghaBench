; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___ocfs2_stuff_meta_lvb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___ocfs2_stuff_meta_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32, i32, i32, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_meta_lvb = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@OCFS2_LVB_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @__ocfs2_stuff_meta_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ocfs2_stuff_meta_lvb(%struct.inode* %0) #0 {
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
  %12 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %11, i32 0, i32 0
  %13 = call %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32* %12)
  store %struct.ocfs2_meta_lvb* %13, %struct.ocfs2_meta_lvb** %5, align 8
  %14 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %21, i32 0, i32 12
  store i64 0, i64* %22, align 8
  br label %98

23:                                               ; preds = %1
  %24 = load i64, i64* @OCFS2_LVB_VERSION, align 8
  %25 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %25, i32 0, i32 12
  store i64 %24, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = call i32 @i_size_read(%struct.inode* %27)
  %29 = call i8* @cpu_to_be64(i32 %28)
  %30 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %30, i32 0, i32 11
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_be16(i32 %52)
  %54 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_be16(i32 %58)
  %60 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %61 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = call i32 @ocfs2_pack_timespec(i32* %63)
  %65 = call i8* @cpu_to_be64(i32 %64)
  %66 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %67 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 2
  %70 = call i32 @ocfs2_pack_timespec(i32* %69)
  %71 = call i8* @cpu_to_be64(i32 %70)
  %72 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %73 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = call i32 @ocfs2_pack_timespec(i32* %75)
  %77 = call i8* @cpu_to_be64(i32 %76)
  %78 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %79 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %81 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %85 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %87 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_be16(i32 %88)
  %90 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %91 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %97 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %23, %20
  %99 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %100 = call i32 @mlog_meta_lvb(i32 0, %struct.ocfs2_lock_res* %99)
  %101 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ocfs2_pack_timespec(i32*) #1

declare dso_local i32 @mlog_meta_lvb(i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
