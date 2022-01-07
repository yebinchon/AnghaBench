; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtReadFirst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtReadFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btstack = type { %struct.btframe* }
%struct.btframe = type { %struct.metapage*, i64, i64 }
%struct.metapage = type { i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BT_LEAF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"dtReadFirst: btstack overrun\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.btstack*)* @dtReadFirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtReadFirst(%struct.inode* %0, %struct.btstack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btstack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.metapage*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.btframe*, align 8
  %13 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.btstack* %1, %struct.btstack** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 288, i32* %8, align 4
  %14 = load %struct.btstack*, %struct.btstack** %5, align 8
  %15 = call i32 @BT_CLR(%struct.btstack* %14)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %63, %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.metapage*, %struct.metapage** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DT_GETPAGE(%struct.inode* %17, i64 %18, %struct.metapage* %19, i32 %20, %struct.TYPE_7__* %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BT_LEAF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.btstack*, %struct.btstack** %5, align 8
  %38 = getelementptr inbounds %struct.btstack, %struct.btstack* %37, i32 0, i32 0
  %39 = load %struct.btframe*, %struct.btframe** %38, align 8
  store %struct.btframe* %39, %struct.btframe** %12, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.btframe*, %struct.btframe** %12, align 8
  %42 = getelementptr inbounds %struct.btframe, %struct.btframe* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.btframe*, %struct.btframe** %12, align 8
  %44 = getelementptr inbounds %struct.btframe, %struct.btframe* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.metapage*, %struct.metapage** %9, align 8
  %46 = load %struct.btframe*, %struct.btframe** %12, align 8
  %47 = getelementptr inbounds %struct.btframe, %struct.btframe* %46, i32 0, i32 0
  store %struct.metapage* %45, %struct.metapage** %47, align 8
  store i32 0, i32* %3, align 4
  br label %89

48:                                               ; preds = %28
  %49 = load %struct.btstack*, %struct.btstack** %5, align 8
  %50 = call i64 @BT_STACK_FULL(%struct.btstack* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.metapage*, %struct.metapage** %9, align 8
  %54 = call i32 @DT_PUTPAGE(%struct.metapage* %53)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @jfs_error(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.btstack*, %struct.btstack** %5, align 8
  %60 = call i32 @BT_STACK_DUMP(%struct.btstack* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %48
  %64 = load %struct.btstack*, %struct.btstack** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @BT_PUSH(%struct.btstack* %64, i64 %65, i32 0)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = call i64* @DT_GETSTBL(%struct.TYPE_7__* %67)
  store i64* %68, i64** %11, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i64 @addressPXD(i32* %76)
  store i64 %77, i64* %7, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @lengthPXD(i32* %78)
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_8__* @JFS_SBI(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %79, %85
  store i32 %86, i32* %8, align 4
  %87 = load %struct.metapage*, %struct.metapage** %9, align 8
  %88 = call i32 @DT_PUTPAGE(%struct.metapage* %87)
  br label %16

89:                                               ; preds = %52, %36, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @BT_CLR(%struct.btstack*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i64, %struct.metapage*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @BT_STACK_FULL(%struct.btstack*) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @BT_STACK_DUMP(%struct.btstack*) #1

declare dso_local i32 @BT_PUSH(%struct.btstack*, i64, i32) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_7__*) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local %struct.TYPE_8__* @JFS_SBI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
