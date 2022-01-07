; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_find_actor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_find_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_find_inode_args = type { i64 }
%struct.ocfs2_inode_info = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"(0x%p, %lu, 0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No inode in find actor!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @ocfs2_find_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_actor(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_find_inode_args*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ocfs2_find_inode_args* null, %struct.ocfs2_find_inode_args** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %8)
  store %struct.ocfs2_inode_info* %9, %struct.ocfs2_inode_info** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @mlog_entry(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.inode* %10, i32 %13, i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.ocfs2_find_inode_args*
  store %struct.ocfs2_find_inode_args* %17, %struct.ocfs2_find_inode_args** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = icmp ne %struct.inode* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @mlog_bug_on_msg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %32

31:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mlog_exit(i32 %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, i32, i8*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
