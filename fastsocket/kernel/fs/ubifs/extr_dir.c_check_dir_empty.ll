; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_check_dir_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_check_dir_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32* }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*)* @check_dir_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dir_empty(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr, align 8
  %6 = alloca %struct.ubifs_dent_node*, align 8
  %7 = alloca %union.ubifs_key, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = bitcast %struct.qstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lowest_dent_key(%struct.ubifs_info* %10, %union.ubifs_key* %7, i32 %13)
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %15, %union.ubifs_key* %7, %struct.qstr* %5)
  store %struct.ubifs_dent_node* %16, %struct.ubifs_dent_node** %6, align 8
  %17 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %6, align 8
  %18 = call i64 @IS_ERR(%struct.ubifs_dent_node* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %20
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %6, align 8
  %31 = call i32 @kfree(%struct.ubifs_dent_node* %30)
  %32 = load i32, i32* @ENOTEMPTY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lowest_dent_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #2

declare dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #2

declare dso_local i64 @IS_ERR(%struct.ubifs_dent_node*) #2

declare dso_local i32 @PTR_ERR(%struct.ubifs_dent_node*) #2

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
