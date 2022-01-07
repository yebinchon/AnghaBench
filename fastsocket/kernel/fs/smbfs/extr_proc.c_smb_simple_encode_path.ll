; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_simple_encode_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_simple_encode_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32, i64, %struct.smb_sb_info* }
%struct.smb_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }
%struct.qstr = type { i32 }

@SMB_MOUNT_UNICODE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_request*, i8**, %struct.dentry*, %struct.qstr*)* @smb_simple_encode_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_simple_encode_path(%struct.smb_request* %0, i8** %1, %struct.dentry* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_request*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.smb_sb_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %16 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %17 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %16, i32 0, i32 2
  %18 = load %struct.smb_sb_info*, %struct.smb_sb_info** %17, align 8
  store %struct.smb_sb_info* %18, %struct.smb_sb_info** %10, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  %21 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %22 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %26 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8*, i8** %11, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.smb_sb_info*, %struct.smb_sb_info** %10, align 8
  %36 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SMB_MOUNT_UNICODE, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %89

47:                                               ; preds = %4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  store i8 4, i8* %48, align 1
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %55 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = ptrtoint i8* %53 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %52
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  store i8 0, i8* %66, align 1
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %65, %52
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.smb_sb_info*, %struct.smb_sb_info** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = load %struct.qstr*, %struct.qstr** %9, align 8
  %78 = call i32 @smb_encode_path(%struct.smb_sb_info* %72, i8* %73, i32 %75, %struct.dentry* %76, %struct.qstr* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %89

83:                                               ; preds = %71
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8**, i8*** %7, align 8
  store i8* %87, i8** %88, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %81, %44
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @smb_encode_path(%struct.smb_sb_info*, i8*, i32, %struct.dentry*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
