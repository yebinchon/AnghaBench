; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_conn_logged_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_conn_logged_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ncp_server = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ncp_conn_logged_in: %s not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ncpfs: sb->s_root->d_inode == NULL!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ncpfs: sb->s_root == NULL!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_conn_logged_in(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ncp_server*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call %struct.ncp_server* @NCP_SBP(%struct.super_block* %14)
  store %struct.ncp_server* %15, %struct.ncp_server** %3, align 8
  %16 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %17 = call i64 @ncp_single_volume(%struct.ncp_server* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %1
  %20 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = mul nuw i64 4, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %28 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %29 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %33 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = call i32 @ncp_io2vol(%struct.ncp_server* %27, i32* %24, i32* %5, i32 %31, i32 %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  store i32 2, i32* %13, align 4
  br label %84

41:                                               ; preds = %19
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %45 = call i64 @ncp_get_volume_root(%struct.ncp_server* %44, i32* %24, i32* %7, i8** %8, i8** %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %49 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 2, i32* %13, align 4
  br label %84

53:                                               ; preds = %41
  %54 = load %struct.super_block*, %struct.super_block** %2, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = load %struct.dentry*, %struct.dentry** %55, align 8
  store %struct.dentry* %56, %struct.dentry** %6, align 8
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = icmp ne %struct.dentry* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load %struct.inode*, %struct.inode** %61, align 8
  store %struct.inode* %62, %struct.inode** %12, align 8
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = icmp ne %struct.inode* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.inode*, %struct.inode** %12, align 8
  %68 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %12, align 8
  %72 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.inode*, %struct.inode** %12, align 8
  %76 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %80

78:                                               ; preds = %59
  %79 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %65
  br label %83

81:                                               ; preds = %53
  %82 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %80
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %47, %40, %83
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %13, align 4
  switch i32 %86, label %91 [
    i32 0, label %87
    i32 2, label %89
  ]

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %87, %1
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, i32* %4, align 4
  ret i32 %90

91:                                               ; preds = %84
  unreachable
}

declare dso_local %struct.ncp_server* @NCP_SBP(%struct.super_block*) #1

declare dso_local i64 @ncp_single_volume(%struct.ncp_server*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @ncp_get_volume_root(%struct.ncp_server*, i32*, i32*, i8**, i8**) #1

declare dso_local i32 @PPRINTK(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @DPRINTK(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
