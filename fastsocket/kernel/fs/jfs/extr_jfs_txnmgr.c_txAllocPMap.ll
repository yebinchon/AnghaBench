; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txAllocPMap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txAllocPMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.maplock = type { i32 }
%struct.tblock = type { i32 }
%struct.xdlistlock = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pxd_lock = type { %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.inode* }

@mlckALLOCXADLIST = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@XAD_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"allocPMap: xaddr:0x%lx xlen:%d\00", align 1
@mlckALLOCPXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.maplock*, %struct.tblock*)* @txAllocPMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txAllocPMap(%struct.inode* %0, %struct.maplock* %1, %struct.tblock* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.maplock*, align 8
  %6 = alloca %struct.tblock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.xdlistlock*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pxd_lock*, align 8
  %13 = alloca %struct.xdlistlock*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.maplock* %1, %struct.maplock** %5, align 8
  store %struct.tblock* %2, %struct.tblock** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_9__* @JFS_SBI(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %7, align 8
  %22 = load %struct.maplock*, %struct.maplock** %5, align 8
  %23 = getelementptr inbounds %struct.maplock, %struct.maplock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @mlckALLOCXADLIST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %3
  %29 = load %struct.maplock*, %struct.maplock** %5, align 8
  %30 = bitcast %struct.maplock* %29 to %struct.xdlistlock*
  store %struct.xdlistlock* %30, %struct.xdlistlock** %8, align 8
  %31 = load %struct.xdlistlock*, %struct.xdlistlock** %8, align 8
  %32 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %73, %28
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.xdlistlock*, %struct.xdlistlock** %8, align 8
  %37 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XAD_NEW, align 4
  %45 = load i32, i32* @XAD_EXTENDED, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = call i64 @addressXAD(%struct.TYPE_8__* %50)
  store i64 %51, i64* %10, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = call i32 @lengthXAD(%struct.TYPE_8__* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.tblock*, %struct.tblock** %6, align 8
  %59 = call i32 @dbUpdatePMap(%struct.inode* %54, i32 0, i64 %55, i64 %57, %struct.tblock* %58)
  %60 = load i32, i32* @XAD_NEW, align 4
  %61 = load i32, i32* @XAD_EXTENDED, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @jfs_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %49, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 1
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %9, align 8
  br label %34

78:                                               ; preds = %34
  br label %139

79:                                               ; preds = %3
  %80 = load %struct.maplock*, %struct.maplock** %5, align 8
  %81 = getelementptr inbounds %struct.maplock, %struct.maplock* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @mlckALLOCPXD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %79
  %87 = load %struct.maplock*, %struct.maplock** %5, align 8
  %88 = bitcast %struct.maplock* %87 to %struct.pxd_lock*
  store %struct.pxd_lock* %88, %struct.pxd_lock** %12, align 8
  %89 = load %struct.pxd_lock*, %struct.pxd_lock** %12, align 8
  %90 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %89, i32 0, i32 0
  %91 = call i64 @addressPXD(%struct.TYPE_8__* %90)
  store i64 %91, i64* %10, align 8
  %92 = load %struct.pxd_lock*, %struct.pxd_lock** %12, align 8
  %93 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %92, i32 0, i32 0
  %94 = call i32 @lengthPXD(%struct.TYPE_8__* %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.tblock*, %struct.tblock** %6, align 8
  %100 = call i32 @dbUpdatePMap(%struct.inode* %95, i32 0, i64 %96, i64 %98, %struct.tblock* %99)
  %101 = load i64, i64* %10, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @jfs_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103)
  br label %138

105:                                              ; preds = %79
  %106 = load %struct.maplock*, %struct.maplock** %5, align 8
  %107 = bitcast %struct.maplock* %106 to %struct.xdlistlock*
  store %struct.xdlistlock* %107, %struct.xdlistlock** %13, align 8
  %108 = load %struct.xdlistlock*, %struct.xdlistlock** %13, align 8
  %109 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %132, %105
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.xdlistlock*, %struct.xdlistlock** %13, align 8
  %114 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %111
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %119 = call i64 @addressPXD(%struct.TYPE_8__* %118)
  store i64 %119, i64* %10, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %121 = call i32 @lengthPXD(%struct.TYPE_8__* %120)
  store i32 %121, i32* %11, align 4
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.tblock*, %struct.tblock** %6, align 8
  %127 = call i32 @dbUpdatePMap(%struct.inode* %122, i32 0, i64 %123, i64 %125, %struct.tblock* %126)
  %128 = load i64, i64* %10, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @jfs_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 1
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %14, align 8
  br label %111

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137, %86
  br label %139

139:                                              ; preds = %138, %78
  ret void
}

declare dso_local %struct.TYPE_9__* @JFS_SBI(i32) #1

declare dso_local i64 @addressXAD(%struct.TYPE_8__*) #1

declare dso_local i32 @lengthXAD(%struct.TYPE_8__*) #1

declare dso_local i32 @dbUpdatePMap(%struct.inode*, i32, i64, i64, %struct.tblock*) #1

declare dso_local i32 @jfs_info(i8*, i32, i32) #1

declare dso_local i64 @addressPXD(%struct.TYPE_8__*) #1

declare dso_local i32 @lengthPXD(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
