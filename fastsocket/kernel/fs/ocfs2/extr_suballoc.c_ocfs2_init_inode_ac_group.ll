; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_init_inode_ac_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_init_inode_ac_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i64, i64 }
%struct.ocfs2_dinode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*)* @ocfs2_init_inode_ac_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_init_inode_ac_group(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_alloc_context* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %6, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %11, %struct.ocfs2_dinode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %55

33:                                               ; preds = %17, %3
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %39 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le64_to_cpu(i32 %45)
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le16_to_cpu(i32 %49)
  %51 = call i64 @ocfs2_which_suballoc_group(i32 %46, i64 %50)
  %52 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %53 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %42, %33
  br label %55

55:                                               ; preds = %54, %26
  ret void
}

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_which_suballoc_group(i32, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
