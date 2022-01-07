; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_ren_or_mov_file_or_subdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_ren_or_mov_file_or_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }
%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_ren_or_mov_file_or_subdir(%struct.ncp_server* %0, %struct.inode* %1, i8* %2, %struct.inode* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ncp_server*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i32 @cpu_to_le16(i32 6)
  store i32 %14, i32* %13, align 4
  %15 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @ncp_RenameNSEntry(%struct.ncp_server* %15, %struct.inode* %16, i8* %17, i32 %18, %struct.inode* %19, i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = call i32 @cpu_to_le16(i32 22)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @ncp_RenameNSEntry(%struct.ncp_server* %26, %struct.inode* %27, i8* %28, i32 %29, %struct.inode* %30, i8* %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %24, %5
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 146
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %57

38:                                               ; preds = %33
  %39 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @ncp_del_file_or_subdir(%struct.ncp_server* %39, %struct.inode* %40, i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EACCES, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %38
  %49 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @ncp_RenameNSEntry(%struct.ncp_server* %49, %struct.inode* %50, i8* %51, i32 %52, %struct.inode* %53, i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %45, %36
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ncp_RenameNSEntry(%struct.ncp_server*, %struct.inode*, i8*, i32, %struct.inode*, i8*) #1

declare dso_local i32 @ncp_del_file_or_subdir(%struct.ncp_server*, %struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
