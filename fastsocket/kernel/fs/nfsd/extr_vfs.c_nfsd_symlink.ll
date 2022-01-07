; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }

@nfserr_noent = common dso_local global i64 0, align 8
@nfserr_exist = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_symlink(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, i8* %4, i32 %5, %struct.svc_fh* %6, %struct.iattr* %7) #0 {
  %9 = alloca %struct.svc_rqst*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.svc_fh*, align 8
  %16 = alloca %struct.iattr*, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %9, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.svc_fh* %6, %struct.svc_fh** %15, align 8
  store %struct.iattr* %7, %struct.iattr** %16, align 8
  %23 = load i64, i64* @nfserr_noent, align 8
  store i64 %23, i64* %19, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %8
  br label %142

30:                                               ; preds = %26
  %31 = load i64, i64* @nfserr_exist, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @isdotent(i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %142

37:                                               ; preds = %30
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %39 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %40 = load i32, i32* @S_IFDIR, align 4
  %41 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %42 = call i64 @fh_verify(%struct.svc_rqst* %38, %struct.svc_fh* %39, i32 %40, i32 %41)
  store i64 %42, i64* %19, align 8
  %43 = load i64, i64* %19, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %142

46:                                               ; preds = %37
  %47 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %48 = call i32 @fh_want_write(%struct.svc_fh* %47)
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %144

52:                                               ; preds = %46
  %53 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %54 = call i32 @fh_lock(%struct.svc_fh* %53)
  %55 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %56 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %55, i32 0, i32 1
  %57 = load %struct.dentry*, %struct.dentry** %56, align 8
  store %struct.dentry* %57, %struct.dentry** %17, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.dentry*, %struct.dentry** %17, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call %struct.dentry* @lookup_one_len(i8* %58, %struct.dentry* %59, i32 %60)
  store %struct.dentry* %61, %struct.dentry** %18, align 8
  %62 = load %struct.dentry*, %struct.dentry** %18, align 8
  %63 = call i32 @PTR_ERR(%struct.dentry* %62)
  store i32 %63, i32* %21, align 4
  %64 = load %struct.dentry*, %struct.dentry** %18, align 8
  %65 = call i64 @IS_ERR(%struct.dentry* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %144

68:                                               ; preds = %52
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %68
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kmalloc(i32 %81, i32 %82)
  store i8* %83, i8** %22, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %21, align 4
  br label %106

89:                                               ; preds = %79
  %90 = load i8*, i8** %22, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @strncpy(i8* %90, i8* %91, i32 %92)
  %94 = load i8*, i8** %22, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load %struct.dentry*, %struct.dentry** %17, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dentry*, %struct.dentry** %18, align 8
  %102 = load i8*, i8** %22, align 8
  %103 = call i32 @vfs_symlink(i32 %100, %struct.dentry* %101, i8* %102)
  store i32 %103, i32* %21, align 4
  %104 = load i8*, i8** %22, align 8
  %105 = call i32 @kfree(i8* %104)
  br label %106

106:                                              ; preds = %89, %86
  br label %114

107:                                              ; preds = %68
  %108 = load %struct.dentry*, %struct.dentry** %17, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dentry*, %struct.dentry** %18, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @vfs_symlink(i32 %110, %struct.dentry* %111, i8* %112)
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %107, %106
  %115 = load i32, i32* %21, align 4
  %116 = call i64 @nfserrno(i32 %115)
  store i64 %116, i64* %19, align 8
  %117 = load i64, i64* %19, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %121 = call i32 @commit_metadata(%struct.svc_fh* %120)
  %122 = call i64 @nfserrno(i32 %121)
  store i64 %122, i64* %19, align 8
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %125 = call i32 @fh_unlock(%struct.svc_fh* %124)
  %126 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %127 = call i32 @fh_drop_write(%struct.svc_fh* %126)
  %128 = load %struct.svc_fh*, %struct.svc_fh** %15, align 8
  %129 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %130 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.dentry*, %struct.dentry** %18, align 8
  %133 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %134 = call i64 @fh_compose(%struct.svc_fh* %128, i32 %131, %struct.dentry* %132, %struct.svc_fh* %133)
  store i64 %134, i64* %20, align 8
  %135 = load %struct.dentry*, %struct.dentry** %18, align 8
  %136 = call i32 @dput(%struct.dentry* %135)
  %137 = load i64, i64* %19, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %123
  %140 = load i64, i64* %20, align 8
  store i64 %140, i64* %19, align 8
  br label %141

141:                                              ; preds = %139, %123
  br label %142

142:                                              ; preds = %144, %141, %45, %36, %29
  %143 = load i64, i64* %19, align 8
  ret i64 %143

144:                                              ; preds = %67, %51
  %145 = load i32, i32* %21, align 4
  %146 = call i64 @nfserrno(i32 %145)
  store i64 %146, i64* %19, align 8
  br label %142
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i32 @fh_lock(%struct.svc_fh*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @vfs_symlink(i32, %struct.dentry*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, i32, %struct.dentry*, %struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
