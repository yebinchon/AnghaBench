; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_remove_flock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_remove_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.file = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.file_lock = type { %struct.file_lock*, %struct.file*, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.file_lock*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { %struct.file_lock* }

@OFFSET_MAX = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@FL_FLOCK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@F_SETLKW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_remove_flock(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock**, align 8
  %6 = alloca %struct.file_lock, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %3, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.file_lock*, %struct.file_lock** %14, align 8
  %16 = icmp ne %struct.file_lock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.file*, %struct.file** %2, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %18
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %27, align 8
  %29 = icmp ne i32 (%struct.file*, i32, %struct.file_lock*)* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 0
  store %struct.file_lock* null, %struct.file_lock** %31, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 1
  %33 = load %struct.file*, %struct.file** %2, align 8
  store %struct.file* %33, %struct.file** %32, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %34, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 3
  %36 = load i32, i32* @OFFSET_MAX, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 4
  %38 = load i32, i32* @F_UNLCK, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 5
  %40 = load i32, i32* @FL_FLOCK, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 6
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = load %struct.file*, %struct.file** %2, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %48, align 8
  %50 = load %struct.file*, %struct.file** %2, align 8
  %51 = load i32, i32* @F_SETLKW, align 4
  %52 = call i32 %49(%struct.file* %50, i32 %51, %struct.file_lock* %6)
  %53 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %30
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %59, align 8
  %61 = icmp ne i32 (%struct.file_lock*)* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %65, align 8
  %67 = call i32 %66(%struct.file_lock* %6)
  br label %68

68:                                               ; preds = %62, %56, %30
  br label %69

69:                                               ; preds = %68, %23, %18
  %70 = call i32 (...) @lock_kernel()
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  store %struct.file_lock** %72, %struct.file_lock*** %5, align 8
  br label %73

73:                                               ; preds = %100, %94, %87, %69
  %74 = load %struct.file_lock**, %struct.file_lock*** %5, align 8
  %75 = load %struct.file_lock*, %struct.file_lock** %74, align 8
  store %struct.file_lock* %75, %struct.file_lock** %4, align 8
  %76 = icmp ne %struct.file_lock* %75, null
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %79 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %78, i32 0, i32 1
  %80 = load %struct.file*, %struct.file** %79, align 8
  %81 = load %struct.file*, %struct.file** %2, align 8
  %82 = icmp eq %struct.file* %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %85 = call i64 @IS_FLOCK(%struct.file_lock* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.file_lock**, %struct.file_lock*** %5, align 8
  %89 = call i32 @locks_delete_lock(%struct.file_lock** %88)
  br label %73

90:                                               ; preds = %83
  %91 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %92 = call i64 @IS_LEASE(%struct.file_lock* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.file_lock**, %struct.file_lock*** %5, align 8
  %96 = load i32, i32* @F_UNLCK, align 4
  %97 = call i32 @lease_modify(%struct.file_lock** %95, i32 %96)
  br label %73

98:                                               ; preds = %90
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %98, %77
  %101 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %102 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %101, i32 0, i32 0
  store %struct.file_lock** %102, %struct.file_lock*** %5, align 8
  br label %73

103:                                              ; preds = %73
  %104 = call i32 (...) @unlock_kernel()
  br label %105

105:                                              ; preds = %103, %17
  ret void
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @IS_FLOCK(%struct.file_lock*) #1

declare dso_local i32 @locks_delete_lock(%struct.file_lock**) #1

declare dso_local i64 @IS_LEASE(%struct.file_lock*) #1

declare dso_local i32 @lease_modify(%struct.file_lock**, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
