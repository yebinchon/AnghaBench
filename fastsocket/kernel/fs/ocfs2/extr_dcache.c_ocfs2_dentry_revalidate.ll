; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_3__, i32, %struct.inode* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.ocfs2_super = type { %struct.inode* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"(0x%p, '%.*s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"negative dentry: %.*s\0A\00", align 1
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"inode (%llu) deleted, returning false\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Inode %llu orphaned, returning false dir = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Inode %llu doesn't have dentry lock, returning false\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @ocfs2_dentry_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dentry_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_super*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 3
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ocfs2_super* @OCFS2_SB(i32 %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15, i32 %19, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = icmp eq %struct.inode* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %36)
  br label %107

38:                                               ; preds = %2
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %40 = icmp ne %struct.ocfs2_super* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  %48 = icmp eq %struct.inode* %44, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i64 @is_bad_inode(%struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %38
  br label %107

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  br label %107

76:                                               ; preds = %54
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @S_ISDIR(i32 %92)
  %94 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %89, i32 %93)
  br label %107

95:                                               ; preds = %76
  %96 = load %struct.dentry*, %struct.dentry** %3, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  br label %107

106:                                              ; preds = %95
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %100, %85, %66, %53, %27
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @mlog_exit(i32 %108)
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
