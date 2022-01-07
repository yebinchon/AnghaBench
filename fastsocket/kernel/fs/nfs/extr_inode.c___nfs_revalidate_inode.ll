; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c___nfs_revalidate_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c___nfs_revalidate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.inode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*)* }

@ESTALE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NFS: revalidating (%s/%Ld)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NFSIOS_INODEREVALIDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"nfs_revalidate_inode: (%s/%Ld) getattr failed, error=%d\0A\00", align 1
@NFS_INO_STALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"nfs_revalidate_inode: (%s/%Ld) refresh failed, error=%d\0A\00", align 1
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"NFS: (%s/%Ld) revalidation complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfs_revalidate_inode(%struct.nfs_server* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %8 = load i32, i32* @ESTALE, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.nfs_inode* @NFS_I(%struct.inode* %10)
  store %struct.nfs_inode* %11, %struct.nfs_inode** %7, align 8
  %12 = load i32, i32* @PAGECACHE, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i64 @NFS_FILEID(%struct.inode* %18)
  %20 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i64 @is_bad_inode(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %120

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @NFS_STALE(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %120

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  %33 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %33, %struct.nfs_fattr** %6, align 8
  %34 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %35 = icmp eq %struct.nfs_fattr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %120

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i32, i32* @NFSIOS_INODEREVALIDATE, align 4
  %40 = call i32 @nfs_inc_stats(%struct.inode* %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*)*, i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*)** %43, align 8
  %45 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i32 @NFS_FH(%struct.inode* %46)
  %48 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %49 = call i32 %44(%struct.nfs_server* %45, i32 %47, %struct.nfs_fattr* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %37
  %53 = load i32, i32* @PAGECACHE, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i64 @NFS_FILEID(%struct.inode* %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ESTALE, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %52
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call i32 @nfs_zap_caches(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @S_ISDIR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @NFS_INO_STALE, align 4
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call %struct.nfs_inode* @NFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %78, i32 0, i32 1
  %80 = call i32 @set_bit(i32 %76, i32* %79)
  br label %81

81:                                               ; preds = %75, %67
  br label %82

82:                                               ; preds = %81, %52
  br label %120

83:                                               ; preds = %37
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %86 = call i32 @nfs_refresh_inode(%struct.inode* %84, %struct.nfs_fattr* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load i32, i32* @PAGECACHE, align 4
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call i64 @NFS_FILEID(%struct.inode* %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %90, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %95, i64 %97, i32 %98)
  br label %120

100:                                              ; preds = %83
  %101 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %102 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = call i32 @nfs_zap_acl_cache(%struct.inode* %108)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32, i32* @PAGECACHE, align 4
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = call i64 @NFS_FILEID(%struct.inode* %117)
  %119 = call i32 (i32, i8*, i32, i64, ...) @dfprintk(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %116, i64 %118)
  br label %120

120:                                              ; preds = %110, %89, %82, %36, %29, %24
  %121 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %122 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %121)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_zap_acl_cache(%struct.inode*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
