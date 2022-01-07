; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_fattr_map_and_free_names.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_fattr_map_and_free_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fattr_map_and_free_names(%struct.nfs_server* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %5 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %6 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %7 = call i64 @nfs_fattr_map_owner_name(%struct.nfs_server* %5, %struct.nfs_fattr* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %11 = call i32 @nfs_fattr_free_owner_name(%struct.nfs_fattr* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %15 = call i64 @nfs_fattr_map_group_name(%struct.nfs_server* %13, %struct.nfs_fattr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %19 = call i32 @nfs_fattr_free_group_name(%struct.nfs_fattr* %18)
  br label %20

20:                                               ; preds = %17, %12
  ret void
}

declare dso_local i64 @nfs_fattr_map_owner_name(%struct.nfs_server*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_fattr_free_owner_name(%struct.nfs_fattr*) #1

declare dso_local i64 @nfs_fattr_map_group_name(%struct.nfs_server*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_fattr_free_group_name(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
