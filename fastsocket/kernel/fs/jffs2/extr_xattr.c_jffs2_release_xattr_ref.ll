; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_jffs2_release_xattr_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_jffs2_release_xattr_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_ref = type { i8*, %struct.jffs2_xattr_ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_release_xattr_ref(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_ref* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_xattr_ref*, align 8
  %5 = alloca %struct.jffs2_xattr_ref*, align 8
  %6 = alloca %struct.jffs2_xattr_ref**, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_xattr_ref* %1, %struct.jffs2_xattr_ref** %4, align 8
  %7 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %8 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %11 = bitcast %struct.jffs2_xattr_ref* %10 to i8*
  %12 = icmp ne i8* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %15, i32 0, i32 0
  %17 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  store %struct.jffs2_xattr_ref* %17, %struct.jffs2_xattr_ref** %5, align 8
  %18 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %18, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %19, %struct.jffs2_xattr_ref*** %6, align 8
  br label %20

20:                                               ; preds = %33, %14
  %21 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %22 = icmp ne %struct.jffs2_xattr_ref* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %25 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %26 = icmp eq %struct.jffs2_xattr_ref* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %29 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %28, i32 0, i32 1
  %30 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %29, align 8
  %31 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %6, align 8
  store %struct.jffs2_xattr_ref* %30, %struct.jffs2_xattr_ref** %31, align 8
  br label %39

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %35 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %34, i32 0, i32 1
  store %struct.jffs2_xattr_ref** %35, %struct.jffs2_xattr_ref*** %6, align 8
  %36 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %5, align 8
  %37 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %36, i32 0, i32 1
  %38 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %37, align 8
  store %struct.jffs2_xattr_ref* %38, %struct.jffs2_xattr_ref** %5, align 8
  br label %20

39:                                               ; preds = %27, %20
  %40 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %41 = call i32 @jffs2_free_xattr_ref(%struct.jffs2_xattr_ref* %40)
  br label %42

42:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @jffs2_free_xattr_ref(%struct.jffs2_xattr_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
