; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_mandatory_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_mandatory_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i32, i32, i32, i8*, i8*, i32, %struct.file*, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@FL_ACCESS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FL_SLEEP = common dso_local global i32 0, align 4
@FLOCK_VERIFY_WRITE = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@FILE_LOCK_DEFERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locks_mandatory_area(i32 %0, %struct.inode* %1, %struct.file* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.file_lock, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i32 @locks_init_lock(%struct.file_lock* %11)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 7
  store i32 %20, i32* %21, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 6
  store %struct.file* %22, %struct.file** %23, align 8
  %24 = load i32, i32* @FL_POSIX, align 4
  %25 = load i32, i32* @FL_ACCESS, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = icmp ne %struct.file* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %5
  %31 = load %struct.file*, %struct.file** %8, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @FL_SLEEP, align 4
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %30, %5
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FLOCK_VERIFY_WRITE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @F_WRLCK, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @F_RDLCK, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = getelementptr i8, i8* %57, i64 -1
  %59 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %82, %50
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @__posix_lock_file(%struct.inode* %61, %struct.file_lock* %11, i32* null)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @FILE_LOCK_DEFERRED, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %86

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @wait_event_interruptible(i32 %69, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %67
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call i64 @__mandatory_lock(%struct.inode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %60

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %67
  %85 = call i32 @locks_delete_block(%struct.file_lock* %11)
  br label %86

86:                                               ; preds = %84, %66
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @__posix_lock_file(%struct.inode*, %struct.file_lock*, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @__mandatory_lock(%struct.inode*) #1

declare dso_local i32 @locks_delete_block(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
