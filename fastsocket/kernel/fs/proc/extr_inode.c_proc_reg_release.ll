; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.proc_dir_entry = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.file*)* }
%struct.pde_opener = type { i32 (%struct.inode.0*, %struct.file.1*)*, i32 }
%struct.inode.0 = type opaque
%struct.file.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_reg_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_reg_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.inode*, %struct.file*)*, align 8
  %9 = alloca %struct.pde_opener*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.proc_dir_entry* @PDE(%struct.inode* %10)
  store %struct.proc_dir_entry* %11, %struct.proc_dir_entry** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %13 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.pde_opener* @find_pde_opener(%struct.proc_dir_entry* %15, %struct.inode* %16, %struct.file* %17)
  store %struct.pde_opener* %18, %struct.pde_opener** %9, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %20 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %2
  %24 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %25 = icmp ne %struct.pde_opener* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %28 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %34 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %33, i32 0, i32 0
  %35 = load i32 (%struct.inode.0*, %struct.file.1*)*, i32 (%struct.inode.0*, %struct.file.1*)** %34, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = bitcast %struct.inode* %36 to %struct.inode.0*
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = bitcast %struct.file* %38 to %struct.file.1*
  %40 = call i32 %35(%struct.inode.0* %37, %struct.file.1* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %42 = call i32 @kfree(%struct.pde_opener* %41)
  br label %47

43:                                               ; preds = %23
  %44 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %45 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %43, %26
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %82

49:                                               ; preds = %2
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %51 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %55 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %57, align 8
  store i32 (%struct.inode*, %struct.file*)* %58, i32 (%struct.inode*, %struct.file*)** %8, align 8
  %59 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %60 = icmp ne %struct.pde_opener* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %63 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %62, i32 0, i32 1
  %64 = call i32 @list_del(i32* %63)
  %65 = load %struct.pde_opener*, %struct.pde_opener** %9, align 8
  %66 = call i32 @kfree(%struct.pde_opener* %65)
  br label %67

67:                                               ; preds = %61, %49
  %68 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %69 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %8, align 8
  %72 = icmp ne i32 (%struct.inode*, %struct.file*)* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %8, align 8
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = call i32 %74(%struct.inode* %75, %struct.file* %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %80 = call i32 @pde_users_dec(%struct.proc_dir_entry* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %47
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pde_opener* @find_pde_opener(%struct.proc_dir_entry*, %struct.inode*, %struct.file*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pde_opener*) #1

declare dso_local i32 @pde_users_dec(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
