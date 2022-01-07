; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, %struct.TYPE_4__*, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.proc_dir_entry = type { %struct.TYPE_4__*, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.proc_dir_entry*, i64 }

@I_NEW = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@proc_reg_file_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@proc_reg_file_ops_no_compat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @proc_get_inode(%struct.super_block* %0, i32 %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.inode* @iget_locked(%struct.super_block* %9, i32 %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %119

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I_NEW, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %15
  %23 = load i32, i32* @CURRENT_TIME, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 9
  store i32 %23, i32* %27, align 4
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 10
  store i32 %23, i32* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.TYPE_5__* @PROC_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call %struct.TYPE_5__* @PROC_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.proc_dir_entry* %33, %struct.proc_dir_entry** %36, align 8
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %38 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %22
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %43 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %48 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %53 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %41, %22
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %59 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %64 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %70 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %75 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %81 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %86 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %92 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = icmp ne %struct.TYPE_4__* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @S_ISREG(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  store %struct.TYPE_4__* @proc_reg_file_ops, %struct.TYPE_4__** %103, align 8
  br label %110

104:                                              ; preds = %95
  %105 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %106 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %109, align 8
  br label %110

110:                                              ; preds = %104, %101
  br label %111

111:                                              ; preds = %110, %90
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = call i32 @unlock_new_inode(%struct.inode* %112)
  br label %117

114:                                              ; preds = %15
  %115 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %116 = call i32 @de_put(%struct.proc_dir_entry* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %118, %struct.inode** %4, align 8
  br label %119

119:                                              ; preds = %117, %14
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %120
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_5__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @de_put(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
