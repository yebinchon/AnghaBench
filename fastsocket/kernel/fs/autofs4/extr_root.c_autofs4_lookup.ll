; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.autofs_info*, i32, i32*, %struct.TYPE_4__ }
%struct.autofs_info = type { %struct.dentry* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.autofs_sb_info = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"name = %.*s\00", align 1
@NAME_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pid = %u, pgrp = %u, catatonic = %d\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@autofs4_dentry_operations = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @autofs4_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs4_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_info*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i64, i32, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %18)
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NAME_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @ENAMETOOLONG, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dentry* @ERR_PTR(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %4, align 8
  br label %103

30:                                               ; preds = %3
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %33)
  store %struct.autofs_sb_info* %34, %struct.autofs_sb_info** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %40 = call i32 @task_pgrp_nr(%struct.TYPE_5__* %39)
  %41 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %42 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i64, i32, ...) @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %40, i32 %43)
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call %struct.dentry* @autofs4_lookup_active(%struct.dentry* %45)
  store %struct.dentry* %46, %struct.dentry** %10, align 8
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %30
  %50 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  br label %103

51:                                               ; preds = %30
  %52 = load %struct.dentry*, %struct.dentry** %6, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 2
  store i32* @autofs4_dentry_operations, i32** %53, align 8
  %54 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %55 = call i32 @autofs4_oz_mode(%struct.autofs_sb_info* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ROOT(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.dentry* @ERR_PTR(i32 %65)
  store %struct.dentry* %66, %struct.dentry** %4, align 8
  br label %103

67:                                               ; preds = %57, %51
  %68 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %69 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @autofs_type_indirect(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ROOT(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = call i32 @__managed_dentry_set_managed(%struct.dentry* %80)
  br label %82

82:                                               ; preds = %79, %73, %67
  %83 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %84 = call %struct.autofs_info* @autofs4_init_ino(i32* null, %struct.autofs_sb_info* %83, i32 365)
  store %struct.autofs_info* %84, %struct.autofs_info** %9, align 8
  %85 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %86 = icmp ne %struct.autofs_info* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.dentry* @ERR_PTR(i32 %89)
  store %struct.dentry* %90, %struct.dentry** %4, align 8
  br label %103

91:                                               ; preds = %82
  %92 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  store %struct.autofs_info* %92, %struct.autofs_info** %94, align 8
  %95 = load %struct.dentry*, %struct.dentry** %6, align 8
  %96 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %97 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %96, i32 0, i32 0
  store %struct.dentry* %95, %struct.dentry** %97, align 8
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = call i32 @autofs4_add_active(%struct.dentry* %98)
  %100 = load %struct.dentry*, %struct.dentry** %6, align 8
  %101 = call i32 @d_instantiate(%struct.dentry* %100, i32* null)
  br label %102

102:                                              ; preds = %91
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %103

103:                                              ; preds = %102, %87, %63, %49, %26
  %104 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %104
}

declare dso_local i32 @DPRINTK(i8*, i64, i32, ...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local i32 @task_pgrp_nr(%struct.TYPE_5__*) #1

declare dso_local %struct.dentry* @autofs4_lookup_active(%struct.dentry*) #1

declare dso_local i32 @autofs4_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i64 @IS_ROOT(i32) #1

declare dso_local i64 @autofs_type_indirect(i32) #1

declare dso_local i32 @__managed_dentry_set_managed(%struct.dentry*) #1

declare dso_local %struct.autofs_info* @autofs4_init_ino(i32*, %struct.autofs_sb_info*, i32) #1

declare dso_local i32 @autofs4_add_active(%struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
