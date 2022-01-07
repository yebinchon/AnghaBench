; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@nfserr_perm = common dso_local global i64 0, align 8
@nfserr_exist = common dso_local global i64 0, align 8
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i32 0, align 4
@nfserr_acces = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_link(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_fh* %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.svc_fh* %4, %struct.svc_fh** %10, align 8
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %18 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %21 = call i64 @fh_verify(%struct.svc_rqst* %17, %struct.svc_fh* %18, i32 %19, i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %138

25:                                               ; preds = %5
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %27 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = sub nsw i32 0, %28
  %30 = load i32, i32* @NFSD_MAY_NOP, align 4
  %31 = call i64 @fh_verify(%struct.svc_rqst* %26, %struct.svc_fh* %27, i32 %29, i32 %30)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %138

35:                                               ; preds = %25
  %36 = load i64, i64* @nfserr_perm, align 8
  store i64 %36, i64* %15, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %138

40:                                               ; preds = %35
  %41 = load i64, i64* @nfserr_exist, align 8
  store i64 %41, i64* %15, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @isdotent(i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %138

47:                                               ; preds = %40
  %48 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %49 = call i32 @fh_want_write(%struct.svc_fh* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @nfserrno(i32 %53)
  store i64 %54, i64* %15, align 8
  br label %138

55:                                               ; preds = %47
  %56 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %57 = load i32, i32* @I_MUTEX_PARENT, align 4
  %58 = call i32 @fh_lock_nested(%struct.svc_fh* %56, i32 %57)
  %59 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %60 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %59, i32 0, i32 0
  %61 = load %struct.dentry*, %struct.dentry** %60, align 8
  store %struct.dentry* %61, %struct.dentry** %11, align 8
  %62 = load %struct.dentry*, %struct.dentry** %11, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load %struct.inode*, %struct.inode** %63, align 8
  store %struct.inode* %64, %struct.inode** %14, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.dentry*, %struct.dentry** %11, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.dentry* @lookup_one_len(i8* %65, %struct.dentry* %66, i32 %67)
  store %struct.dentry* %68, %struct.dentry** %12, align 8
  %69 = load %struct.dentry*, %struct.dentry** %12, align 8
  %70 = call i32 @PTR_ERR(%struct.dentry* %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.dentry*, %struct.dentry** %12, align 8
  %72 = call i64 @IS_ERR(%struct.dentry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  br label %140

75:                                               ; preds = %55
  %76 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %77 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %76, i32 0, i32 0
  %78 = load %struct.dentry*, %struct.dentry** %77, align 8
  store %struct.dentry* %78, %struct.dentry** %13, align 8
  %79 = load i64, i64* @nfserr_noent, align 8
  store i64 %79, i64* %15, align 8
  %80 = load %struct.dentry*, %struct.dentry** %13, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 0
  %82 = load %struct.inode*, %struct.inode** %81, align 8
  %83 = icmp ne %struct.inode* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %130

85:                                               ; preds = %75
  %86 = load %struct.dentry*, %struct.dentry** %13, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 0
  %88 = load %struct.inode*, %struct.inode** %87, align 8
  %89 = call i32 @nfsd_break_lease(%struct.inode* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %16, align 4
  %94 = call i64 @nfserrno(i32 %93)
  store i64 %94, i64* %15, align 8
  br label %130

95:                                               ; preds = %85
  %96 = load %struct.dentry*, %struct.dentry** %13, align 8
  %97 = load %struct.inode*, %struct.inode** %14, align 8
  %98 = load %struct.dentry*, %struct.dentry** %12, align 8
  %99 = call i32 @vfs_link(%struct.dentry* %96, %struct.inode* %97, %struct.dentry* %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %95
  %103 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %104 = call i32 @commit_metadata(%struct.svc_fh* %103)
  %105 = call i64 @nfserrno(i32 %104)
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %110 = call i32 @commit_metadata(%struct.svc_fh* %109)
  %111 = call i64 @nfserrno(i32 %110)
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %108, %102
  br label %129

113:                                              ; preds = %95
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @EXDEV, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %120 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i64, i64* @nfserr_acces, align 8
  store i64 %124, i64* %15, align 8
  br label %128

125:                                              ; preds = %118, %113
  %126 = load i32, i32* %16, align 4
  %127 = call i64 @nfserrno(i32 %126)
  store i64 %127, i64* %15, align 8
  br label %128

128:                                              ; preds = %125, %123
  br label %129

129:                                              ; preds = %128, %112
  br label %130

130:                                              ; preds = %129, %92, %84
  %131 = load %struct.dentry*, %struct.dentry** %12, align 8
  %132 = call i32 @dput(%struct.dentry* %131)
  br label %133

133:                                              ; preds = %140, %130
  %134 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %135 = call i32 @fh_unlock(%struct.svc_fh* %134)
  %136 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %137 = call i32 @fh_drop_write(%struct.svc_fh* %136)
  br label %138

138:                                              ; preds = %133, %52, %46, %39, %34, %24
  %139 = load i64, i64* %15, align 8
  ret i64 %139

140:                                              ; preds = %74
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @nfserrno(i32 %141)
  store i64 %142, i64* %15, align 8
  br label %133
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @fh_lock_nested(%struct.svc_fh*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @nfsd_break_lease(%struct.inode*) #1

declare dso_local i32 @vfs_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
