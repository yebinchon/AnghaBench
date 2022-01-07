; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_fill_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode*, i32*, i32 }
%struct.inode = type { i32, i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }
%struct.qstr = type { i32, i32, i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_sys_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i32, i32, i32, i32, i32)*, %struct.ctl_table_header*, %struct.ctl_table*)* @proc_sys_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_fill_cache(%struct.file* %0, i8* %1, i32 (i8*, i32, i32, i32, i32, i32)* %2, %struct.ctl_table_header* %3, %struct.ctl_table* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i32, i32, i32, i32, i32)*, align 8
  %10 = alloca %struct.ctl_table_header*, align 8
  %11 = alloca %struct.ctl_table*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.qstr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i8*, i32, i32, i32, i32, i32)* %2, i32 (i8*, i32, i32, i32, i32, i32)** %9, align 8
  store %struct.ctl_table_header* %3, %struct.ctl_table_header** %10, align 8
  store %struct.ctl_table* %4, %struct.ctl_table** %11, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %13, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %24 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %28 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @full_name_hash(i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.dentry*, %struct.dentry** %13, align 8
  %39 = call %struct.dentry* @d_lookup(%struct.dentry* %38, %struct.qstr* %15)
  store %struct.dentry* %39, %struct.dentry** %12, align 8
  %40 = load %struct.dentry*, %struct.dentry** %12, align 8
  %41 = icmp ne %struct.dentry* %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %5
  %43 = load %struct.dentry*, %struct.dentry** %13, align 8
  %44 = call %struct.dentry* @d_alloc(%struct.dentry* %43, %struct.qstr* %15)
  store %struct.dentry* %44, %struct.dentry** %12, align 8
  %45 = load %struct.dentry*, %struct.dentry** %12, align 8
  %46 = icmp ne %struct.dentry* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.dentry*, %struct.dentry** %13, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %52 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %53 = call %struct.inode* @proc_sys_make_inode(i32 %50, %struct.ctl_table_header* %51, %struct.ctl_table* %52)
  store %struct.inode* %53, %struct.inode** %14, align 8
  %54 = load %struct.inode*, %struct.inode** %14, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %47
  %57 = load %struct.dentry*, %struct.dentry** %12, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %101

61:                                               ; preds = %47
  %62 = load %struct.dentry*, %struct.dentry** %12, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 1
  store i32* @proc_sys_dentry_operations, i32** %63, align 8
  %64 = load %struct.dentry*, %struct.dentry** %12, align 8
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = call i32 @d_add(%struct.dentry* %64, %struct.inode* %65)
  br label %67

67:                                               ; preds = %61
  br label %71

68:                                               ; preds = %42
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %101

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %5
  %73 = load %struct.dentry*, %struct.dentry** %12, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = load %struct.inode*, %struct.inode** %74, align 8
  store %struct.inode* %75, %struct.inode** %14, align 8
  %76 = load %struct.inode*, %struct.inode** %14, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %16, align 4
  %79 = load %struct.inode*, %struct.inode** %14, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 12
  store i32 %82, i32* %17, align 4
  %83 = load %struct.dentry*, %struct.dentry** %12, align 8
  %84 = call i32 @dput(%struct.dentry* %83)
  %85 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 %85(i8* %86, i32 %88, i32 %90, i32 %93, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %72, %68, %56
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @full_name_hash(i32, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.inode* @proc_sys_make_inode(i32, %struct.ctl_table_header*, %struct.ctl_table*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
