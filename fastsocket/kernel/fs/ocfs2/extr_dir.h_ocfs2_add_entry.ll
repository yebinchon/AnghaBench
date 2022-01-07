; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.h_ocfs2_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.h_ocfs2_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dentry*, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*)* @ocfs2_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_entry(i32* %0, %struct.dentry* %1, %struct.inode* %2, i32 %3, %struct.buffer_head* %4, %struct.ocfs2_dir_lookup_result* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_dir_lookup_result* %5, %struct.ocfs2_dir_lookup_result** %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %30 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %31 = call i32 @__ocfs2_add_entry(i32* %13, i32 %18, i32 %22, i32 %26, %struct.inode* %27, i32 %28, %struct.buffer_head* %29, %struct.ocfs2_dir_lookup_result* %30)
  ret i32 %31
}

declare dso_local i32 @__ocfs2_add_entry(i32*, i32, i32, i32, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
