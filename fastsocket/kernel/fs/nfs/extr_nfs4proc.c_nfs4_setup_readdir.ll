; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_setup_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_setup_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_readdir_arg = type { i32, i32, i8, i32, i32* }

@KM_USER0 = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i8* null, align 8
@xdr_zero = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".\00\00\00\00", align 1
@FATTR4_WORD0_FILEID = common dso_local global i32 0, align 4
@xdr_two = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"..\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.dentry*, %struct.nfs4_readdir_arg*)* @nfs4_setup_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_setup_readdir(i32 %0, i8* %1, %struct.dentry* %2, %struct.nfs4_readdir_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.nfs4_readdir_arg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.nfs4_readdir_arg* %3, %struct.nfs4_readdir_arg** %8, align 8
  %11 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %12 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 80
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %22 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %24 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %23, i32 0, i32 2
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @memcpy(i8* %24, i8* %25, i32 1)
  br label %145

27:                                               ; preds = %4
  %28 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %31 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %30, i32 0, i32 2
  %32 = call i32 @memset(i8* %31, i32 0, i32 1)
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %145

36:                                               ; preds = %27
  %37 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %38 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KM_USER0, align 4
  %42 = call i8* @kmap_atomic(i32 %40, i32 %41)
  store i8* %42, i8** %10, align 8
  store i8* %42, i8** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %36
  %46 = load i8*, i8** @xdr_one, align 8
  %47 = ptrtoint i8* %46 to i8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i8*, i8** @xdr_zero, align 8
  %51 = ptrtoint i8* %50 to i8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8*, i8** @xdr_one, align 8
  %55 = ptrtoint i8* %54 to i8
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i8*, i8** @xdr_one, align 8
  %59 = ptrtoint i8* %58 to i8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @memcpy(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** @xdr_one, align 8
  %67 = ptrtoint i8* %66 to i8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = ptrtoint i8* %71 to i8
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  store i8 %72, i8* %73, align 1
  %75 = call i8* @htonl(i32 8)
  %76 = ptrtoint i8* %75 to i8
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.dentry*, %struct.dentry** %7, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @NFS_FILEID(i32 %82)
  %84 = call i8* @xdr_encode_hyper(i8* %79, i32 %83)
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %45, %36
  %86 = load i8*, i8** @xdr_one, align 8
  %87 = ptrtoint i8* %86 to i8
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  store i8 %87, i8* %88, align 1
  %90 = load i8*, i8** @xdr_zero, align 8
  %91 = ptrtoint i8* %90 to i8
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i8*, i8** @xdr_two, align 8
  %95 = ptrtoint i8* %94 to i8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %10, align 8
  store i8 %95, i8* %96, align 1
  %98 = load i8*, i8** @xdr_two, align 8
  %99 = ptrtoint i8* %98 to i8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @memcpy(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** @xdr_one, align 8
  %107 = ptrtoint i8* %106 to i8
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %111 = call i8* @htonl(i32 %110)
  %112 = ptrtoint i8* %111 to i8
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  store i8 %112, i8* %113, align 1
  %115 = call i8* @htonl(i32 8)
  %116 = ptrtoint i8* %115 to i8
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.dentry*, %struct.dentry** %7, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @NFS_FILEID(i32 %124)
  %126 = call i8* @xdr_encode_hyper(i8* %119, i32 %125)
  store i8* %126, i8** %10, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %134 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %136 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %139 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* @KM_USER0, align 4
  %144 = call i32 @kunmap_atomic(i8* %142, i32 %143)
  br label %145

145:                                              ; preds = %85, %35, %19
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @xdr_encode_hyper(i8*, i32) #1

declare dso_local i32 @NFS_FILEID(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
