; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_inode.c_configfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.configfs_dirent*, %struct.inode* }
%struct.configfs_dirent = type { i32, %struct.iattr* }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iattr = type { i32, i32, i8*, i8*, i8*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i8* null, align 8
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@CAP_FSETID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.configfs_dirent*, %struct.configfs_dirent** %16, align 8
  store %struct.configfs_dirent* %17, %struct.configfs_dirent** %7, align 8
  %18 = load %struct.iattr*, %struct.iattr** %5, align 8
  %19 = getelementptr inbounds %struct.iattr, %struct.iattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %22 = icmp ne %struct.configfs_dirent* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %180

26:                                               ; preds = %2
  %27 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %28 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %27, i32 0, i32 1
  %29 = load %struct.iattr*, %struct.iattr** %28, align 8
  store %struct.iattr* %29, %struct.iattr** %8, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = call i32 @inode_change_ok(%struct.inode* %30, %struct.iattr* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %180

37:                                               ; preds = %26
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.iattr*, %struct.iattr** %5, align 8
  %40 = call i32 @inode_setattr(%struct.inode* %38, %struct.iattr* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %180

45:                                               ; preds = %37
  %46 = load %struct.iattr*, %struct.iattr** %8, align 8
  %47 = icmp ne %struct.iattr* %46, null
  br i1 %47, label %76, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.iattr* @kzalloc(i32 48, i32 %49)
  store %struct.iattr* %50, %struct.iattr** %8, align 8
  %51 = load %struct.iattr*, %struct.iattr** %8, align 8
  %52 = icmp ne %struct.iattr* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %180

56:                                               ; preds = %48
  %57 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %58 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.iattr*, %struct.iattr** %8, align 8
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.iattr*, %struct.iattr** %8, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.iattr*, %struct.iattr** %8, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load i8*, i8** @CURRENT_TIME, align 8
  %67 = load %struct.iattr*, %struct.iattr** %8, align 8
  %68 = getelementptr inbounds %struct.iattr, %struct.iattr* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.iattr*, %struct.iattr** %8, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 3
  store i8* %66, i8** %70, align 8
  %71 = load %struct.iattr*, %struct.iattr** %8, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %71, i32 0, i32 4
  store i8* %66, i8** %72, align 8
  %73 = load %struct.iattr*, %struct.iattr** %8, align 8
  %74 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %75 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %74, i32 0, i32 1
  store %struct.iattr* %73, %struct.iattr** %75, align 8
  br label %76

76:                                               ; preds = %56, %45
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ATTR_UID, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.iattr*, %struct.iattr** %5, align 8
  %83 = getelementptr inbounds %struct.iattr, %struct.iattr* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.iattr*, %struct.iattr** %8, align 8
  %86 = getelementptr inbounds %struct.iattr, %struct.iattr* %85, i32 0, i32 6
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @ATTR_GID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.iattr*, %struct.iattr** %5, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.iattr*, %struct.iattr** %8, align 8
  %97 = getelementptr inbounds %struct.iattr, %struct.iattr* %96, i32 0, i32 5
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @ATTR_ATIME, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load %struct.iattr*, %struct.iattr** %5, align 8
  %105 = getelementptr inbounds %struct.iattr, %struct.iattr* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @timespec_trunc(i8* %106, i32 %111)
  %113 = load %struct.iattr*, %struct.iattr** %8, align 8
  %114 = getelementptr inbounds %struct.iattr, %struct.iattr* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %103, %98
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @ATTR_MTIME, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.iattr*, %struct.iattr** %5, align 8
  %122 = getelementptr inbounds %struct.iattr, %struct.iattr* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @timespec_trunc(i8* %123, i32 %128)
  %130 = load %struct.iattr*, %struct.iattr** %8, align 8
  %131 = getelementptr inbounds %struct.iattr, %struct.iattr* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %120, %115
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ATTR_CTIME, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load %struct.iattr*, %struct.iattr** %5, align 8
  %139 = getelementptr inbounds %struct.iattr, %struct.iattr* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @timespec_trunc(i8* %140, i32 %145)
  %147 = load %struct.iattr*, %struct.iattr** %8, align 8
  %148 = getelementptr inbounds %struct.iattr, %struct.iattr* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %137, %132
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @ATTR_MODE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %149
  %155 = load %struct.iattr*, %struct.iattr** %5, align 8
  %156 = getelementptr inbounds %struct.iattr, %struct.iattr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  %158 = load %struct.inode*, %struct.inode** %6, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @in_group_p(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %154
  %164 = load i32, i32* @CAP_FSETID, align 4
  %165 = call i32 @capable(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @S_ISGID, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %167, %163, %154
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %175 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.iattr*, %struct.iattr** %8, align 8
  %177 = getelementptr inbounds %struct.iattr, %struct.iattr* %176, i32 0, i32 1
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %149
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %53, %43, %35, %23
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local %struct.iattr* @kzalloc(i32, i32) #1

declare dso_local i8* @timespec_trunc(i8*, i32) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
