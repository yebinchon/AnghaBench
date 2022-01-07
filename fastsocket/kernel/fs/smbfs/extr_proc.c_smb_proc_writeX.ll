; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_writeX.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_writeX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@smb_proc_writeX.pad = internal global [4 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ino=%ld, fileid=%d, count=%d@%Ld\0A\00", align 1
@SMBwriteX = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4
@smb_vwv2 = common dso_local global i32 0, align 4
@smb_vwv3 = common dso_local global i32 0, align 4
@smb_vwv5 = common dso_local global i32 0, align 4
@smb_vwv7 = common dso_local global i32 0, align 4
@smb_vwv8 = common dso_local global i32 0, align 4
@smb_vwv9 = common dso_local global i32 0, align 4
@smb_vwv10 = common dso_local global i32 0, align 4
@smb_vwv11 = common dso_local global i32 0, align 4
@smb_vwv12 = common dso_local global i32 0, align 4
@SMB_REQ_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*)* @smb_proc_writeX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_writeX(%struct.inode* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smb_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.smb_request*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.smb_sb_info* @server_from_inode(%struct.inode* %13)
  store %struct.smb_sb_info* %14, %struct.smb_sb_info** %9, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %18 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %17, i32 0)
  store %struct.smb_request* %18, %struct.smb_request** %12, align 8
  %19 = icmp ne %struct.smb_request* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %146

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_4__* @SMB_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @VERBOSE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %33 = load i32, i32* @SMBwriteX, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8* @smb_setup_header(%struct.smb_request* %32, i32 %33, i32 14, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %38 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @smb_vwv0, align 4
  %41 = call i32 @WSET(i32 %39, i32 %40, i32 255)
  %42 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %43 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @smb_vwv1, align 4
  %46 = call i32 @WSET(i32 %44, i32 %45, i32 0)
  %47 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %48 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @smb_vwv2, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.TYPE_4__* @SMB_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WSET(i32 %49, i32 %50, i32 %54)
  %56 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %57 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @smb_vwv3, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @DSET(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %63 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @smb_vwv5, align 4
  %66 = call i32 @DSET(i32 %64, i32 %65, i32 0)
  %67 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %68 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @smb_vwv7, align 4
  %71 = call i32 @WSET(i32 %69, i32 %70, i32 0)
  %72 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %73 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @smb_vwv8, align 4
  %76 = call i32 @WSET(i32 %74, i32 %75, i32 0)
  %77 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %78 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @smb_vwv9, align 4
  %81 = call i32 @WSET(i32 %79, i32 %80, i32 0)
  %82 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %83 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @smb_vwv10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @WSET(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %89 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @smb_vwv11, align 4
  %92 = load i32, i32* @smb_vwv12, align 4
  %93 = add nsw i32 %92, 2
  %94 = add nsw i32 %93, 1
  %95 = call i32 @WSET(i32 %90, i32 %91, i32 %94)
  %96 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %97 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @smb_vwv12, align 4
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 32
  %102 = call i32 @DSET(i32 %98, i32 %99, i32 %101)
  %103 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %104 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @smb_proc_writeX.pad, i64 0, i64 0), i8** %107, align 8
  %108 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %109 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %108, i32 0, i32 3
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %115 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i8* %113, i8** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %121 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %120, i32 0, i32 3
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 8
  %125 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %126 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %125, i32 0, i32 0
  store i32 3, i32* %126, align 8
  %127 = load i32, i32* @SMB_REQ_NORETRY, align 4
  %128 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %129 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %133 = load i32, i32* @SMBwriteX, align 4
  %134 = call i32 @smb_request_ok(%struct.smb_request* %132, i32 %133, i32 6, i32 0)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %21
  %138 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %139 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @smb_vwv2, align 4
  %142 = call i32 @WVAL(i32 %140, i32 %141)
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %137, %21
  %144 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %145 = call i32 @smb_rput(%struct.smb_request* %144)
  br label %146

146:                                              ; preds = %143, %20
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local %struct.smb_sb_info* @server_from_inode(%struct.inode*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @SMB_I(%struct.inode*) #1

declare dso_local i8* @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @DSET(i32, i32, i32) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WVAL(i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
