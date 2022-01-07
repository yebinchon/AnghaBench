; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fs/afs\00", align 1
@proc_afs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"cells\00", align 1
@afs_proc_cells_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rootcell\00", align 1
@afs_proc_rootcell_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_proc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.proc_dir_entry*, align 8
  %3 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = call i32* @proc_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %4, i32** @proc_afs, align 8
  %5 = load i32*, i32** @proc_afs, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %27

8:                                                ; preds = %0
  %9 = load i32*, i32** @proc_afs, align 8
  %10 = call %struct.proc_dir_entry* @proc_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %9, i32* @afs_proc_cells_fops)
  store %struct.proc_dir_entry* %10, %struct.proc_dir_entry** %2, align 8
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %12 = icmp ne %struct.proc_dir_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %25

14:                                               ; preds = %8
  %15 = load i32*, i32** @proc_afs, align 8
  %16 = call %struct.proc_dir_entry* @proc_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %15, i32* @afs_proc_rootcell_fops)
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %2, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %18 = icmp ne %struct.proc_dir_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** @proc_afs, align 8
  %24 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %23)
  br label %25

25:                                               ; preds = %22, %13
  %26 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %27

27:                                               ; preds = %25, %7
  %28 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32* @proc_mkdir(i8*, i32*) #1

declare dso_local %struct.proc_dir_entry* @proc_create(i8*, i32, i32*, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
