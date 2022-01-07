; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ncp_entry_info = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"ncp_update_inode: updated %s, volnum=%d, dirent=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_update_inode(%struct.inode* %0, %struct.ncp_entry_info* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ncp_entry_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ncp_entry_info* %1, %struct.ncp_entry_info** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %4, align 8
  %7 = call i32 @ncp_update_dirent(%struct.inode* %5, %struct.ncp_entry_info* %6)
  %8 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %4, align 8
  %9 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 4
  %15 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %4, align 8
  %16 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %4, align 8
  %26 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %4, align 8
  %30 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DPRINTK(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %40)
  ret void
}

declare dso_local i32 @ncp_update_dirent(%struct.inode*, %struct.ncp_entry_info*) #1

declare dso_local %struct.TYPE_4__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
