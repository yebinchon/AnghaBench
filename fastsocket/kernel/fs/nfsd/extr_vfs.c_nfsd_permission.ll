; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }

@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_MAY_LOCAL_ACCESS = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@NFSD_MAY_TRUNC = common dso_local global i32 0, align 4
@nfserr_rofs = common dso_local global i32 0, align 4
@nfserr_perm = common dso_local global i32 0, align 4
@NFSD_MAY_LOCK = common dso_local global i32 0, align 4
@NFSEXP_NOAUTHNLM = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NFSD_MAY_READ_IF_EXEC = common dso_local global i32 0, align 4
@NFSD_MAY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_permission(%struct.svc_rqst* %0, %struct.svc_export* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_export* %1, %struct.svc_export** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %8, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NFSD_MAY_NOP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %141

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NFSD_MAY_LOCAL_ACCESS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %27 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NFSD_MAY_TRUNC, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %24
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %35 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %36 = call i64 @exp_rdonly(%struct.svc_rqst* %34, %struct.svc_export* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %40 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @__mnt_is_readonly(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38, %33
  %46 = load i32, i32* @nfserr_rofs, align 4
  store i32 %46, i32* %5, align 4
  br label %141

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i64 @IS_IMMUTABLE(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @nfserr_perm, align 4
  store i32 %52, i32* %5, align 4
  br label %141

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %24
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @NFSD_MAY_TRUNC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = call i64 @IS_APPEND(%struct.inode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @nfserr_perm, align 4
  store i32 %65, i32* %5, align 4
  br label %141

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @NFSD_MAY_LOCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %73 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NFSEXP_NOAUTHNLM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %141

79:                                               ; preds = %71
  %80 = load i32, i32* @NFSD_MAY_READ, align 4
  %81 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (...) @current_fsuid()
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %141

96:                                               ; preds = %89, %84
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @MAY_READ, align 4
  %100 = load i32, i32* @MAY_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MAY_EXEC, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %98, %103
  %105 = call i32 @inode_permission(%struct.inode* %97, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @EACCES, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %96
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @S_ISREG(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @NFSD_MAY_READ, align 4
  %119 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %120 = or i32 %118, %119
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @NFSD_MAY_READ, align 4
  %125 = load i32, i32* @NFSD_MAY_READ_IF_EXEC, align 4
  %126 = or i32 %124, %125
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122, %116
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = load i32, i32* @MAY_EXEC, align 4
  %131 = call i32 @inode_permission(%struct.inode* %129, i32 %130)
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %128, %122, %110, %96
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @nfserrno(i32 %136)
  br label %139

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %135
  %140 = phi i32 [ %137, %135 ], [ 0, %138 ]
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %95, %78, %64, %51, %45, %18
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @exp_rdonly(%struct.svc_rqst*, %struct.svc_export*) #1

declare dso_local i64 @__mnt_is_readonly(i32) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
