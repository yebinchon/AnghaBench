; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txEA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txEA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tlock = type { i32 }
%struct.pxd_lock = type { i32, i32, i32 }

@DXD_EXTENT = common dso_local global i32 0, align 4
@tlckMAP = common dso_local global i32 0, align 4
@mlckALLOCPXD = common dso_local global i32 0, align 4
@DXD_INLINE = common dso_local global i32 0, align 4
@COMMIT_Inlineea = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@mlckFREEPXD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txEA(i32 %0, %struct.inode* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.tlock*, align 8
  %10 = alloca %struct.pxd_lock*, align 8
  %11 = alloca %struct.pxd_lock*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  store %struct.tlock* null, %struct.tlock** %9, align 8
  store %struct.pxd_lock* null, %struct.pxd_lock** %10, align 8
  store %struct.pxd_lock* null, %struct.pxd_lock** %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DXD_EXTENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load i32, i32* @tlckMAP, align 4
  %25 = call %struct.tlock* @txMaplock(i32 %22, %struct.inode* %23, i32 %24)
  store %struct.tlock* %25, %struct.tlock** %9, align 8
  %26 = load %struct.tlock*, %struct.tlock** %9, align 8
  %27 = getelementptr inbounds %struct.tlock, %struct.tlock* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.pxd_lock*
  store %struct.pxd_lock* %28, %struct.pxd_lock** %10, align 8
  %29 = load %struct.pxd_lock*, %struct.pxd_lock** %10, align 8
  store %struct.pxd_lock* %29, %struct.pxd_lock** %11, align 8
  %30 = load i32, i32* @mlckALLOCPXD, align 4
  %31 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %32 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %34 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = call i32 @addressDXD(%struct.TYPE_6__* %35)
  %37 = call i32 @PXDaddress(i32* %34, i32 %36)
  %38 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %39 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = call i32 @lengthDXD(%struct.TYPE_6__* %40)
  %42 = call i32 @PXDlength(i32* %39, i32 %41)
  %43 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %44 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %43, i32 1
  store %struct.pxd_lock* %44, %struct.pxd_lock** %11, align 8
  %45 = load %struct.pxd_lock*, %struct.pxd_lock** %10, align 8
  %46 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %59

47:                                               ; preds = %14
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DXD_INLINE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  store %struct.tlock* null, %struct.tlock** %9, align 8
  %55 = load i32, i32* @COMMIT_Inlineea, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @set_cflag(i32 %55, %struct.inode* %56)
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %21
  br label %60

60:                                               ; preds = %59, %4
  %61 = load i32, i32* @COMMIT_Nolink, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @test_cflag(i32 %61, %struct.inode* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %104, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DXD_EXTENT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %65
  %73 = load %struct.tlock*, %struct.tlock** %9, align 8
  %74 = icmp eq %struct.tlock* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load i32, i32* @tlckMAP, align 4
  %79 = call %struct.tlock* @txMaplock(i32 %76, %struct.inode* %77, i32 %78)
  store %struct.tlock* %79, %struct.tlock** %9, align 8
  %80 = load %struct.tlock*, %struct.tlock** %9, align 8
  %81 = getelementptr inbounds %struct.tlock, %struct.tlock* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to %struct.pxd_lock*
  store %struct.pxd_lock* %82, %struct.pxd_lock** %10, align 8
  %83 = load %struct.pxd_lock*, %struct.pxd_lock** %10, align 8
  store %struct.pxd_lock* %83, %struct.pxd_lock** %11, align 8
  %84 = load %struct.pxd_lock*, %struct.pxd_lock** %10, align 8
  %85 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %72
  %87 = load i32, i32* @mlckFREEPXD, align 4
  %88 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %89 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %91 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = call i32 @addressDXD(%struct.TYPE_6__* %92)
  %94 = call i32 @PXDaddress(i32* %91, i32 %93)
  %95 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %96 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = call i32 @lengthDXD(%struct.TYPE_6__* %97)
  %99 = call i32 @PXDlength(i32* %96, i32 %98)
  %100 = load %struct.pxd_lock*, %struct.pxd_lock** %10, align 8
  %101 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %86, %65, %60
  ret void
}

declare dso_local %struct.tlock* @txMaplock(i32, %struct.inode*, i32) #1

declare dso_local i32 @PXDaddress(i32*, i32) #1

declare dso_local i32 @addressDXD(%struct.TYPE_6__*) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i32 @lengthDXD(%struct.TYPE_6__*) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
