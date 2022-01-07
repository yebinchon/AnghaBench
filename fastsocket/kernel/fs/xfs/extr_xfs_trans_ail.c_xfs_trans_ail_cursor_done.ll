; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_trans_ail_cursor_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_trans_ail_cursor_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { %struct.xfs_ail_cursor }
%struct.xfs_ail_cursor = type { %struct.xfs_ail_cursor*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_ail_cursor_done(%struct.xfs_ail* %0, %struct.xfs_ail_cursor* %1) #0 {
  %3 = alloca %struct.xfs_ail*, align 8
  %4 = alloca %struct.xfs_ail_cursor*, align 8
  %5 = alloca %struct.xfs_ail_cursor*, align 8
  %6 = alloca %struct.xfs_ail_cursor*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %3, align 8
  store %struct.xfs_ail_cursor* %1, %struct.xfs_ail_cursor** %4, align 8
  store %struct.xfs_ail_cursor* null, %struct.xfs_ail_cursor** %5, align 8
  %7 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %4, align 8
  %10 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %10, i32 0, i32 0
  %12 = icmp eq %struct.xfs_ail_cursor* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %15, i32 0, i32 0
  store %struct.xfs_ail_cursor* %16, %struct.xfs_ail_cursor** %5, align 8
  %17 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %17, i32 0, i32 0
  %19 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %18, align 8
  store %struct.xfs_ail_cursor* %19, %struct.xfs_ail_cursor** %6, align 8
  br label %20

20:                                               ; preds = %34, %14
  %21 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %6, align 8
  %22 = icmp ne %struct.xfs_ail_cursor* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %6, align 8
  %25 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %4, align 8
  %26 = icmp eq %struct.xfs_ail_cursor* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %6, align 8
  %29 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %28, i32 0, i32 0
  %30 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %29, align 8
  %31 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %5, align 8
  %32 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %31, i32 0, i32 0
  store %struct.xfs_ail_cursor* %30, %struct.xfs_ail_cursor** %32, align 8
  br label %39

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %6, align 8
  store %struct.xfs_ail_cursor* %35, %struct.xfs_ail_cursor** %5, align 8
  %36 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_ail_cursor, %struct.xfs_ail_cursor* %36, i32 0, i32 0
  %38 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %37, align 8
  store %struct.xfs_ail_cursor* %38, %struct.xfs_ail_cursor** %6, align 8
  br label %20

39:                                               ; preds = %27, %20
  %40 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %6, align 8
  %41 = call i32 @ASSERT(%struct.xfs_ail_cursor* %40)
  br label %42

42:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @ASSERT(%struct.xfs_ail_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
