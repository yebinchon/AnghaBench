; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_iget5_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_iget5_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@inode_hashtable = common dso_local global %struct.hlist_head* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @iget5_locked(%struct.super_block* %0, i64 %1, i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.inode*, i8*)*, align 8
  %10 = alloca i32 (%struct.inode*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hlist_head*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)** %9, align 8
  store i32 (%struct.inode*, i8*)* %3, i32 (%struct.inode*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @hash(%struct.super_block* %15, i64 %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %14, i64 %18
  store %struct.hlist_head* %19, %struct.hlist_head** %12, align 8
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %22 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %9, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call %struct.inode* @ifind(%struct.super_block* %20, %struct.hlist_head* %21, i32 (%struct.inode*, i8*)* %22, i8* %23, i32 1)
  store %struct.inode* %24, %struct.inode** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %13, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %28, %struct.inode** %6, align 8
  br label %36

29:                                               ; preds = %5
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %32 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %9, align 8
  %33 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call %struct.inode* @get_new_inode(%struct.super_block* %30, %struct.hlist_head* %31, i32 (%struct.inode*, i8*)* %32, i32 (%struct.inode*, i8*)* %33, i8* %34)
  store %struct.inode* %35, %struct.inode** %6, align 8
  br label %36

36:                                               ; preds = %29, %27
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %37
}

declare dso_local i32 @hash(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ifind(%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i8*, i32) #1

declare dso_local %struct.inode* @get_new_inode(%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
