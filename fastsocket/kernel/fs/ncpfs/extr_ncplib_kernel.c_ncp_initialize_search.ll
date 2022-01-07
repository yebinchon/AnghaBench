; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_initialize_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_initialize_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32* }
%struct.inode = type { i32 }
%struct.nw_search_sequence = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_initialize_search(%struct.ncp_server* %0, %struct.inode* %1, %struct.nw_search_sequence* %2) #0 {
  %4 = alloca %struct.ncp_server*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nw_search_sequence*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.nw_search_sequence* %2, %struct.nw_search_sequence** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.TYPE_2__* @NCP_FINFO(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %19 = call i32 @ncp_init_request(%struct.ncp_server* %18)
  %20 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %21 = call i32 @ncp_add_byte(%struct.ncp_server* %20, i32 2)
  %22 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %23 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %24 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ncp_add_byte(%struct.ncp_server* %22, i32 %28)
  %30 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %31 = call i32 @ncp_add_byte(%struct.ncp_server* %30, i32 0)
  %32 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ncp_add_handle_path(%struct.ncp_server* %32, i64 %33, i32 %34, i32 1, i32* null)
  %36 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %37 = call i32 @ncp_request(%struct.ncp_server* %36, i32 87)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %46

41:                                               ; preds = %3
  %42 = load %struct.nw_search_sequence*, %struct.nw_search_sequence** %6, align 8
  %43 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %44 = call i32 @ncp_reply_data(%struct.ncp_server* %43, i32 0)
  %45 = call i32 @memcpy(%struct.nw_search_sequence* %42, i32 %44, i32 4)
  br label %46

46:                                               ; preds = %41, %40
  %47 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %48 = call i32 @ncp_unlock_server(%struct.ncp_server* %47)
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_handle_path(%struct.ncp_server*, i64, i32, i32, i32*) #1

declare dso_local i32 @ncp_request(%struct.ncp_server*, i32) #1

declare dso_local i32 @memcpy(%struct.nw_search_sequence*, i32, i32) #1

declare dso_local i32 @ncp_reply_data(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
