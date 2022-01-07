; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_fid.c_v9fs_fid_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_fid.c_v9fs_fid_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.dentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @v9fs_fid_clone(%struct.dentry* %0) #0 {
  %2 = alloca %struct.p9_fid*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.p9_fid*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %6)
  store %struct.p9_fid* %7, %struct.p9_fid** %4, align 8
  %8 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %9 = call i64 @IS_ERR(%struct.p9_fid* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  store %struct.p9_fid* %12, %struct.p9_fid** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %15 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %14, i32 0, i32* null, i32 1)
  store %struct.p9_fid* %15, %struct.p9_fid** %5, align 8
  %16 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  store %struct.p9_fid* %16, %struct.p9_fid** %2, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  ret %struct.p9_fid* %18
}

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
