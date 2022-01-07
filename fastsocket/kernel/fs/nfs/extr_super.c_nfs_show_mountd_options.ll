; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_show_mountd_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_show_mountd_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.nfs_server = type { i32*, i32*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c",mountaddr=%pI4\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c",mountaddr=%pI6\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c",mountaddr=unspecified\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c",mountvers=%u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",mountport=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.nfs_server*, i32)* @nfs_show_mountd_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_show_mountd_options(%struct.seq_file* %0, %struct.nfs_server* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %31 [
    i32 129, label %16
    i32 128, label %24
  ]

16:                                               ; preds = %3
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %8, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %26, %struct.sockaddr_in6** %9, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %24, %16
  %39 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %38
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %50)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57, %52
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @nfs_show_mountd_netid(%struct.seq_file* %67, %struct.nfs_server* %68, i32 %69)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @nfs_show_mountd_netid(%struct.seq_file*, %struct.nfs_server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
