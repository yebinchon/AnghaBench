; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32 }
%struct.tblock = type { i64 }
%struct.commit = type { %struct.lrd }
%struct.lrd = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.inode = type { i32, i32 }
%struct.tlock = type { i32, %struct.inode*, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@tlckLOG = common dso_local global i32 0, align 4
@tlckTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"UFO tlock:0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, %struct.tblock*, %struct.commit*)* @txLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txLog(%struct.jfs_log* %0, %struct.tblock* %1, %struct.commit* %2) #0 {
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca %struct.tblock*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tlock*, align 8
  %11 = alloca %struct.lrd*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %4, align 8
  store %struct.tblock* %1, %struct.tblock** %5, align 8
  store %struct.commit* %2, %struct.commit** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.commit*, %struct.commit** %6, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  store %struct.lrd* %13, %struct.lrd** %11, align 8
  %14 = load %struct.tblock*, %struct.tblock** %5, align 8
  %15 = getelementptr inbounds %struct.tblock, %struct.tblock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %97, %3
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %101

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.tlock* @lid_to_tlock(i64 %21)
  store %struct.tlock* %22, %struct.tlock** %10, align 8
  %23 = load i32, i32* @tlckLOG, align 4
  %24 = load %struct.tlock*, %struct.tlock** %10, align 8
  %25 = getelementptr inbounds %struct.tlock, %struct.tlock* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.tlock*, %struct.tlock** %10, align 8
  %29 = getelementptr inbounds %struct.tlock, %struct.tlock* %28, i32 0, i32 1
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_7__* @JFS_SBI(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.lrd*, %struct.lrd** %11, align 8
  %39 = getelementptr inbounds %struct.lrd, %struct.lrd* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.lrd*, %struct.lrd** %11, align 8
  %46 = getelementptr inbounds %struct.lrd, %struct.lrd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.lrd*, %struct.lrd** %11, align 8
  %54 = getelementptr inbounds %struct.lrd, %struct.lrd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.tlock*, %struct.tlock** %10, align 8
  %58 = getelementptr inbounds %struct.tlock, %struct.tlock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @tlckTYPE, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %93 [
    i32 128, label %62
    i32 131, label %68
    i32 130, label %74
    i32 129, label %81
    i32 132, label %87
  ]

62:                                               ; preds = %20
  %63 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %64 = load %struct.tblock*, %struct.tblock** %5, align 8
  %65 = load %struct.lrd*, %struct.lrd** %11, align 8
  %66 = load %struct.tlock*, %struct.tlock** %10, align 8
  %67 = call i32 @xtLog(%struct.jfs_log* %63, %struct.tblock* %64, %struct.lrd* %65, %struct.tlock* %66)
  br label %96

68:                                               ; preds = %20
  %69 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %70 = load %struct.tblock*, %struct.tblock** %5, align 8
  %71 = load %struct.lrd*, %struct.lrd** %11, align 8
  %72 = load %struct.tlock*, %struct.tlock** %10, align 8
  %73 = call i32 @dtLog(%struct.jfs_log* %69, %struct.tblock* %70, %struct.lrd* %71, %struct.tlock* %72)
  br label %96

74:                                               ; preds = %20
  %75 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %76 = load %struct.tblock*, %struct.tblock** %5, align 8
  %77 = load %struct.lrd*, %struct.lrd** %11, align 8
  %78 = load %struct.tlock*, %struct.tlock** %10, align 8
  %79 = load %struct.commit*, %struct.commit** %6, align 8
  %80 = call i32 @diLog(%struct.jfs_log* %75, %struct.tblock* %76, %struct.lrd* %77, %struct.tlock* %78, %struct.commit* %79)
  br label %96

81:                                               ; preds = %20
  %82 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %83 = load %struct.tblock*, %struct.tblock** %5, align 8
  %84 = load %struct.lrd*, %struct.lrd** %11, align 8
  %85 = load %struct.tlock*, %struct.tlock** %10, align 8
  %86 = call i32 @mapLog(%struct.jfs_log* %82, %struct.tblock* %83, %struct.lrd* %84, %struct.tlock* %85)
  br label %96

87:                                               ; preds = %20
  %88 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %89 = load %struct.tblock*, %struct.tblock** %5, align 8
  %90 = load %struct.lrd*, %struct.lrd** %11, align 8
  %91 = load %struct.tlock*, %struct.tlock** %10, align 8
  %92 = call i32 @dataLog(%struct.jfs_log* %88, %struct.tblock* %89, %struct.lrd* %90, %struct.tlock* %91)
  br label %96

93:                                               ; preds = %20
  %94 = load %struct.tlock*, %struct.tlock** %10, align 8
  %95 = call i32 @jfs_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.tlock* %94)
  br label %96

96:                                               ; preds = %93, %87, %81, %74, %68, %62
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.tlock*, %struct.tlock** %10, align 8
  %99 = getelementptr inbounds %struct.tlock, %struct.tlock* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %9, align 8
  br label %17

101:                                              ; preds = %17
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_7__* @JFS_SBI(i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @xtLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @dtLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @diLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*, %struct.commit*) #1

declare dso_local i32 @mapLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @dataLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @jfs_err(i8*, %struct.tlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
