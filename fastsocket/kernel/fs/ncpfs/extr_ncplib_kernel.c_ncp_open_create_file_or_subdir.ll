; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_open_create_file_or_subdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_open_create_file_or_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32* }
%struct.inode = type { i32 }
%struct.ncp_entry_info = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@aDIR = common dso_local global i32 0, align 4
@RIM_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_open_create_file_or_subdir(%struct.ncp_server* %0, %struct.inode* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.ncp_entry_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ncp_server*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ncp_entry_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ncp_entry_info* %6, %struct.ncp_entry_info** %15, align 8
  %20 = call i32 @cpu_to_le16(i32 6)
  store i32 %20, i32* %16, align 4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.TYPE_5__* @NCP_FINFO(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %17, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call %struct.TYPE_5__* @NCP_FINFO(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @aDIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %7
  %34 = call i32 @cpu_to_le16(i32 32768)
  %35 = load i32, i32* %16, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %33, %7
  %38 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %39 = call i32 @ncp_init_request(%struct.ncp_server* %38)
  %40 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %41 = call i32 @ncp_add_byte(%struct.ncp_server* %40, i32 1)
  %42 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %43 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %44 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %17, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ncp_add_byte(%struct.ncp_server* %42, i32 %48)
  %50 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ncp_add_byte(%struct.ncp_server* %50, i32 %51)
  %53 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @ncp_add_word(%struct.ncp_server* %53, i32 %54)
  %56 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %57 = load i32, i32* @RIM_ALL, align 4
  %58 = call i32 @ncp_add_dword(%struct.ncp_server* %56, i32 %57)
  %59 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ncp_add_dword(%struct.ncp_server* %59, i32 %60)
  %62 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @ncp_add_word(%struct.ncp_server* %62, i32 %63)
  %65 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @ncp_add_handle_path(%struct.ncp_server* %65, i64 %66, i32 %67, i32 1, i8* %68)
  %70 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %71 = call i32 @ncp_request(%struct.ncp_server* %70, i32 87)
  store i32 %71, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %37
  br label %108

74:                                               ; preds = %37
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @aDIR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %15, align 8
  %81 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %84 = call i32 @ncp_reply_data(%struct.ncp_server* %83, i32 6)
  %85 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %15, align 8
  %86 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %85, i32 0, i32 1
  %87 = call i32 @ncp_extract_file_info(i32 %84, %struct.TYPE_4__* %86)
  %88 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %15, align 8
  %89 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %15, align 8
  %93 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %95 = call i32 @ncp_reply_le16(%struct.ncp_server* %94, i32 0)
  %96 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %97 = call i32 @ncp_reply_le16(%struct.ncp_server* %96, i32 2)
  %98 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %15, align 8
  %99 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ConvertToNWfromDWORD(i32 %95, i32 %97, i32 %100)
  %102 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %103 = call i32 @ncp_unlock_server(%struct.ncp_server* %102)
  %104 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %105 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %15, align 8
  %106 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %105, i32 0, i32 1
  %107 = call i32 @ncp_obtain_nfs_info(%struct.ncp_server* %104, %struct.TYPE_4__* %106)
  store i32 0, i32* %8, align 4
  br label %112

108:                                              ; preds = %73
  %109 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %110 = call i32 @ncp_unlock_server(%struct.ncp_server* %109)
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %82
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_5__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_word(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_dword(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_handle_path(%struct.ncp_server*, i64, i32, i32, i8*) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_extract_file_info(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ncp_reply_data(%struct.ncp_server*, i32) #1

declare dso_local i32 @ConvertToNWfromDWORD(i32, i32, i32) #1

declare dso_local i32 @ncp_reply_le16(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

declare dso_local i32 @ncp_obtain_nfs_info(%struct.ncp_server*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
