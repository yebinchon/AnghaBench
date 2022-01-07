; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.mutex = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i64, %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, i64 }
%struct.config_item = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.configfs_subsystem = type { %struct.mutex, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.module* }
%struct.TYPE_12__ = type { %struct.configfs_subsystem* }

@configfs_sb = common dso_local global %struct.TYPE_13__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@CONFIGFS_USET_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@configfs_symlink_mutex = common dso_local global %struct.mutex zeroinitializer, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CONFIGFS_USET_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @configfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.configfs_subsystem*, align 8
  %9 = alloca %struct.configfs_dirent*, align 8
  %10 = alloca %struct.module*, align 8
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mutex*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.module* null, %struct.module** %10, align 8
  store %struct.module* null, %struct.module** %11, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @configfs_sb, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %185

24:                                               ; preds = %2
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = load %struct.configfs_dirent*, %struct.configfs_dirent** %26, align 8
  store %struct.configfs_dirent* %27, %struct.configfs_dirent** %9, align 8
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %29 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CONFIGFS_USET_DEFAULT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %185

37:                                               ; preds = %24
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.dentry*
  %42 = call %struct.config_item* @configfs_get_config_item(%struct.dentry* %41)
  store %struct.config_item* %42, %struct.config_item** %6, align 8
  %43 = load %struct.config_item*, %struct.config_item** %6, align 8
  %44 = call %struct.TYPE_12__* @to_config_group(%struct.config_item* %43)
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %45, align 8
  store %struct.configfs_subsystem* %46, %struct.configfs_subsystem** %8, align 8
  %47 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %48 = icmp ne %struct.configfs_subsystem* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.config_item*, %struct.config_item** %6, align 8
  %53 = getelementptr inbounds %struct.config_item, %struct.config_item* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %37
  %57 = load %struct.config_item*, %struct.config_item** %6, align 8
  %58 = call i32 @config_item_put(%struct.config_item* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %185

61:                                               ; preds = %37
  %62 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %63 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %72 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.module*, %struct.module** %76, align 8
  store %struct.module* %77, %struct.module** %10, align 8
  br label %78

78:                                               ; preds = %122, %61
  %79 = call i32 @mutex_lock(%struct.mutex* @configfs_symlink_mutex)
  %80 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %81 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %82 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  br label %89

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32 [ %87, %85 ], [ 0, %88 ]
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load %struct.dentry*, %struct.dentry** %5, align 8
  %95 = call i32 @configfs_detach_prep(%struct.dentry* %94, %struct.mutex** %13)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = call i32 @configfs_detach_rollback(%struct.dentry* %99)
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %89
  %103 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %104 = call i32 @mutex_unlock(%struct.mutex* @configfs_symlink_mutex)
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %102
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.config_item*, %struct.config_item** %6, align 8
  %114 = call i32 @config_item_put(%struct.config_item* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %3, align 4
  br label %185

116:                                              ; preds = %107
  %117 = load %struct.mutex*, %struct.mutex** %13, align 8
  %118 = call i32 @mutex_lock(%struct.mutex* %117)
  %119 = load %struct.mutex*, %struct.mutex** %13, align 8
  %120 = call i32 @mutex_unlock(%struct.mutex* %119)
  br label %121

121:                                              ; preds = %116, %102
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %78, label %127

127:                                              ; preds = %122
  %128 = load %struct.dentry*, %struct.dentry** %5, align 8
  %129 = call %struct.config_item* @configfs_get_config_item(%struct.dentry* %128)
  store %struct.config_item* %129, %struct.config_item** %7, align 8
  %130 = load %struct.config_item*, %struct.config_item** %6, align 8
  %131 = call i32 @config_item_put(%struct.config_item* %130)
  %132 = load %struct.config_item*, %struct.config_item** %7, align 8
  %133 = getelementptr inbounds %struct.config_item, %struct.config_item* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = icmp ne %struct.TYPE_11__* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load %struct.config_item*, %struct.config_item** %7, align 8
  %138 = getelementptr inbounds %struct.config_item, %struct.config_item* %137, i32 0, i32 0
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.module*, %struct.module** %140, align 8
  store %struct.module* %141, %struct.module** %11, align 8
  br label %142

142:                                              ; preds = %136, %127
  %143 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %144 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CONFIGFS_USET_DIR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load %struct.config_item*, %struct.config_item** %7, align 8
  %151 = call i32 @configfs_detach_group(%struct.config_item* %150)
  %152 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %153 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %152, i32 0, i32 0
  %154 = call i32 @mutex_lock(%struct.mutex* %153)
  %155 = load %struct.config_item*, %struct.config_item** %6, align 8
  %156 = load %struct.config_item*, %struct.config_item** %7, align 8
  %157 = call i32 @client_disconnect_notify(%struct.config_item* %155, %struct.config_item* %156)
  %158 = load %struct.config_item*, %struct.config_item** %7, align 8
  %159 = call %struct.TYPE_12__* @to_config_group(%struct.config_item* %158)
  %160 = call i32 @unlink_group(%struct.TYPE_12__* %159)
  br label %172

161:                                              ; preds = %142
  %162 = load %struct.config_item*, %struct.config_item** %7, align 8
  %163 = call i32 @configfs_detach_item(%struct.config_item* %162)
  %164 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %165 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %164, i32 0, i32 0
  %166 = call i32 @mutex_lock(%struct.mutex* %165)
  %167 = load %struct.config_item*, %struct.config_item** %6, align 8
  %168 = load %struct.config_item*, %struct.config_item** %7, align 8
  %169 = call i32 @client_disconnect_notify(%struct.config_item* %167, %struct.config_item* %168)
  %170 = load %struct.config_item*, %struct.config_item** %7, align 8
  %171 = call i32 @unlink_obj(%struct.config_item* %170)
  br label %172

172:                                              ; preds = %161, %149
  %173 = load %struct.config_item*, %struct.config_item** %6, align 8
  %174 = load %struct.config_item*, %struct.config_item** %7, align 8
  %175 = call i32 @client_drop_item(%struct.config_item* %173, %struct.config_item* %174)
  %176 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %177 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(%struct.mutex* %177)
  %179 = load %struct.config_item*, %struct.config_item** %7, align 8
  %180 = call i32 @config_item_put(%struct.config_item* %179)
  %181 = load %struct.module*, %struct.module** %11, align 8
  %182 = call i32 @module_put(%struct.module* %181)
  %183 = load %struct.module*, %struct.module** %10, align 8
  %184 = call i32 @module_put(%struct.module* %183)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %172, %112, %56, %34, %21
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.config_item* @configfs_get_config_item(%struct.dentry*) #1

declare dso_local %struct.TYPE_12__* @to_config_group(%struct.config_item*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_detach_prep(%struct.dentry*, %struct.mutex**) #1

declare dso_local i32 @configfs_detach_rollback(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @configfs_detach_group(%struct.config_item*) #1

declare dso_local i32 @client_disconnect_notify(%struct.config_item*, %struct.config_item*) #1

declare dso_local i32 @unlink_group(%struct.TYPE_12__*) #1

declare dso_local i32 @configfs_detach_item(%struct.config_item*) #1

declare dso_local i32 @unlink_obj(%struct.config_item*) #1

declare dso_local i32 @client_drop_item(%struct.config_item*, %struct.config_item*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
