; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_probe_fsinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_probe_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i64 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)* }
%struct.nfs_fsinfo = type { i64, %struct.nfs_fattr* }
%struct.nfs_pathconf = type { i64, %struct.nfs_fattr* }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"--> nfs_probe_fsinfo()\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"<-- nfs_probe_fsinfo() = 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"nfs_probe_fsinfo: error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)* @nfs_probe_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_probe_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.nfs_fsinfo, align 8
  %9 = alloca %struct.nfs_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs_pathconf, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 1
  %14 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %14, %struct.nfs_client** %9, align 8
  %15 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %17 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nfs_server*, %struct.nfs_fh*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*)** %19, align 8
  %21 = icmp ne i32 (%struct.nfs_server*, %struct.nfs_fh*)* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nfs_server*, %struct.nfs_fh*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*)** %26, align 8
  %28 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %29 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %30 = call i32 %27(%struct.nfs_server* %28, %struct.nfs_fh* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %80

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %8, i32 0, i32 1
  store %struct.nfs_fattr* %36, %struct.nfs_fattr** %37, align 8
  %38 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %8, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %40 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)** %42, align 8
  %44 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %45 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %46 = call i32 %43(%struct.nfs_server* %44, %struct.nfs_fh* %45, %struct.nfs_fsinfo* %8)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %80

50:                                               ; preds = %35
  %51 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %52 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %53 = call i32 @nfs_server_set_fsinfo(%struct.nfs_server* %51, %struct.nfs_fh* %52, %struct.nfs_fsinfo* %8)
  %54 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %60 = getelementptr inbounds %struct.nfs_pathconf, %struct.nfs_pathconf* %11, i32 0, i32 1
  store %struct.nfs_fattr* %59, %struct.nfs_fattr** %60, align 8
  %61 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %62 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %61)
  %63 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %64 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)*, i64 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)** %66, align 8
  %68 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %69 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %70 = call i64 %67(%struct.nfs_server* %68, %struct.nfs_fh* %69, %struct.nfs_pathconf* %11)
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.nfs_pathconf, %struct.nfs_pathconf* %11, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %76 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %58
  br label %78

78:                                               ; preds = %77, %50
  %79 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

80:                                               ; preds = %49, %33
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %78
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_server_set_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
