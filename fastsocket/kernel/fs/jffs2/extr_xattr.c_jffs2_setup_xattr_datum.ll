; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_jffs2_setup_xattr_datum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_jffs2_setup_xattr_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_xattr_datum = type { i64, i64, i32 }
%struct.jffs2_sb_info = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@XATTRINDEX_HASHSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.jffs2_xattr_datum* @jffs2_setup_xattr_datum(%struct.jffs2_sb_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.jffs2_xattr_datum*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.jffs2_xattr_datum*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.jffs2_xattr_datum* @jffs2_find_xattr_datum(%struct.jffs2_sb_info* %9, i64 %10)
  store %struct.jffs2_xattr_datum* %11, %struct.jffs2_xattr_datum** %8, align 8
  %12 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %13 = icmp ne %struct.jffs2_xattr_datum* %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %3
  %15 = call %struct.jffs2_xattr_datum* (...) @jffs2_alloc_xattr_datum()
  store %struct.jffs2_xattr_datum* %15, %struct.jffs2_xattr_datum** %8, align 8
  %16 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %17 = icmp ne %struct.jffs2_xattr_datum* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.jffs2_xattr_datum* @ERR_PTR(i32 %20)
  store %struct.jffs2_xattr_datum* %21, %struct.jffs2_xattr_datum** %4, align 8
  br label %55

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %25 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %28 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %30 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %38 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %22
  %43 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  %44 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %43, i32 0, i32 2
  %45 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @XATTRINDEX_HASHSIZE, align 8
  %50 = urem i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i32 @list_add_tail(i32* %44, i32* %51)
  br label %53

53:                                               ; preds = %42, %3
  %54 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %8, align 8
  store %struct.jffs2_xattr_datum* %54, %struct.jffs2_xattr_datum** %4, align 8
  br label %55

55:                                               ; preds = %53, %18
  %56 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %4, align 8
  ret %struct.jffs2_xattr_datum* %56
}

declare dso_local %struct.jffs2_xattr_datum* @jffs2_find_xattr_datum(%struct.jffs2_sb_info*, i64) #1

declare dso_local %struct.jffs2_xattr_datum* @jffs2_alloc_xattr_datum(...) #1

declare dso_local %struct.jffs2_xattr_datum* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
