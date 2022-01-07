; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32*, %struct.qstr }
%struct.qstr = type { i32 }
%struct.nameidata = type { i32 }
%struct.ctl_table_header = type { %struct.ctl_table*, %struct.ctl_table*, %struct.ctl_table* }
%struct.ctl_table = type { %struct.ctl_table* }
%struct.TYPE_2__ = type { %struct.ctl_table* }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_sys_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @proc_sys_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_sys_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.ctl_table_header*, align 8
  %9 = alloca %struct.ctl_table*, align 8
  %10 = alloca %struct.ctl_table_header*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca %struct.ctl_table*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.ctl_table_header* @grab_header(%struct.inode* %15)
  store %struct.ctl_table_header* %16, %struct.ctl_table_header** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ctl_table*, %struct.ctl_table** %19, align 8
  store %struct.ctl_table* %20, %struct.ctl_table** %9, align 8
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  store %struct.qstr* %22, %struct.qstr** %11, align 8
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dentry* @ERR_PTR(i32 %24)
  store %struct.dentry* %25, %struct.dentry** %14, align 8
  %26 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %27 = call i64 @IS_ERR(%struct.ctl_table_header* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %31 = call %struct.dentry* @ERR_CAST(%struct.ctl_table_header* %30)
  store %struct.dentry* %31, %struct.dentry** %4, align 8
  br label %126

32:                                               ; preds = %3
  %33 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %34 = icmp ne %struct.ctl_table* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %37 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %36, i32 0, i32 0
  %38 = load %struct.ctl_table*, %struct.ctl_table** %37, align 8
  %39 = icmp ne %struct.ctl_table* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 @WARN_ON(i32 1)
  br label %122

42:                                               ; preds = %35, %32
  %43 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %44 = icmp ne %struct.ctl_table* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %47 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %46, i32 0, i32 0
  %48 = load %struct.ctl_table*, %struct.ctl_table** %47, align 8
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %51 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %50, i32 0, i32 2
  %52 = load %struct.ctl_table*, %struct.ctl_table** %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi %struct.ctl_table* [ %48, %45 ], [ %52, %49 ]
  store %struct.ctl_table* %54, %struct.ctl_table** %9, align 8
  %55 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %56 = load %struct.qstr*, %struct.qstr** %11, align 8
  %57 = call %struct.ctl_table* @find_in_table(%struct.ctl_table* %55, %struct.qstr* %56)
  store %struct.ctl_table* %57, %struct.ctl_table** %12, align 8
  %58 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %59 = icmp ne %struct.ctl_table* %58, null
  br i1 %59, label %86, label %60

60:                                               ; preds = %53
  %61 = call %struct.ctl_table_header* @sysctl_head_next(%struct.ctl_table_header* null)
  store %struct.ctl_table_header* %61, %struct.ctl_table_header** %10, align 8
  br label %62

62:                                               ; preds = %82, %60
  %63 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %64 = icmp ne %struct.ctl_table_header* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %67 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %66, i32 0, i32 1
  %68 = load %struct.ctl_table*, %struct.ctl_table** %67, align 8
  %69 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %70 = icmp ne %struct.ctl_table* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %82

72:                                               ; preds = %65
  %73 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %74 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %73, i32 0, i32 0
  %75 = load %struct.ctl_table*, %struct.ctl_table** %74, align 8
  %76 = load %struct.qstr*, %struct.qstr** %11, align 8
  %77 = call %struct.ctl_table* @find_in_table(%struct.ctl_table* %75, %struct.qstr* %76)
  store %struct.ctl_table* %77, %struct.ctl_table** %12, align 8
  %78 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %79 = icmp ne %struct.ctl_table* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %85

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %71
  %83 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %84 = call %struct.ctl_table_header* @sysctl_head_next(%struct.ctl_table_header* %83)
  store %struct.ctl_table_header* %84, %struct.ctl_table_header** %10, align 8
  br label %62

85:                                               ; preds = %80, %62
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %88 = icmp ne %struct.ctl_table* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %122

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.dentry* @ERR_PTR(i32 %92)
  store %struct.dentry* %93, %struct.dentry** %14, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %98 = icmp ne %struct.ctl_table_header* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  br label %103

101:                                              ; preds = %90
  %102 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi %struct.ctl_table_header* [ %100, %99 ], [ %102, %101 ]
  %105 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %106 = call %struct.inode* @proc_sys_make_inode(i32 %96, %struct.ctl_table_header* %104, %struct.ctl_table* %105)
  store %struct.inode* %106, %struct.inode** %13, align 8
  %107 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %108 = icmp ne %struct.ctl_table_header* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %111 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.inode*, %struct.inode** %13, align 8
  %114 = icmp ne %struct.inode* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %122

116:                                              ; preds = %112
  store %struct.dentry* null, %struct.dentry** %14, align 8
  %117 = load %struct.dentry*, %struct.dentry** %6, align 8
  %118 = getelementptr inbounds %struct.dentry, %struct.dentry* %117, i32 0, i32 0
  store i32* @proc_sys_dentry_operations, i32** %118, align 8
  %119 = load %struct.dentry*, %struct.dentry** %6, align 8
  %120 = load %struct.inode*, %struct.inode** %13, align 8
  %121 = call i32 @d_add(%struct.dentry* %119, %struct.inode* %120)
  br label %122

122:                                              ; preds = %116, %115, %89, %40
  %123 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %124 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %123)
  %125 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %125, %struct.dentry** %4, align 8
  br label %126

126:                                              ; preds = %122, %29
  %127 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %127
}

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.ctl_table_header*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ctl_table* @find_in_table(%struct.ctl_table*, %struct.qstr*) #1

declare dso_local %struct.ctl_table_header* @sysctl_head_next(%struct.ctl_table_header*) #1

declare dso_local %struct.inode* @proc_sys_make_inode(i32, %struct.ctl_table_header*, %struct.ctl_table*) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
