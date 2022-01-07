; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_setup_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_setup_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32*, i32, i32*, %struct.TYPE_6__*, %struct.smb_sb_info* }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.smb_sb_info = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SMB_HEADER_LEN = common dso_local global i64 0, align 8
@SMB_PROTOCOL_CORE = common dso_local global i64 0, align 8
@SMB_FLAGS_CASELESS_PATHNAMES = common dso_local global i32 0, align 4
@SMB_FLAGS2_LONG_PATH_COMPONENTS = common dso_local global i32 0, align 4
@SMB_FLAGS2_EXTENDED_ATTRIBUTES = common dso_local global i32 0, align 4
@smb_flg = common dso_local global i32 0, align 4
@SMB_MOUNT_UNICODE = common dso_local global i32 0, align 4
@SMB_FLAGS2_UNICODE_STRINGS = common dso_local global i32 0, align 4
@smb_flg2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @smb_setup_header(%struct.smb_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.smb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.smb_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* @SMB_HEADER_LEN, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %14, %17
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = add i64 %21, 2
  store i64 %22, i64* %9, align 8
  %23 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %24 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %27 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %26, i32 0, i32 4
  %28 = load %struct.smb_sb_info*, %struct.smb_sb_info** %27, align 8
  store %struct.smb_sb_info* %28, %struct.smb_sb_info** %11, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub nsw i64 %30, 4
  %32 = call i32* @smb_encode_smb_length(i32* %29, i64 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %10, align 8
  store i32 255, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %10, align 8
  store i32 83, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %10, align 8
  store i32 77, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %10, align 8
  store i32 66, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @memset(i32* %44, i8 signext 0, i32 19)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 19
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32* %49, i32** %10, align 8
  %50 = load %struct.smb_sb_info*, %struct.smb_sb_info** %11, align 8
  %51 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMB_PROTOCOL_CORE, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %4
  %57 = load i32, i32* @SMB_FLAGS_CASELESS_PATHNAMES, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @SMB_FLAGS2_LONG_PATH_COMPONENTS, align 4
  %59 = load i32, i32* @SMB_FLAGS2_EXTENDED_ATTRIBUTES, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %63 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @smb_flg, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.smb_sb_info*, %struct.smb_sb_info** %11, align 8
  %69 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SMB_MOUNT_UNICODE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %56
  %77 = load i32, i32* @SMB_FLAGS2_UNICODE_STRINGS, align 4
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %76, %56
  %81 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %82 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @smb_flg2, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @WSET(i32* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %4
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32*, i32** %10, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %10, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @WSET(i32* %96, i32 0, i32 %97)
  %99 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %100 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %99, i32 0, i32 1
  store i32 1, i32* %100, align 8
  %101 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %102 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %105 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32* %103, i32** %108, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %109, %111
  %113 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %114 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i64 %112, i64* %117, align 8
  %118 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %119 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  ret i32* %120
}

declare dso_local i32* @smb_encode_smb_length(i32*, i64) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @WSET(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
