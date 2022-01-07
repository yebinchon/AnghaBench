; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_free_parsed_mount_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_free_parsed_mount_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i32, %struct.nfs_parsed_mount_data*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.nfs_parsed_mount_data* }
%struct.TYPE_4__ = type { %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data* }
%struct.TYPE_3__ = type { %struct.nfs_parsed_mount_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_parsed_mount_data*)* @nfs_free_parsed_mount_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_free_parsed_mount_data(%struct.nfs_parsed_mount_data* %0) #0 {
  %2 = alloca %struct.nfs_parsed_mount_data*, align 8
  store %struct.nfs_parsed_mount_data* %0, %struct.nfs_parsed_mount_data** %2, align 8
  %3 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %4 = icmp ne %struct.nfs_parsed_mount_data* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %6, i32 0, i32 4
  %8 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %7, align 8
  %9 = call i32 @kfree(%struct.nfs_parsed_mount_data* %8)
  %10 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %12, align 8
  %14 = call i32 @kfree(%struct.nfs_parsed_mount_data* %13)
  %15 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %17, align 8
  %19 = call i32 @kfree(%struct.nfs_parsed_mount_data* %18)
  %20 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %22, align 8
  %24 = call i32 @kfree(%struct.nfs_parsed_mount_data* %23)
  %25 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %25, i32 0, i32 1
  %27 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %26, align 8
  %28 = call i32 @kfree(%struct.nfs_parsed_mount_data* %27)
  %29 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %30 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %29, i32 0, i32 0
  %31 = call i32 @security_free_mnt_opts(i32* %30)
  %32 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %33 = call i32 @kfree(%struct.nfs_parsed_mount_data* %32)
  br label %34

34:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @kfree(%struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @security_free_mnt_opts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
