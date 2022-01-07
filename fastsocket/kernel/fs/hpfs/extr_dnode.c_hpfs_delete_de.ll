; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_delete_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_delete_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i32, i32 }
%struct.hpfs_dirent = type { i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"attempt to delete last dirent in dnode %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.dnode*, %struct.hpfs_dirent*)* @hpfs_delete_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_delete_de(%struct.super_block* %0, %struct.dnode* %1, %struct.hpfs_dirent* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dnode*, align 8
  %6 = alloca %struct.hpfs_dirent*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dnode* %1, %struct.dnode** %5, align 8
  store %struct.hpfs_dirent* %2, %struct.hpfs_dirent** %6, align 8
  %7 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %8 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.dnode*, %struct.dnode** %5, align 8
  %14 = getelementptr inbounds %struct.dnode, %struct.dnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hpfs_error(%struct.super_block* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %19 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dnode*, %struct.dnode** %5, align 8
  %22 = getelementptr inbounds %struct.dnode, %struct.dnode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %26 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %27 = call i32 @de_next_de(%struct.hpfs_dirent* %26)
  %28 = load %struct.dnode*, %struct.dnode** %5, align 8
  %29 = getelementptr inbounds %struct.dnode, %struct.dnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dnode*, %struct.dnode** %5, align 8
  %32 = bitcast %struct.dnode* %31 to i8*
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %36 = bitcast %struct.hpfs_dirent* %35 to i8*
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memmove(%struct.hpfs_dirent* %25, i32 %27, i32 %40)
  br label %42

42:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @memmove(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @de_next_de(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
