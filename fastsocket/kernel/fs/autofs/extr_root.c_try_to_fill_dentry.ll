; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_try_to_fill_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_try_to_fill_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, i32, %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_dir_ent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"autofs warning: lookup failure on positive dentry, status = %d, name = %s\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@AUTOFS_NEGATIVE_TIMEOUT = common dso_local global i64 0, align 8
@DCACHE_AUTOFS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.super_block*, %struct.autofs_sb_info*)* @try_to_fill_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_fill_dentry(%struct.dentry* %0, %struct.super_block* %1, %struct.autofs_sb_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.autofs_dir_ent*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store %struct.autofs_sb_info* %2, %struct.autofs_sb_info** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %12 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 2
  %15 = call %struct.autofs_dir_ent* @autofs_hash_lookup(i32* %12, %struct.TYPE_3__* %14)
  store %struct.autofs_dir_ent* %15, %struct.autofs_dir_ent** %9, align 8
  %16 = icmp ne %struct.autofs_dir_ent* %15, null
  br i1 %16, label %75, label %17

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %66, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 3
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %134

39:                                               ; preds = %21, %18
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @AUTOFS_NEGATIVE_TIMEOUT, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @DCACHE_AUTOFS_PENDING, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  store i32 1, i32* %4, align 4
  br label %134

56:                                               ; preds = %39
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %134

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 2
  %65 = call i32 @autofs_wait(%struct.autofs_sb_info* %62, %struct.TYPE_3__* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %68 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %67, i32 0, i32 0
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 2
  %71 = call %struct.autofs_dir_ent* @autofs_hash_lookup(i32* %68, %struct.TYPE_3__* %70)
  store %struct.autofs_dir_ent* %71, %struct.autofs_dir_ent** %9, align 8
  %72 = icmp ne %struct.autofs_dir_ent* %71, null
  %73 = xor i1 %72, true
  br i1 %73, label %18, label %74

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %3
  %76 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %9, align 8
  %77 = ptrtoint %struct.autofs_dir_ent* %76 to i64
  %78 = load %struct.dentry*, %struct.dentry** %5, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 3
  %82 = load %struct.inode*, %struct.inode** %81, align 8
  %83 = icmp ne %struct.inode* %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %75
  %85 = load %struct.super_block*, %struct.super_block** %6, align 8
  %86 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %9, align 8
  %87 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.inode* @autofs_iget(%struct.super_block* %85, i32 %88)
  store %struct.inode* %89, %struct.inode** %8, align 8
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i64 @IS_ERR(%struct.inode* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %134

94:                                               ; preds = %84
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = load %struct.dentry*, %struct.dentry** %5, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 3
  store %struct.inode* %95, %struct.inode** %97, align 8
  br label %98

98:                                               ; preds = %94, %75
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 3
  %101 = load %struct.inode*, %struct.inode** %100, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @S_ISDIR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.dentry*, %struct.dentry** %5, align 8
  %108 = call i32 @d_mountpoint(%struct.dentry* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %112 = load %struct.dentry*, %struct.dentry** %5, align 8
  %113 = getelementptr inbounds %struct.dentry, %struct.dentry* %112, i32 0, i32 2
  %114 = call i32 @autofs_wait(%struct.autofs_sb_info* %111, %struct.TYPE_3__* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %134

118:                                              ; preds = %106, %98
  %119 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %120 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %124 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %123, i32 0, i32 0
  %125 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %9, align 8
  %126 = call i32 @autofs_update_usage(i32* %124, %struct.autofs_dir_ent* %125)
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i32, i32* @DCACHE_AUTOFS_PENDING, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.dentry*, %struct.dentry** %5, align 8
  %131 = getelementptr inbounds %struct.dentry, %struct.dentry* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %127, %110, %93, %59, %44, %38
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.autofs_dir_ent* @autofs_hash_lookup(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @autofs_wait(%struct.autofs_sb_info*, %struct.TYPE_3__*) #1

declare dso_local %struct.inode* @autofs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @autofs_update_usage(i32*, %struct.autofs_dir_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
