; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_ioctl.c_xfs_open_by_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_ioctl.c_xfs_open_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_5__, %struct.inode* }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cred = type { i32 }
%struct.dentry = type { i32, i32, %struct.TYPE_5__, %struct.inode* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@FMODE_NOCMTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_open_by_handle(%struct.file* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %14 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %14, %struct.cred** %6, align 8
  %15 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %16 = call i32 @capable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EPERM, align 4
  %20 = call i32 @XFS_ERROR(i32 %19)
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %170

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call %struct.file* @xfs_handlereq_to_dentry(%struct.file* %23, %struct.TYPE_6__* %24)
  %26 = bitcast %struct.file* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %12, align 8
  %28 = bitcast %struct.dentry* %27 to %struct.file*
  %29 = call i64 @IS_ERR(%struct.file* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.dentry*, %struct.dentry** %12, align 8
  %33 = bitcast %struct.dentry* %32 to %struct.file*
  %34 = call i32 @PTR_ERR(%struct.file* %33)
  store i32 %34, i32* %3, align 4
  br label %170

35:                                               ; preds = %22
  %36 = load %struct.dentry*, %struct.dentry** %12, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 3
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISDIR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EPERM, align 4
  %52 = call i32 @XFS_ERROR(i32 %51)
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %165

54:                                               ; preds = %44, %35
  %55 = load i32, i32* @O_LARGEFILE, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @OPEN_FMODE(i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @O_APPEND, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @O_TRUNC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69, %54
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @FMODE_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = call i64 @IS_APPEND(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @EPERM, align 4
  %85 = call i32 @XFS_ERROR(i32 %84)
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %165

87:                                               ; preds = %79, %74, %69
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @FMODE_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = call i64 @IS_IMMUTABLE(%struct.inode* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @EACCES, align 4
  %98 = call i32 @XFS_ERROR(i32 %97)
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %165

100:                                              ; preds = %92, %87
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @S_ISDIR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @FMODE_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @EISDIR, align 4
  %113 = call i32 @XFS_ERROR(i32 %112)
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %165

115:                                              ; preds = %106, %100
  %116 = call i32 (...) @get_unused_fd()
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %7, align 4
  br label %165

121:                                              ; preds = %115
  %122 = load %struct.dentry*, %struct.dentry** %12, align 8
  %123 = bitcast %struct.dentry* %122 to %struct.file*
  %124 = load %struct.file*, %struct.file** %4, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @mntget(i32 %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.cred*, %struct.cred** %6, align 8
  %133 = call %struct.file* @dentry_open(%struct.file* %123, i32 %128, i32 %131, %struct.cred* %132)
  store %struct.file* %133, %struct.file** %10, align 8
  %134 = load %struct.file*, %struct.file** %10, align 8
  %135 = call i64 @IS_ERR(%struct.file* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @put_unused_fd(i32 %138)
  %140 = load %struct.file*, %struct.file** %10, align 8
  %141 = call i32 @PTR_ERR(%struct.file* %140)
  store i32 %141, i32* %3, align 4
  br label %170

142:                                              ; preds = %121
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @S_IFREG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %142
  %150 = load i32, i32* @O_NOATIME, align 4
  %151 = load %struct.file*, %struct.file** %10, align 8
  %152 = getelementptr inbounds %struct.file, %struct.file* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @FMODE_NOCMTIME, align 4
  %156 = load %struct.file*, %struct.file** %10, align 8
  %157 = getelementptr inbounds %struct.file, %struct.file* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %149, %142
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.file*, %struct.file** %10, align 8
  %163 = call i32 @fd_install(i32 %161, %struct.file* %162)
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %3, align 4
  br label %170

165:                                              ; preds = %119, %111, %96, %83, %50
  %166 = load %struct.dentry*, %struct.dentry** %12, align 8
  %167 = bitcast %struct.dentry* %166 to %struct.file*
  %168 = call i32 @dput(%struct.file* %167)
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %165, %160, %137, %31, %18
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local %struct.file* @xfs_handlereq_to_dentry(%struct.file*, %struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @OPEN_FMODE(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @get_unused_fd(...) #1

declare dso_local %struct.file* @dentry_open(%struct.file*, i32, i32, %struct.cred*) #1

declare dso_local i32 @mntget(i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @dput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
