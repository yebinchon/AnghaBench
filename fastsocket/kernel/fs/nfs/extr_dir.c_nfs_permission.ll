; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NFSIOS_VFSACCESS = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_ACCESS = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@NFS_CAP_ATOMIC_OPEN = common dso_local global i32 0, align 4
@MAY_OPEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: permission(%s/%ld), mask=0x%x, res=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = load i32, i32* @NFSIOS_VFSACCESS, align 4
  %9 = call i32 @nfs_inc_stats(%struct.inode* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAY_READ, align 4
  %12 = load i32, i32* @MAY_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAY_EXEC, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %85

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MAY_ACCESS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %62

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @S_IFMT, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %61 [
    i32 129, label %31
    i32 128, label %32
    i32 130, label %49
  ]

31:                                               ; preds = %25
  br label %85

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load i32, i32* @NFS_CAP_ATOMIC_OPEN, align 4
  %35 = call i32 @nfs_server_capable(%struct.inode* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAY_OPEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MAY_EXEC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %85

48:                                               ; preds = %42, %37, %32
  br label %61

49:                                               ; preds = %25
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MAY_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MAY_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %85

60:                                               ; preds = %54, %49
  br label %61

61:                                               ; preds = %60, %25, %48
  br label %62

62:                                               ; preds = %61, %24
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %114

69:                                               ; preds = %62
  %70 = call %struct.rpc_cred* (...) @rpc_lookup_cred()
  store %struct.rpc_cred* %70, %struct.rpc_cred** %5, align 8
  %71 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %72 = call i32 @IS_ERR(%struct.rpc_cred* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @nfs_do_access(%struct.inode* %75, %struct.rpc_cred* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %80 = call i32 @put_rpccred(%struct.rpc_cred* %79)
  br label %84

81:                                               ; preds = %69
  %82 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %83 = call i32 @PTR_ERR(%struct.rpc_cred* %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %74
  br label %85

85:                                               ; preds = %125, %84, %59, %47, %31, %18
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MAY_EXEC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = call i32 @execute_ok(%struct.inode* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @EACCES, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %93, %88, %85
  %101 = load i32, i32* @VFS, align 4
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.inode*, %struct.inode** %3, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dfprintk(i32 %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  ret i32 %113

114:                                              ; preds = %68
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = call i32 @NFS_SERVER(%struct.inode* %115)
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = call i32 @nfs_revalidate_inode(i32 %116, %struct.inode* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @generic_permission(%struct.inode* %122, i32 %123, i32* null)
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %114
  br label %85
}

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.rpc_cred* @rpc_lookup_cred(...) #1

declare dso_local i32 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @nfs_do_access(%struct.inode*, %struct.rpc_cred*, i32) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @execute_ok(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
