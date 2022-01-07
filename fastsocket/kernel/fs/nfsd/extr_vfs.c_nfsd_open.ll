; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.file = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@nfserr_perm = common dso_local global i64 0, align 8
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_NOT_BREAK_LEASE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@NFSD_MAY_64BIT_COOKIE = common dso_local global i32 0, align 4
@FMODE_64BITHASH = common dso_local global i32 0, align 4
@FMODE_32BITHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_open(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, i32 %3, %struct.file** %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file**, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.file** %4, %struct.file*** %10, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = load i32, i32* @O_LARGEFILE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = call i32 (...) @validate_process_creds()
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %21 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @fh_verify(%struct.svc_rqst* %20, %struct.svc_fh* %21, i32 %22, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %159

30:                                               ; preds = %5
  %31 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %32 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %31, i32 0, i32 1
  %33 = load %struct.dentry*, %struct.dentry** %32, align 8
  store %struct.dentry* %33, %struct.dentry** %11, align 8
  %34 = load %struct.dentry*, %struct.dentry** %11, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load %struct.inode*, %struct.inode** %35, align 8
  store %struct.inode* %36, %struct.inode** %12, align 8
  %37 = load i64, i64* @nfserr_perm, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.inode*, %struct.inode** %12, align 8
  %39 = call i64 @IS_APPEND(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %159

47:                                               ; preds = %41, %30
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISREG(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.inode*, %struct.inode** %12, align 8
  %55 = call i64 @mandatory_lock(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %159

58:                                               ; preds = %53, %47
  %59 = load %struct.inode*, %struct.inode** %12, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %159

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @NFSD_MAY_NOT_BREAK_LEASE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = load %struct.inode*, %struct.inode** %12, align 8
  %71 = load i32, i32* @O_NONBLOCK, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @O_WRONLY, align 4
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = or i32 %71, %80
  %82 = call i32 @break_lease(%struct.inode* %70, i32 %81)
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %79, %64
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %156

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @NFSD_MAY_READ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @O_RDWR, align 4
  %99 = load i32, i32* @O_LARGEFILE, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %13, align 4
  br label %105

101:                                              ; preds = %92
  %102 = load i32, i32* @O_WRONLY, align 4
  %103 = load i32, i32* @O_LARGEFILE, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.inode*, %struct.inode** %12, align 8
  %107 = call i32 @vfs_dq_init(%struct.inode* %106)
  br label %108

108:                                              ; preds = %105, %87
  %109 = load %struct.dentry*, %struct.dentry** %11, align 8
  %110 = call i32 @dget(%struct.dentry* %109)
  %111 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %112 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @mntget(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (...) @current_cred()
  %120 = call %struct.file* @dentry_open(i32 %110, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.file**, %struct.file*** %10, align 8
  store %struct.file* %120, %struct.file** %121, align 8
  %122 = load %struct.file**, %struct.file*** %10, align 8
  %123 = load %struct.file*, %struct.file** %122, align 8
  %124 = call i64 @IS_ERR(%struct.file* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %108
  %127 = load %struct.file**, %struct.file*** %10, align 8
  %128 = load %struct.file*, %struct.file** %127, align 8
  %129 = call i32 @PTR_ERR(%struct.file* %128)
  store i32 %129, i32* %15, align 4
  %130 = load %struct.file**, %struct.file*** %10, align 8
  store %struct.file* null, %struct.file** %130, align 8
  br label %155

131:                                              ; preds = %108
  %132 = load %struct.file**, %struct.file*** %10, align 8
  %133 = load %struct.file*, %struct.file** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @ima_file_check(%struct.file* %133, i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @NFSD_MAY_64BIT_COOKIE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = load i32, i32* @FMODE_64BITHASH, align 4
  %142 = load %struct.file**, %struct.file*** %10, align 8
  %143 = load %struct.file*, %struct.file** %142, align 8
  %144 = getelementptr inbounds %struct.file, %struct.file* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 4
  br label %154

147:                                              ; preds = %131
  %148 = load i32, i32* @FMODE_32BITHASH, align 4
  %149 = load %struct.file**, %struct.file*** %10, align 8
  %150 = load %struct.file*, %struct.file** %149, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %140
  br label %155

155:                                              ; preds = %154, %126
  br label %156

156:                                              ; preds = %155, %86
  %157 = load i32, i32* %15, align 4
  %158 = call i64 @nfserrno(i32 %157)
  store i64 %158, i64* %14, align 8
  br label %159

159:                                              ; preds = %156, %63, %57, %46, %29
  %160 = call i32 (...) @validate_process_creds()
  %161 = load i64, i64* %14, align 8
  ret i64 %161
}

declare dso_local i32 @validate_process_creds(...) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @mandatory_lock(%struct.inode*) #1

declare dso_local i32 @break_lease(%struct.inode*, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local %struct.file* @dentry_open(i32, i32, i32, i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @ima_file_check(%struct.file*, i32) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
