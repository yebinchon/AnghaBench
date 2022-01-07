; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_jbd2_journal_file_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_jbd2_journal_file_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.jbd2_inode = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Adding inode %lu, tid:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_file_inode(%struct.TYPE_10__* %0, %struct.jbd2_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.jbd2_inode*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.jbd2_inode* %1, %struct.jbd2_inode** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i64 @is_handle_aborted(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %22 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @jbd_debug(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = icmp eq %struct.TYPE_8__* %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %20
  %36 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = icmp eq %struct.TYPE_8__* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %20
  store i32 0, i32* %3, align 4
  br label %110

42:                                               ; preds = %35
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %47 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = icmp eq %struct.TYPE_8__* %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %53 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = icmp eq %struct.TYPE_8__* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %42
  br label %106

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %68 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %73 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = icmp eq %struct.TYPE_8__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @J_ASSERT(i32 %76)
  %78 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %79 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp eq %struct.TYPE_8__* %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @J_ASSERT(i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %89 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %88, i32 0, i32 2
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %89, align 8
  br label %106

90:                                               ; preds = %66
  %91 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %92 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @J_ASSERT(i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %100 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %99, i32 0, i32 1
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %102 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = call i32 @list_add(i32* %102, i32* %104)
  br label %106

106:                                              ; preds = %90, %71, %57
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %41, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @is_handle_aborted(%struct.TYPE_10__*) #1

declare dso_local i32 @jbd_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
