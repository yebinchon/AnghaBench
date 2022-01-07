; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_cell_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_cell_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_cell = type { i8*, i32 }
%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p{%s}\00", align 1
@proc_afs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@afs_proc_cell_servers_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"vlservers\00", align 1
@afs_proc_cell_vlservers_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"volumes\00", align 1
@afs_proc_cell_volumes_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_proc_cell_setup(%struct.afs_cell* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_cell*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  store %struct.afs_cell* %0, %struct.afs_cell** %3, align 8
  %5 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %6 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %7 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.afs_cell* %5, i8* %8)
  %10 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %11 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @proc_afs, align 4
  %14 = call i32 @proc_mkdir(i8* %12, i32 %13)
  %15 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %16 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %18 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %24 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %27 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %25, i32* @afs_proc_cell_servers_fops, %struct.afs_cell* %26)
  store %struct.proc_dir_entry* %27, %struct.proc_dir_entry** %4, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %29 = icmp ne %struct.proc_dir_entry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %61

31:                                               ; preds = %22
  %32 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %33 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %36 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %34, i32* @afs_proc_cell_vlservers_fops, %struct.afs_cell* %35)
  store %struct.proc_dir_entry* %36, %struct.proc_dir_entry** %4, align 8
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %38 = icmp ne %struct.proc_dir_entry* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %56

40:                                               ; preds = %31
  %41 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %42 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %45 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %43, i32* @afs_proc_cell_volumes_fops, %struct.afs_cell* %44)
  store %struct.proc_dir_entry* %45, %struct.proc_dir_entry** %4, align 8
  %46 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %47 = icmp ne %struct.proc_dir_entry* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %51

49:                                               ; preds = %40
  %50 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

51:                                               ; preds = %48
  %52 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %53 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %58 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %30
  %62 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %63 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @proc_afs, align 4
  %66 = call i32 @remove_proc_entry(i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %21
  %68 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %49
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @_enter(i8*, %struct.afs_cell*, i8*) #1

declare dso_local i32 @proc_mkdir(i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, i32, i32*, %struct.afs_cell*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
