; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.proc_dir_entry = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)* }
%struct.pde_opener = type { i32 (%struct.inode.0*, %struct.file.1*)*, i32, %struct.file*, %struct.inode* }
%struct.inode.0 = type opaque
%struct.file.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_reg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_reg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.inode*, %struct.file*)*, align 8
  %9 = alloca i32 (%struct.inode*, %struct.file*)*, align 8
  %10 = alloca %struct.pde_opener*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.proc_dir_entry* @PDE(%struct.inode* %11)
  store %struct.proc_dir_entry* %12, %struct.proc_dir_entry** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pde_opener* @kmalloc(i32 32, i32 %13)
  store %struct.pde_opener* %14, %struct.pde_opener** %10, align 8
  %15 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %16 = icmp ne %struct.pde_opener* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %25 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %30 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %33 = call i32 @kfree(%struct.pde_opener* %32)
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %96

36:                                               ; preds = %20
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %38 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %42 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %44, align 8
  store i32 (%struct.inode*, %struct.file*)* %45, i32 (%struct.inode*, %struct.file*)** %8, align 8
  %46 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %47 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %49, align 8
  store i32 (%struct.inode*, %struct.file*)* %50, i32 (%struct.inode*, %struct.file*)** %9, align 8
  %51 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %52 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %8, align 8
  %55 = icmp ne i32 (%struct.inode*, %struct.file*)* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = call i32 %57(%struct.inode* %58, %struct.file* %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %36
  %62 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %63 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %9, align 8
  %69 = icmp ne i32 (%struct.inode*, %struct.file*)* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %73 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %72, i32 0, i32 3
  store %struct.inode* %71, %struct.inode** %73, align 8
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %76 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %75, i32 0, i32 2
  store %struct.file* %74, %struct.file** %76, align 8
  %77 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %9, align 8
  %78 = bitcast i32 (%struct.inode*, %struct.file*)* %77 to i32 (%struct.inode.0*, %struct.file.1*)*
  %79 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %80 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %79, i32 0, i32 0
  store i32 (%struct.inode.0*, %struct.file.1*)* %78, i32 (%struct.inode.0*, %struct.file.1*)** %80, align 8
  %81 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %82 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %81, i32 0, i32 1
  %83 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %84 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %83, i32 0, i32 1
  %85 = call i32 @list_add(i32* %82, i32* %84)
  br label %89

86:                                               ; preds = %67, %61
  %87 = load %struct.pde_opener*, %struct.pde_opener** %10, align 8
  %88 = call i32 @kfree(%struct.pde_opener* %87)
  br label %89

89:                                               ; preds = %86, %70
  %90 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %91 = call i32 @__pde_users_dec(%struct.proc_dir_entry* %90)
  %92 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %93 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %28, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local %struct.pde_opener* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pde_opener*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__pde_users_dec(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
