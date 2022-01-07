; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ncp_entry_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ncp_instantiate: %s/%s failed, closing file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.ncp_entry_info*)* @ncp_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.ncp_entry_info* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ncp_entry_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.ncp_entry_info* %2, %struct.ncp_entry_info** %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iunique(i32 %13, i32 2)
  %15 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %6, align 8
  %16 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %6, align 8
  %21 = call %struct.inode* @ncp_iget(i32 %19, %struct.ncp_entry_info* %20)
  store %struct.inode* %21, %struct.inode** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @d_instantiate(%struct.dentry* %26, %struct.inode* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %31, %25
  %30 = load i32, i32* %8, align 4
  ret i32 %30

31:                                               ; preds = %24
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @NCP_SERVER(%struct.inode* %43)
  %45 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %6, align 8
  %46 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ncp_close_file(i32 %44, i32 %47)
  br label %29
}

declare dso_local i32 @iunique(i32, i32) #1

declare dso_local %struct.inode* @ncp_iget(i32, %struct.ncp_entry_info*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @PPRINTK(i8*, i32, i32) #1

declare dso_local i32 @ncp_close_file(i32, i32) #1

declare dso_local i32 @NCP_SERVER(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
