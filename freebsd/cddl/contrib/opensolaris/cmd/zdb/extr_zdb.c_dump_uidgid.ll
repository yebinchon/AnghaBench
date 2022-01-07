; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_uidgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_uidgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fuid_table_loaded = common dso_local global i64 0, align 8
@MASTER_NODE_OBJ = common dso_local global i32 0, align 4
@ZFS_FUID_TABLES = common dso_local global i32 0, align 4
@idx_tree = common dso_local global i32 0, align 4
@domain_tree = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @dump_uidgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_uidgid(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @FUID_INDEX(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @FUID_INDEX(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @fuid_table_loaded, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %25 = load i32, i32* @ZFS_FUID_TABLES, align 4
  %26 = call i64 @zap_lookup(i32* %23, i32 %24, i32 %25, i32 8, i32 1, i32* %9)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = call i32 @zfs_fuid_avl_tree_create(i32* @idx_tree, i32* @domain_tree)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @zfs_fuid_table_load(i32* %31, i32 %32, i32* @idx_tree, i32* @domain_tree)
  %34 = load i64, i64* @B_TRUE, align 8
  store i64 %34, i64* @fuid_table_loaded, align 8
  br label %35

35:                                               ; preds = %22, %19, %3
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @print_idstr(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @print_idstr(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @FUID_INDEX(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_fuid_avl_tree_create(i32*, i32*) #1

declare dso_local i32 @zfs_fuid_table_load(i32*, i32, i32*, i32*) #1

declare dso_local i32 @print_idstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
