; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ino=%ld, fileid=%d, count=%d@%Ld\0A\00", align 1
@SMBwrite = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4
@smb_vwv2 = common dso_local global i32 0, align 4
@smb_vwv4 = common dso_local global i32 0, align 4
@SMB_REQ_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*)* @smb_proc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_write(%struct.inode* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smb_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca %struct.smb_request*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.smb_sb_info* @server_from_inode(%struct.inode* %14)
  store %struct.smb_sb_info* %15, %struct.smb_sb_info** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.TYPE_4__* @SMB_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %23 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %22, i32 0)
  store %struct.smb_request* %23, %struct.smb_request** %13, align 8
  %24 = icmp ne %struct.smb_request* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %111

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @VERBOSE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %35 = load i32, i32* @SMBwrite, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 3
  %38 = call i32 @smb_setup_header(%struct.smb_request* %34, i32 %35, i32 5, i32 %37)
  %39 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %40 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @smb_vwv0, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @WSET(i32* %41, i32 %42, i32 %43)
  %45 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %46 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @smb_vwv1, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @WSET(i32* %47, i32 %48, i32 %49)
  %51 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %52 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @smb_vwv2, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @DSET(i32* %53, i32 %54, i32 %55)
  %57 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %58 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @smb_vwv4, align 4
  %61 = call i32 @WSET(i32* %59, i32 %60, i32 0)
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 1, i32* %62, align 16
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @WSET(i32* %63, i32 1, i32 %64)
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %67 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %68 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32* %66, i32** %71, align 8
  %72 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %73 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 3, i32* %76, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %80 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32* %78, i32** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %86 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 8
  %90 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %91 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %90, i32 0, i32 1
  store i32 3, i32* %91, align 8
  %92 = load i32, i32* @SMB_REQ_NORETRY, align 4
  %93 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %94 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %98 = load i32, i32* @SMBwrite, align 4
  %99 = call i32 @smb_request_ok(%struct.smb_request* %97, i32 %98, i32 1, i32 0)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %26
  %103 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %104 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @smb_vwv0, align 4
  %107 = call i32 @WVAL(i32* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %102, %26
  %109 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %110 = call i32 @smb_rput(%struct.smb_request* %109)
  br label %111

111:                                              ; preds = %108, %25
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

declare dso_local %struct.smb_sb_info* @server_from_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @SMB_I(%struct.inode*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32*, i32, i32) #1

declare dso_local i32 @DSET(i32*, i32, i32) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WVAL(i32*, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
