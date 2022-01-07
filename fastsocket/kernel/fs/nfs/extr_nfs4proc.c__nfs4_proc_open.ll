; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, %struct.nfs_openres, %struct.nfs_openargs, %struct.TYPE_3__* }
%struct.nfs_openres = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_openargs = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }

@NFS4ERR_BADNAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFS4_OPEN_RESULT_LOCKTYPE_POSIX = common dso_local global i32 0, align 4
@NFS_CAP_POSIX_LOCK = common dso_local global i32 0, align 4
@NFS4_OPEN_RESULT_CONFIRM = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*)* @_nfs4_proc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_open(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_openargs*, align 8
  %7 = alloca %struct.nfs_openres*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  %9 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %5, align 8
  %16 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %16, i32 0, i32 3
  store %struct.nfs_openargs* %17, %struct.nfs_openargs** %6, align 8
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %19 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %18, i32 0, i32 2
  store %struct.nfs_openres* %19, %struct.nfs_openres** %7, align 8
  %20 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %21 = call i32 @nfs4_run_open_task(%struct.nfs4_opendata* %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NFS4ERR_BADNAME, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.nfs_openargs*, %struct.nfs_openargs** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @O_CREAT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %111

46:                                               ; preds = %36, %31
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %111

48:                                               ; preds = %28
  %49 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %50 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %51 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %50, i32 0, i32 0
  %52 = call i32 @nfs_fattr_map_and_free_names(%struct.nfs_server* %49, i32* %51)
  %53 = load %struct.nfs_openargs*, %struct.nfs_openargs** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @O_CREAT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %62 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %61, i32 0, i32 3
  %63 = call i32 @update_changeattr(%struct.inode* %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %66 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NFS4_OPEN_RESULT_LOCKTYPE_POSIX, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* @NFS_CAP_POSIX_LOCK, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %75 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %80 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NFS4_OPEN_RESULT_CONFIRM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %87 = call i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %111

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %95 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %93
  %103 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %104 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %105 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %104, i32 0, i32 2
  %106 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %107 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 @_nfs4_proc_getattr(%struct.nfs_server* %103, i32* %105, %struct.TYPE_4__* %108)
  br label %110

110:                                              ; preds = %102, %93
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %90, %46, %43, %26
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs4_run_open_task(%struct.nfs4_opendata*, i32) #1

declare dso_local i32 @nfs_fattr_map_and_free_names(%struct.nfs_server*, i32*) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*) #1

declare dso_local i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata*) #1

declare dso_local i32 @_nfs4_proc_getattr(%struct.nfs_server*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
