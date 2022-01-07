; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_attach_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_attach_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.ocfs2_dentry_lock*, %struct.TYPE_4__ }
%struct.ocfs2_dentry_lock = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"Attach \22%.*s\22, parent %llu, fsdata: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c" \22%.*s\22: old parent: %llu, new: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"parent %llu, ino %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Found: %s\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dentry_attach_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %12, align 8
  store %struct.ocfs2_dentry_lock* %13, %struct.ocfs2_dentry_lock** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %24 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i64 %22, %struct.ocfs2_dentry_lock* %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %172

28:                                               ; preds = %3
  %29 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %30 = icmp ne %struct.ocfs2_dentry_lock* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, i64, i64, ...) @mlog_bug_on_msg(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %47, i64 %48, i64 %51)
  store i32 0, i32* %4, align 4
  br label %172

53:                                               ; preds = %28
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call %struct.dentry* @ocfs2_find_local_alias(%struct.inode* %54, i64 %55, i32 0)
  store %struct.dentry* %56, %struct.dentry** %9, align 8
  %57 = load %struct.dentry*, %struct.dentry** %9, align 8
  %58 = icmp ne %struct.dentry* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %53
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %61, align 8
  store %struct.ocfs2_dentry_lock* %62, %struct.ocfs2_dentry_lock** %10, align 8
  %63 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %64 = icmp ne %struct.ocfs2_dentry_lock* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, i64, i64, ...) @mlog_bug_on_msg(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %67, i64 %71)
  %73 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %74 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.dentry*, %struct.dentry** %5, align 8
  %85 = getelementptr inbounds %struct.dentry, %struct.dentry* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, i64, i64, ...) @mlog_bug_on_msg(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %88, i64 %89, i64 %92)
  %94 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %124

99:                                               ; preds = %53
  %100 = load i32, i32* @GFP_NOFS, align 4
  %101 = call %struct.ocfs2_dentry_lock* @kmalloc(i32 24, i32 %100)
  store %struct.ocfs2_dentry_lock* %101, %struct.ocfs2_dentry_lock** %10, align 8
  %102 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %103 = icmp ne %struct.ocfs2_dentry_lock* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %172

110:                                              ; preds = %99
  %111 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %112 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = call i32 @igrab(%struct.inode* %113)
  %115 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %116 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %119 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = call i32 @ocfs2_dentry_lock_res_init(%struct.ocfs2_dentry_lock* %120, i64 %121, %struct.inode* %122)
  br label %124

124:                                              ; preds = %110, %59
  %125 = call i32 @spin_lock(i32* @dentry_attach_lock)
  %126 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %127 = load %struct.dentry*, %struct.dentry** %5, align 8
  %128 = getelementptr inbounds %struct.dentry, %struct.dentry* %127, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* %126, %struct.ocfs2_dentry_lock** %128, align 8
  %129 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %134 = load %struct.dentry*, %struct.dentry** %5, align 8
  %135 = call i32 @ocfs2_dentry_lock(%struct.dentry* %134, i32 0)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %124
  %139 = load %struct.dentry*, %struct.dentry** %5, align 8
  %140 = call i32 @ocfs2_dentry_unlock(%struct.dentry* %139, i32 0)
  br label %144

141:                                              ; preds = %124
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @mlog_errno(i32 %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load %struct.dentry*, %struct.dentry** %9, align 8
  %149 = icmp ne %struct.dentry* %148, null
  br i1 %149, label %168, label %150

150:                                              ; preds = %147
  %151 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %152 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %151, i32 0, i32 2
  %153 = call i32 @ocfs2_lock_res_free(%struct.TYPE_5__* %152)
  %154 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %155 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 1
  %158 = zext i1 %157 to i32
  %159 = call i32 @BUG_ON(i32 %158)
  %160 = call i32 @spin_lock(i32* @dentry_attach_lock)
  %161 = load %struct.dentry*, %struct.dentry** %5, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %162, align 8
  %163 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %164 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %165 = call i32 @kfree(%struct.ocfs2_dentry_lock* %164)
  %166 = load %struct.inode*, %struct.inode** %6, align 8
  %167 = call i32 @iput(%struct.inode* %166)
  br label %168

168:                                              ; preds = %150, %147, %144
  %169 = load %struct.dentry*, %struct.dentry** %9, align 8
  %170 = call i32 @dput(%struct.dentry* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %104, %31, %27
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, ...) #1

declare dso_local %struct.dentry* @ocfs2_find_local_alias(%struct.inode*, i64, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_dentry_lock* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @ocfs2_dentry_lock_res_init(%struct.ocfs2_dentry_lock*, i64, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_dentry_lock(%struct.dentry*, i32) #1

declare dso_local i32 @ocfs2_dentry_unlock(%struct.dentry*, i32) #1

declare dso_local i32 @ocfs2_lock_res_free(%struct.TYPE_5__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_dentry_lock*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
