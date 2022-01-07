; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_create_clid_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_create_clid_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.dentry* }
%struct.dentry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nfs4_client = type { i8*, i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"NFSD: nfsd4_create_clid_dir for \22%s\22\0A\00", align 1
@rec_file = common dso_local global %struct.TYPE_7__* null, align 8
@HEXDIR_LEN = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"NFSD: nfsd4_create_clid_dir: DIRECTORY EXISTS\0A\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"NFSD: nfsd4_create_clid_dir returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_create_clid_dir(%struct.nfs4_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_client*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_client* %0, %struct.nfs4_client** %3, align 8
  %9 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rec_file, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %18 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %106

22:                                               ; preds = %16
  %23 = call i32 @nfs4_save_creds(%struct.cred** %4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %106

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rec_file, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mnt_want_write(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rec_file, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  store %struct.dentry* %42, %struct.dentry** %6, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = load i64, i64* @HEXDIR_LEN, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call %struct.dentry* @lookup_one_len(i8* %48, %struct.dentry* %49, i64 %51)
  store %struct.dentry* %52, %struct.dentry** %7, align 8
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = call i64 @IS_ERR(%struct.dentry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load %struct.dentry*, %struct.dentry** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.dentry* %57)
  store i32 %58, i32* %8, align 4
  br label %78

59:                                               ; preds = %38
  %60 = load i32, i32* @EEXIST, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %75

68:                                               ; preds = %59
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  %73 = load i32, i32* @S_IRWXU, align 4
  %74 = call i32 @vfs_mkdir(%struct.TYPE_6__* %71, %struct.dentry* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %68, %66
  %76 = load %struct.dentry*, %struct.dentry** %7, align 8
  %77 = call i32 @dput(%struct.dentry* %76)
  br label %78

78:                                               ; preds = %75, %56
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %88 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rec_file, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rec_file, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.dentry*, %struct.dentry** %92, align 8
  %94 = call i32 @vfs_fsync(%struct.TYPE_7__* %89, %struct.dentry* %93, i32 0)
  br label %95

95:                                               ; preds = %86, %78
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rec_file, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mnt_drop_write(i32 %99)
  %101 = load %struct.cred*, %struct.cred** %4, align 8
  %102 = call i32 @nfs4_reset_creds(%struct.cred* %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %95, %36, %26, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs4_save_creds(%struct.cred**) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_6__*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfs_fsync(%struct.TYPE_7__*, %struct.dentry*, i32) #1

declare dso_local i32 @mnt_drop_write(i32) #1

declare dso_local i32 @nfs4_reset_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
