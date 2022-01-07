; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__, %struct.TYPE_9__*, i32, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.inode*, %struct.TYPE_8__*, %struct.inode*, %struct.TYPE_8__*)* }

@EBUSY = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"NFS: rename(%s/%s -> %s/%s, ct=%d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @nfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 3
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 3
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  store %struct.dentry* null, %struct.dentry** %12, align 8
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @VFS, align 4
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 2
  %46 = call i32 @atomic_read(i32* %45)
  %47 = call i32 @dfprintk(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i32 %39, i32 %43, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %50, label %89

50:                                               ; preds = %4
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISDIR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %50
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = call i32 @d_unhashed(%struct.dentry* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = call i32 @d_drop(%struct.dentry* %61)
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %63, %struct.dentry** %12, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.dentry*, %struct.dentry** %8, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 2
  %67 = call i32 @atomic_read(i32* %66)
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.dentry*, %struct.dentry** %8, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = call %struct.dentry* @d_alloc(%struct.TYPE_9__* %72, %struct.TYPE_8__* %74)
  store %struct.dentry* %75, %struct.dentry** %11, align 8
  %76 = load %struct.dentry*, %struct.dentry** %11, align 8
  %77 = icmp ne %struct.dentry* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %111

79:                                               ; preds = %69
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = load %struct.dentry*, %struct.dentry** %8, align 8
  %82 = call i32 @nfs_sillyrename(%struct.inode* %80, %struct.dentry* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %111

86:                                               ; preds = %79
  %87 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %87, %struct.dentry** %8, align 8
  store %struct.dentry* null, %struct.dentry** %12, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %88

88:                                               ; preds = %86, %64
  br label %89

89:                                               ; preds = %88, %50, %4
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @nfs_inode_return_delegation(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = icmp ne %struct.inode* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @nfs_inode_return_delegation(%struct.inode* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = call %struct.TYPE_10__* @NFS_PROTO(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32 (%struct.inode*, %struct.TYPE_8__*, %struct.inode*, %struct.TYPE_8__*)*, i32 (%struct.inode*, %struct.TYPE_8__*, %struct.inode*, %struct.TYPE_8__*)** %100, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load %struct.dentry*, %struct.dentry** %8, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 0
  %108 = call i32 %101(%struct.inode* %102, %struct.TYPE_8__* %104, %struct.inode* %105, %struct.TYPE_8__* %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = call i32 @nfs_mark_for_revalidate(%struct.inode* %109)
  br label %111

111:                                              ; preds = %97, %85, %78
  %112 = load %struct.dentry*, %struct.dentry** %12, align 8
  %113 = icmp ne %struct.dentry* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.dentry*, %struct.dentry** %12, align 8
  %116 = call i32 @d_rehash(%struct.dentry* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %134, label %120

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = icmp ne %struct.inode* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = call i32 @nfs_drop_nlink(%struct.inode* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.dentry*, %struct.dentry** %6, align 8
  %128 = load %struct.dentry*, %struct.dentry** %8, align 8
  %129 = call i32 @d_move(%struct.dentry* %127, %struct.dentry* %128)
  %130 = load %struct.dentry*, %struct.dentry** %8, align 8
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = call i32 @nfs_save_change_attribute(%struct.inode* %131)
  %133 = call i32 @nfs_set_verifier(%struct.dentry* %130, i32 %132)
  br label %143

134:                                              ; preds = %117
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @ENOENT, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.dentry*, %struct.dentry** %6, align 8
  %141 = call i32 @nfs_dentry_handle_enoent(%struct.dentry* %140)
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142, %126
  %144 = load %struct.dentry*, %struct.dentry** %11, align 8
  %145 = icmp ne %struct.dentry* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.dentry*, %struct.dentry** %11, align 8
  %148 = call i32 @dput(%struct.dentry* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %13, align 4
  ret i32 %150
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @nfs_sillyrename(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @nfs_inode_return_delegation(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @nfs_drop_nlink(%struct.inode*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs_dentry_handle_enoent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
