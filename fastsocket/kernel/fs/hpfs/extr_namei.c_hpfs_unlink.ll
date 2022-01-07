; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, i32, %struct.inode*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i64, i64 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"there was error when removing dirent\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @hpfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.quad_buffer_head, align 4
  %9 = alloca %struct.hpfs_dirent*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 2
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %10, align 8
  store i32 0, i32* %14, align 4
  %28 = call i32 (...) @lock_kernel()
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @hpfs_adjust_length(i8* %29, i32* %7)
  br label %31

31:                                               ; preds = %146, %2
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %42, i32 %46, i8* %47, i32 %48, i32* %11, %struct.quad_buffer_head* %8)
  store %struct.hpfs_dirent* %49, %struct.hpfs_dirent** %9, align 8
  %50 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %51 = icmp ne %struct.hpfs_dirent* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %31
  br label %158

53:                                               ; preds = %31
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  %56 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %57 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %156

61:                                               ; preds = %53
  %62 = load i32, i32* @EISDIR, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %15, align 4
  %64 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %65 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %156

69:                                               ; preds = %61
  %70 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %71 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %76 = call i32 @hpfs_remove_dirent(%struct.inode* %73, i32 %74, %struct.hpfs_dirent* %75, %struct.quad_buffer_head* %8, i32 1)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  switch i32 %77, label %152 [
    i32 1, label %78
    i32 2, label %85
  ]

78:                                               ; preds = %69
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hpfs_error(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EFSERROR, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %15, align 4
  br label %155

85:                                               ; preds = %69
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %155

92:                                               ; preds = %85
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.dentry*, %struct.dentry** %5, align 8
  %102 = call i32 @d_drop(%struct.dentry* %101)
  %103 = load %struct.dentry*, %struct.dentry** %5, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load %struct.dentry*, %struct.dentry** %5, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 1
  %108 = call i32 @atomic_read(i32* %107)
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %125, label %110

110:                                              ; preds = %92
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = load i32, i32* @MAY_WRITE, align 4
  %113 = call i32 @generic_permission(%struct.inode* %111, i32 %112, i32* null)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @S_ISREG(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = call i32 @get_write_access(%struct.inode* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121, %115, %110, %92
  %126 = load %struct.dentry*, %struct.dentry** %5, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.dentry*, %struct.dentry** %5, align 8
  %130 = call i32 @d_rehash(%struct.dentry* %129)
  br label %148

131:                                              ; preds = %121
  %132 = load %struct.dentry*, %struct.dentry** %5, align 8
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* @ATTR_SIZE, align 4
  %137 = load i32, i32* @ATTR_CTIME, align 4
  %138 = or i32 %136, %137
  %139 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.dentry*, %struct.dentry** %5, align 8
  %141 = call i32 @notify_change(%struct.dentry* %140, %struct.iattr* %16)
  store i32 %141, i32* %15, align 4
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = call i32 @put_write_access(%struct.inode* %142)
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %131
  br label %31

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147, %125
  %149 = call i32 (...) @unlock_kernel()
  %150 = load i32, i32* @ENOSPC, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %169

152:                                              ; preds = %69
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = call i32 @drop_nlink(%struct.inode* %153)
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %152, %91, %78
  br label %158

156:                                              ; preds = %68, %60
  %157 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %158

158:                                              ; preds = %156, %155, %52
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.inode*, %struct.inode** %10, align 8
  %164 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = call i32 (...) @unlock_kernel()
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %158, %148
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_remove_dirent(%struct.inode*, i32, %struct.hpfs_dirent*, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32, i32*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
