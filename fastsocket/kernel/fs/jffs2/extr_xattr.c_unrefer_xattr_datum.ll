; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_unrefer_xattr_datum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_unrefer_xattr_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32 }
%struct.jffs2_xattr_datum = type { i32, i8*, i32, i32, i32, i32 }

@JFFS2_XFLAGS_DEAD = common dso_local global i32 0, align 4
@JFFS2_XFLAGS_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xdatum(xid=%u, version=%u) was removed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*)* @unrefer_xattr_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unrefer_xattr_datum(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_datum* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_xattr_datum*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_xattr_datum* %1, %struct.jffs2_xattr_datum** %4, align 8
  %5 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %6 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %5, i32 0, i32 5
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %7, i32 0, i32 0
  %9 = call i64 @atomic_dec_and_lock(i32* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %13 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %14 = call i32 @unload_xattr_datum(%struct.jffs2_sb_info* %12, %struct.jffs2_xattr_datum* %13)
  %15 = load i32, i32* @JFFS2_XFLAGS_DEAD, align 4
  %16 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %17 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %21 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %24 = bitcast %struct.jffs2_xattr_datum* %23 to i8*
  %25 = icmp eq i8* %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %11
  %27 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %28 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @JFFS2_XFLAGS_INVALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %37 = call i32 @jffs2_free_xattr_datum(%struct.jffs2_xattr_datum* %36)
  br label %44

38:                                               ; preds = %11
  %39 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %40 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %39, i32 0, i32 4
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %41, i32 0, i32 1
  %43 = call i32 @list_add(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %38, %26
  %45 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %46 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %49 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  %52 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dbg_xattr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @unload_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jffs2_free_xattr_datum(%struct.jffs2_xattr_datum*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dbg_xattr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
