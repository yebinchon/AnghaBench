; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtModify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.component_name = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.btstack = type { i32 }
%struct.tlock = type { i32 }
%struct.dt_lock = type { i32, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.ldtentry = type { i32 }

@tlckDTREE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtModify(i32 %0, %struct.inode* %1, %struct.component_name* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.component_name*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.metapage*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.btstack, align 4
  %20 = alloca %struct.tlock*, align 8
  %21 = alloca %struct.dt_lock*, align 8
  %22 = alloca %struct.lv*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.ldtentry*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.component_name* %2, %struct.component_name** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = load %struct.component_name*, %struct.component_name** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @dtSearch(%struct.inode* %26, %struct.component_name* %27, i32* %28, %struct.btstack* %19, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %95

34:                                               ; preds = %6
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.btstack, %struct.btstack* %19, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.metapage*, %struct.metapage** %16, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @DT_GETSEARCH(%struct.inode* %35, i32 %37, i32 %38, %struct.metapage* %39, %struct.TYPE_4__* %40, i32 %41)
  %43 = load %struct.metapage*, %struct.metapage** %16, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @BT_MARK_DIRTY(%struct.metapage* %43, %struct.inode* %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = load %struct.metapage*, %struct.metapage** %16, align 8
  %49 = load i32, i32* @tlckDTREE, align 4
  %50 = load i32, i32* @tlckENTRY, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.tlock* @txLock(i32 %46, %struct.inode* %47, %struct.metapage* %48, i32 %51)
  store %struct.tlock* %52, %struct.tlock** %20, align 8
  %53 = load %struct.tlock*, %struct.tlock** %20, align 8
  %54 = getelementptr inbounds %struct.tlock, %struct.tlock* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to %struct.dt_lock*
  store %struct.dt_lock* %55, %struct.dt_lock** %21, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %57 = call i32* @DT_GETSTBL(%struct.TYPE_4__* %56)
  store i32* %57, i32** %23, align 8
  %58 = load i32*, i32** %23, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %24, align 4
  %63 = load %struct.dt_lock*, %struct.dt_lock** %21, align 8
  %64 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.dt_lock*, %struct.dt_lock** %21, align 8
  %70 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %69, i32 0, i32 1
  %71 = load %struct.lv*, %struct.lv** %70, align 8
  %72 = getelementptr inbounds %struct.lv, %struct.lv* %71, i64 0
  store %struct.lv* %72, %struct.lv** %22, align 8
  %73 = load i32, i32* %24, align 4
  %74 = load %struct.lv*, %struct.lv** %22, align 8
  %75 = getelementptr inbounds %struct.lv, %struct.lv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.lv*, %struct.lv** %22, align 8
  %77 = getelementptr inbounds %struct.lv, %struct.lv* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.dt_lock*, %struct.dt_lock** %21, align 8
  %79 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %24, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to %struct.ldtentry*
  store %struct.ldtentry* %88, %struct.ldtentry** %25, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.ldtentry*, %struct.ldtentry** %25, align 8
  %92 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.metapage*, %struct.metapage** %16, align 8
  %94 = call i32 @DT_PUTPAGE(%struct.metapage* %93)
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %34, %32
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @DT_GETSEARCH(%struct.inode*, i32, i32, %struct.metapage*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32* @DT_GETSTBL(%struct.TYPE_4__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
