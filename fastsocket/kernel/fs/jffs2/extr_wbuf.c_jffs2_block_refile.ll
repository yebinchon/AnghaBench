; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_wbuf.c_jffs2_block_refile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_wbuf.c_jffs2_block_refile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.jffs2_eraseblock* }
%struct.jffs2_eraseblock = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"About to refile bad block at %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Refiling block at %08x to bad_used_list\0A\00", align 1
@REFILE_NOTEMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Refiling block at %08x to erase_pending_list\0A\00", align 1
@REF_OBSOLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32)* @jffs2_block_refile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_block_refile(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i32 %2) #0 {
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_eraseblock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %9 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @D1(i32 %11)
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %13, i32 0, i32 6
  %15 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %14, align 8
  %16 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %17 = icmp eq %struct.jffs2_eraseblock* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %20 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %19, i32 0, i32 6
  store %struct.jffs2_eraseblock* null, %struct.jffs2_eraseblock** %20, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %23 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %22, i32 0, i32 4
  %24 = call i32 @list_del(i32* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %27 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %32 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @D1(i32 %34)
  %36 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %37 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %36, i32 0, i32 4
  %38 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %39 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %38, i32 0, i32 5
  %40 = call i32 @list_add(i32* %37, i32* %39)
  br label %63

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @REFILE_NOTEMPTY, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %48 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @D1(i32 %50)
  %52 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %53 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %52, i32 0, i32 4
  %54 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %54, i32 0, i32 4
  %56 = call i32 @list_add(i32* %53, i32* %55)
  %57 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %58 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %62 = call i32 @jffs2_erase_pending_trigger(%struct.jffs2_sb_info* %61)
  br label %63

63:                                               ; preds = %41, %30
  %64 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %65 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %66 = call i32 @jffs2_prealloc_raw_node_refs(%struct.jffs2_sb_info* %64, %struct.jffs2_eraseblock* %65, i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %63
  %69 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %70 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %73 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %74 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %75 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %78 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @REF_OBSOLETE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @jffs2_link_node_ref(%struct.jffs2_sb_info* %72, %struct.jffs2_eraseblock* %73, i32 %84, i32 %85, i32* null)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %89 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %94 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %99 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %104 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %68, %63
  %108 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %109 = call i32 @jffs2_dbg_dump_block_lists_nolock(%struct.jffs2_sb_info* %108)
  %110 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %111 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %112 = call i32 @jffs2_dbg_acct_sanity_check_nolock(%struct.jffs2_sb_info* %110, %struct.jffs2_eraseblock* %111)
  %113 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %114 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %115 = call i32 @jffs2_dbg_acct_paranoia_check_nolock(%struct.jffs2_sb_info* %113, %struct.jffs2_eraseblock* %114)
  ret void
}

declare dso_local i32 @D1(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jffs2_erase_pending_trigger(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_prealloc_raw_node_refs(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32) #1

declare dso_local i32 @jffs2_link_node_ref(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32, i32, i32*) #1

declare dso_local i32 @jffs2_dbg_dump_block_lists_nolock(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_dbg_acct_sanity_check_nolock(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

declare dso_local i32 @jffs2_dbg_acct_paranoia_check_nolock(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
