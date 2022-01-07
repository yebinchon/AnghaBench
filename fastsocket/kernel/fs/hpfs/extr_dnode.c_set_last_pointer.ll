; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_set_last_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_set_last_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i32, i32 }
%struct.hpfs_dirent = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"set_last_pointer: empty dnode %08x\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"set_last_pointer: dnode %08x has already last pointer %08x\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"set_last_pointer: bad last dirent in dnode %08x\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"set_last_pointer: too long dnode %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.dnode*, i64)* @set_last_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_last_pointer(%struct.super_block* %0, %struct.dnode* %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hpfs_dirent*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dnode* %1, %struct.dnode** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dnode*, %struct.dnode** %5, align 8
  %9 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %8)
  store %struct.hpfs_dirent* %9, %struct.hpfs_dirent** %7, align 8
  %10 = icmp ne %struct.hpfs_dirent* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.dnode*, %struct.dnode** %5, align 8
  %14 = getelementptr inbounds %struct.dnode, %struct.dnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %77

17:                                               ; preds = %3
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %25 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load %struct.dnode*, %struct.dnode** %5, align 8
  %31 = getelementptr inbounds %struct.dnode, %struct.dnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %34 = call i32 @de_down_pointer(%struct.hpfs_dirent* %33)
  %35 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  br label %77

36:                                               ; preds = %23
  %37 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %38 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 32
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load %struct.dnode*, %struct.dnode** %5, align 8
  %44 = getelementptr inbounds %struct.dnode, %struct.dnode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %77

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %17
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load %struct.dnode*, %struct.dnode** %5, align 8
  %53 = getelementptr inbounds %struct.dnode, %struct.dnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %53, align 4
  %56 = icmp sgt i32 %55, 2048
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load %struct.dnode*, %struct.dnode** %5, align 8
  %60 = getelementptr inbounds %struct.dnode, %struct.dnode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.dnode*, %struct.dnode** %5, align 8
  %64 = getelementptr inbounds %struct.dnode, %struct.dnode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %64, align 4
  br label %77

67:                                               ; preds = %51
  %68 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %69 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %68, i32 0, i32 1
  store i32 36, i32* %69, align 4
  %70 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %71 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %74 = bitcast %struct.hpfs_dirent* %73 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 32
  %76 = bitcast i8* %75 to i64*
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %11, %28, %41, %57, %67, %48
  ret void
}

declare dso_local %struct.hpfs_dirent* @dnode_last_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
