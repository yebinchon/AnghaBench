; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_modify_file_or_subdir_dos_info_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_modify_file_or_subdir_dos_info_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32* }
%struct.inode = type { i32 }
%struct.nw_modify_dos_info = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_modify_file_or_subdir_dos_info_path(%struct.ncp_server* %0, %struct.inode* %1, i8* %2, i32 %3, %struct.nw_modify_dos_info* %4) #0 {
  %6 = alloca %struct.ncp_server*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nw_modify_dos_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nw_modify_dos_info* %4, %struct.nw_modify_dos_info** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %23 = call i32 @ncp_init_request(%struct.ncp_server* %22)
  %24 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %25 = call i32 @ncp_add_byte(%struct.ncp_server* %24, i32 7)
  %26 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %27 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %28 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ncp_add_byte(%struct.ncp_server* %26, i32 %32)
  %34 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %35 = call i32 @ncp_add_byte(%struct.ncp_server* %34, i32 0)
  %36 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %37 = call i32 @cpu_to_le16(i32 32774)
  %38 = call i32 @ncp_add_word(%struct.ncp_server* %36, i32 %37)
  %39 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ncp_add_dword(%struct.ncp_server* %39, i32 %40)
  %42 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %43 = load %struct.nw_modify_dos_info*, %struct.nw_modify_dos_info** %10, align 8
  %44 = call i32 @ncp_add_mem(%struct.ncp_server* %42, %struct.nw_modify_dos_info* %43, i32 4)
  %45 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @ncp_add_handle_path(%struct.ncp_server* %45, i64 %46, i32 %47, i32 1, i8* %48)
  %50 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %51 = call i32 @ncp_request(%struct.ncp_server* %50, i32 87)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %53 = call i32 @ncp_unlock_server(%struct.ncp_server* %52)
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_word(%struct.ncp_server*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ncp_add_dword(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_mem(%struct.ncp_server*, %struct.nw_modify_dos_info*, i32) #1

declare dso_local i32 @ncp_add_handle_path(%struct.ncp_server*, i64, i32, i32, i8*) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
