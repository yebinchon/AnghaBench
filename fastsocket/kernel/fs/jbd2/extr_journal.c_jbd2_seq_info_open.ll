; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_seq_info_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_seq_info_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.jbd2_stats_proc_session* }
%struct.jbd2_stats_proc_session = type { %struct.jbd2_stats_proc_session*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jbd2_seq_info_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @jbd2_seq_info_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_seq_info_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.jbd2_stats_proc_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_4__* @PDE(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 16, i32 %15)
  %17 = bitcast i8* %16 to %struct.jbd2_stats_proc_session*
  store %struct.jbd2_stats_proc_session* %17, %struct.jbd2_stats_proc_session** %7, align 8
  %18 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %19 = icmp eq %struct.jbd2_stats_proc_session* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.jbd2_stats_proc_session*
  %28 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %29 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %28, i32 0, i32 0
  store %struct.jbd2_stats_proc_session* %27, %struct.jbd2_stats_proc_session** %29, align 8
  %30 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %31 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %30, i32 0, i32 0
  %32 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %31, align 8
  %33 = icmp eq %struct.jbd2_stats_proc_session* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %36 = call i32 @kfree(%struct.jbd2_stats_proc_session* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %76

39:                                               ; preds = %23
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %44 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %43, i32 0, i32 0
  %45 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @memcpy(%struct.jbd2_stats_proc_session* %45, i32* %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %52 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %51, i32 0, i32 1
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = call i32 @seq_open(%struct.file* %56, i32* @jbd2_seq_info_ops)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %39
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load %struct.seq_file*, %struct.seq_file** %62, align 8
  store %struct.seq_file* %63, %struct.seq_file** %10, align 8
  %64 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %65 = load %struct.seq_file*, %struct.seq_file** %10, align 8
  %66 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %65, i32 0, i32 0
  store %struct.jbd2_stats_proc_session* %64, %struct.jbd2_stats_proc_session** %66, align 8
  br label %74

67:                                               ; preds = %39
  %68 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %69 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %68, i32 0, i32 0
  %70 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %69, align 8
  %71 = call i32 @kfree(%struct.jbd2_stats_proc_session* %70)
  %72 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %7, align 8
  %73 = call i32 @kfree(%struct.jbd2_stats_proc_session* %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %34, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_4__* @PDE(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.jbd2_stats_proc_session*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.jbd2_stats_proc_session*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
