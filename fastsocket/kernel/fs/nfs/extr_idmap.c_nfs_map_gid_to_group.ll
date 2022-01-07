; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_map_gid_to_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_map_gid_to_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.idmap* }
%struct.idmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFS_CAP_UIDGID_NOMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_map_gid_to_group(%struct.nfs_server* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.idmap*, align 8
  %10 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.idmap*, %struct.idmap** %14, align 8
  store %struct.idmap* %15, %struct.idmap** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NFS_CAP_UIDGID_NOMAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @nfs_idmap_lookup_name(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.idmap*, %struct.idmap** %9, align 8
  %33 = load %struct.idmap*, %struct.idmap** %9, align 8
  %34 = getelementptr inbounds %struct.idmap, %struct.idmap* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @nfs_idmap_name(%struct.idmap* %32, i32* %34, i32 %35, i8* %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @nfs_map_numeric_to_string(i32 %43, i8* %44, i64 %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @nfs_idmap_lookup_name(i32, i8*, i8*, i64) #1

declare dso_local i32 @nfs_idmap_name(%struct.idmap*, i32*, i32, i8*) #1

declare dso_local i32 @nfs_map_numeric_to_string(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
