; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_add_recovery_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_add_recovery_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_local_disk_chunk = type { i32 }
%struct.list_head = type { i32 }
%struct.ocfs2_recovery_chunk = type { i32, i32, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_local_disk_chunk*, i32, %struct.list_head*)* @ocfs2_add_recovery_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_recovery_chunk(%struct.super_block* %0, %struct.ocfs2_local_disk_chunk* %1, i32 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_local_disk_chunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.ocfs2_recovery_chunk*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ocfs2_local_disk_chunk* %1, %struct.ocfs2_local_disk_chunk** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call i8* @kmalloc(i32 16, i32 %11)
  %13 = bitcast i8* %12 to %struct.ocfs2_recovery_chunk*
  store %struct.ocfs2_recovery_chunk* %13, %struct.ocfs2_recovery_chunk** %10, align 8
  %14 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %15 = icmp ne %struct.ocfs2_recovery_chunk* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_recovery_chunk, %struct.ocfs2_recovery_chunk* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_recovery_chunk, %struct.ocfs2_recovery_chunk* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %31 = getelementptr inbounds %struct.ocfs2_recovery_chunk, %struct.ocfs2_recovery_chunk* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %19
  %35 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %36 = call i32 @kfree(%struct.ocfs2_recovery_chunk* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %19
  %40 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %41 = getelementptr inbounds %struct.ocfs2_recovery_chunk, %struct.ocfs2_recovery_chunk* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %7, align 8
  %44 = getelementptr inbounds %struct.ocfs2_local_disk_chunk, %struct.ocfs2_local_disk_chunk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = call i32 @ol_chunk_entries(%struct.super_block* %46)
  %48 = add nsw i32 %47, 7
  %49 = ashr i32 %48, 3
  %50 = call i32 @memcpy(i8* %42, i32 %45, i32 %49)
  %51 = load %struct.ocfs2_recovery_chunk*, %struct.ocfs2_recovery_chunk** %10, align 8
  %52 = getelementptr inbounds %struct.ocfs2_recovery_chunk, %struct.ocfs2_recovery_chunk* %51, i32 0, i32 1
  %53 = load %struct.list_head*, %struct.list_head** %9, align 8
  %54 = call i32 @list_add_tail(i32* %52, %struct.list_head* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %39, %34, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_recovery_chunk*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ol_chunk_entries(%struct.super_block*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
