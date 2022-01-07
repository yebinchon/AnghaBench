; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_show_mountd_netid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_show_mountd_netid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.nfs_server = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c",mountproto=\00", align 1
@RPCBIND_NETID_UDP = common dso_local global i8* null, align 8
@RPCBIND_NETID_TCP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@RPCBIND_NETID_UDP6 = common dso_local global i8* null, align 8
@RPCBIND_NETID_TCP6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.nfs_server*, i32)* @nfs_show_mountd_netid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_show_mountd_netid(%struct.seq_file* %0, %struct.nfs_server* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %56 [
    i32 131, label %16
    i32 130, label %36
  ]

16:                                               ; preds = %3
  %17 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 129, label %24
  ]

20:                                               ; preds = %16
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i8*, i8** @RPCBIND_NETID_UDP, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %21, i8* %22)
  br label %35

24:                                               ; preds = %16
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load i8*, i8** @RPCBIND_NETID_TCP, align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %25, i8* %26)
  br label %35

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %24, %20
  br label %63

36:                                               ; preds = %3
  %37 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %48 [
    i32 128, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %36
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load i8*, i8** @RPCBIND_NETID_UDP6, align 8
  %43 = call i32 @seq_printf(%struct.seq_file* %41, i8* %42)
  br label %55

44:                                               ; preds = %36
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load i8*, i8** @RPCBIND_NETID_TCP6, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* %46)
  br label %55

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %44, %40
  br label %63

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %55, %35
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
