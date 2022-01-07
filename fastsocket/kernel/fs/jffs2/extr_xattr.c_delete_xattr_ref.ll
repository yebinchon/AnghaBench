; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_delete_xattr_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_delete_xattr_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_ref = type { i32, i32, i32, %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_datum*, %struct.TYPE_2__* }
%struct.jffs2_xattr_datum = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XREF_DELETE_MARKER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"xref(ino=%u, xid=%u, xseqno=%u) was removed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*)* @delete_xattr_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_xattr_ref(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_ref* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_xattr_ref*, align 8
  %5 = alloca %struct.jffs2_xattr_datum*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_xattr_ref* %1, %struct.jffs2_xattr_ref** %4, align 8
  %6 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %7 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %6, i32 0, i32 4
  %8 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %7, align 8
  store %struct.jffs2_xattr_datum* %8, %struct.jffs2_xattr_datum** %5, align 8
  %9 = load i32, i32* @XREF_DELETE_MARKER, align 4
  %10 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %11 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %15 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %20 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %22 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %21, i32 0, i32 4
  %23 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %22, align 8
  %24 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %27 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %31, i32 0, i32 1
  %33 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %32, align 8
  %34 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %35 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %34, i32 0, i32 3
  store %struct.jffs2_xattr_ref* %33, %struct.jffs2_xattr_ref** %35, align 8
  %36 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %38 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %37, i32 0, i32 1
  store %struct.jffs2_xattr_ref* %36, %struct.jffs2_xattr_ref** %38, align 8
  %39 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %43 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %46 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %4, align 8
  %49 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dbg_xattr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50)
  %52 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %53 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %54 = call i32 @unrefer_xattr_datum(%struct.jffs2_sb_info* %52, %struct.jffs2_xattr_datum* %53)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dbg_xattr(i8*, i32, i32, i32) #1

declare dso_local i32 @unrefer_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
