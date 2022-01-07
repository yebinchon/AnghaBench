; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_remove_clid_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_remove_clid_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfs4_client = type { i32, i64 }
%struct.cred = type { i32 }

@rec_file = common dso_local global %struct.TYPE_5__* null, align 8
@HEXDIR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"NFSD: Failed to remove expired client state directory %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_remove_clid_dir(%struct.nfs4_client* %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_client* %0, %struct.nfs4_client** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rec_file, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %63

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rec_file, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mnt_want_write(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %53

22:                                               ; preds = %13
  %23 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %24 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = call i32 @nfs4_save_creds(%struct.cred** %3)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %53

29:                                               ; preds = %22
  %30 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %31 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @HEXDIR_LEN, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @nfsd4_unlink_clid_dir(i32 %32, i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.cred*, %struct.cred** %3, align 8
  %37 = call i32 @nfs4_reset_creds(%struct.cred* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rec_file, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rec_file, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vfs_fsync(%struct.TYPE_5__* %41, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %40, %29
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rec_file, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mnt_drop_write(i32 %51)
  br label %53

53:                                               ; preds = %47, %28, %21
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i64, i64* @HEXDIR_LEN, align 8
  %58 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %59 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %12
  ret void
}

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @nfs4_save_creds(%struct.cred**) #1

declare dso_local i32 @nfsd4_unlink_clid_dir(i32, i64) #1

declare dso_local i32 @nfs4_reset_creds(%struct.cred*) #1

declare dso_local i32 @vfs_fsync(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mnt_drop_write(i32) #1

declare dso_local i32 @printk(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
