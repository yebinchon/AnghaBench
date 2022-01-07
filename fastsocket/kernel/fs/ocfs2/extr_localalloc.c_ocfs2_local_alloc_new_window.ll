; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_new_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_new_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.ocfs2_local_alloc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"asking me to alloc a new window over a non-empty one\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Allocating %u clusters for a new window.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_LA_EVENT_FRAGMENTED = common dso_local global i32 0, align 4
@OCFS2_LA_DISABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"New window allocated:\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"window la_bm_off = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"window bits = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*)* @ocfs2_local_alloc_new_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_new_window(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  %12 = call i32 (...) @mlog_entry_void()
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %18, %struct.ocfs2_dinode** %10, align 8
  %19 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %20 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %19)
  store %struct.ocfs2_local_alloc* %20, %struct.ocfs2_local_alloc** %11, align 8
  %21 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %43 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @ocfs2_claim_clusters(%struct.ocfs2_super* %39, i32* %40, %struct.ocfs2_alloc_context* %41, i8* %44, i8** %8, i8** %9)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %70, %50
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %53 = load i32, i32* @OCFS2_LA_EVENT_FRAGMENTED, align 4
  %54 = call i64 @ocfs2_recalc_la_window(%struct.ocfs2_super* %52, i32 %53)
  %55 = load i64, i64* @OCFS2_LA_DISABLED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %139

58:                                               ; preds = %51
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @ocfs2_claim_clusters(%struct.ocfs2_super* %59, i32* %60, %struct.ocfs2_alloc_context* %61, i8* %64, i8** %8, i8** %9)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %51

71:                                               ; preds = %58
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 1
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %80 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %82 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  br label %84

84:                                               ; preds = %74, %71
  br label %85

85:                                               ; preds = %84, %29
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %96

96:                                               ; preds = %93, %88
  br label %139

97:                                               ; preds = %85
  %98 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %99 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %102 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i8* @cpu_to_le32(i8* %103)
  %105 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %11, align 8
  %106 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i8* @cpu_to_le32(i8* %107)
  %109 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %110 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %114 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %118 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %117)
  %119 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %11, align 8
  %122 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = call i32 @memset(i32 %120, i32 0, i32 %124)
  %126 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %128 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %127)
  %129 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %133 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @le32_to_cpu(i8* %136)
  %138 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %97, %96, %57
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @mlog_exit(i32 %140)
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_claim_clusters(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i8*, i8**, i8**) #1

declare dso_local i64 @ocfs2_recalc_la_window(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
