; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_debug_suballoc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_debug_suballoc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dinode = type { %struct.TYPE_10__, %struct.TYPE_7__, i32, i32, i64, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Suballoc Inode %llu:\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"i_signature:                  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"i_size:                       %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"i_clusters:                   %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"i_generation:                 %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"id1.bitmap1.i_used:           %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"id1.bitmap1.i_total:          %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"id2.i_chain.cl_cpg:           %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"id2.i_chain.cl_bpc:           %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"id2.i_chain.cl_count:         %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"id2.i_chain.cl_next_free_rec: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"fe->id2.i_chain.cl_recs[%d].c_free:  %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"fe->id2.i_chain.cl_recs[%d].c_total: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"fe->id2.i_chain.cl_recs[%d].c_blkno: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dinode*)* @ocfs2_debug_suballoc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_debug_suballoc_inode(%struct.ocfs2_dinode* %0) #0 {
  %2 = alloca %struct.ocfs2_dinode*, align 8
  %3 = alloca i32, align 4
  store %struct.ocfs2_dinode* %0, %struct.ocfs2_dinode** %2, align 8
  %4 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %45)
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %51)
  %53 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %57)
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %110, %1
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %68 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %74, i64 %84)
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %86, i64 %96)
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %100 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %98, i64 %108)
  br label %110

110:                                              ; preds = %73
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %65

113:                                              ; preds = %65
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
