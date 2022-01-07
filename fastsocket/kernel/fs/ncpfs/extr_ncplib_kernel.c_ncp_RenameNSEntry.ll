; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_RenameNSEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_RenameNSEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncp_server*, %struct.inode*, i8*, i32, %struct.inode*, i8*)* @ncp_RenameNSEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_RenameNSEntry(%struct.ncp_server* %0, %struct.inode* %1, i8* %2, i32 %3, %struct.inode* %4, i8* %5) #0 {
  %7 = alloca %struct.ncp_server*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.inode* %4, %struct.inode** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = icmp eq %struct.inode* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = icmp eq %struct.inode* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %18, %6
  br label %93

28:                                               ; preds = %24
  %29 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %30 = call i32 @ncp_init_request(%struct.ncp_server* %29)
  %31 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %32 = call i32 @ncp_add_byte(%struct.ncp_server* %31, i32 4)
  %33 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %34 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %35 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ncp_add_byte(%struct.ncp_server* %33, i32 %42)
  %44 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %45 = call i32 @ncp_add_byte(%struct.ncp_server* %44, i32 1)
  %46 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ncp_add_word(%struct.ncp_server* %46, i32 %47)
  %49 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ncp_add_byte(%struct.ncp_server* %49, i32 %54)
  %56 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ncp_add_dword(%struct.ncp_server* %56, i32 %60)
  %62 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %63 = call i32 @ncp_add_byte(%struct.ncp_server* %62, i32 1)
  %64 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %65 = call i32 @ncp_add_byte(%struct.ncp_server* %64, i32 1)
  %66 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ncp_add_byte(%struct.ncp_server* %66, i32 %71)
  %73 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ncp_add_dword(%struct.ncp_server* %73, i32 %77)
  %79 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %80 = call i32 @ncp_add_byte(%struct.ncp_server* %79, i32 1)
  %81 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %82 = call i32 @ncp_add_byte(%struct.ncp_server* %81, i32 1)
  %83 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @ncp_add_pstring(%struct.ncp_server* %83, i8* %84)
  %86 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @ncp_add_pstring(%struct.ncp_server* %86, i8* %87)
  %89 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %90 = call i32 @ncp_request(%struct.ncp_server* %89, i32 87)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %92 = call i32 @ncp_unlock_server(%struct.ncp_server* %91)
  br label %93

93:                                               ; preds = %28, %27
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local %struct.TYPE_2__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @ncp_add_word(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_dword(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_pstring(%struct.ncp_server*, i8*) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
