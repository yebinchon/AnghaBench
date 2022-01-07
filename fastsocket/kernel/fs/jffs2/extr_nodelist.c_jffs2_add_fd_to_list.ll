; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_add_fd_to_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_add_fd_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_full_dirent = type { i64, i64, %struct.jffs2_full_dirent*, i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"add dirent \22%s\22, ino #%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Eep! Marking new dirent node obsolete, old is \22%s\22, ino #%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"marking old dirent \22%s\22, ino #%u obsolete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_add_fd_to_list(%struct.jffs2_sb_info* %0, %struct.jffs2_full_dirent* %1, %struct.jffs2_full_dirent** %2) #0 {
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_full_dirent*, align 8
  %6 = alloca %struct.jffs2_full_dirent**, align 8
  %7 = alloca %struct.jffs2_full_dirent**, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_full_dirent* %1, %struct.jffs2_full_dirent** %5, align 8
  store %struct.jffs2_full_dirent** %2, %struct.jffs2_full_dirent*** %6, align 8
  %8 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %6, align 8
  store %struct.jffs2_full_dirent** %8, %struct.jffs2_full_dirent*** %7, align 8
  %9 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %10 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %13 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dbg_dentlist(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %111, %3
  %17 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %18 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %19 = icmp ne %struct.jffs2_full_dirent* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %22 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %21, align 8
  %23 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %26 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br label %29

29:                                               ; preds = %20, %16
  %30 = phi i1 [ false, %16 ], [ %28, %20 ]
  br i1 %30, label %31, label %115

31:                                               ; preds = %29
  %32 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %33 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %32, align 8
  %34 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %37 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %111

40:                                               ; preds = %31
  %41 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %42 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %41, align 8
  %43 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %46 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %111, label %50

50:                                               ; preds = %40
  %51 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %52 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %55 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %54, align 8
  %56 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %61 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %60, align 8
  %62 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %65 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %64, align 8
  %66 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dbg_dentlist(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67)
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %70 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %71 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %69, i64 %72)
  %74 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %75 = call i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent* %74)
  br label %110

76:                                               ; preds = %50
  %77 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %78 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %77, align 8
  %79 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %82 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %81, align 8
  %83 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dbg_dentlist(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %84)
  %86 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %87 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %86, align 8
  %88 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %87, i32 0, i32 2
  %89 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %88, align 8
  %90 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %91 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %90, i32 0, i32 2
  store %struct.jffs2_full_dirent* %89, %struct.jffs2_full_dirent** %91, align 8
  %92 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %93 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %92, align 8
  %94 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %76
  %98 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %99 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %100 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %99, align 8
  %101 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %98, i64 %102)
  br label %104

104:                                              ; preds = %97, %76
  %105 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %106 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %105, align 8
  %107 = call i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent* %106)
  %108 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %109 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  store %struct.jffs2_full_dirent* %108, %struct.jffs2_full_dirent** %109, align 8
  br label %110

110:                                              ; preds = %104, %59
  br label %122

111:                                              ; preds = %40, %31
  %112 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %113 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %112, align 8
  %114 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %113, i32 0, i32 2
  store %struct.jffs2_full_dirent** %114, %struct.jffs2_full_dirent*** %7, align 8
  br label %16

115:                                              ; preds = %29
  %116 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  %117 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %116, align 8
  %118 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %119 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %118, i32 0, i32 2
  store %struct.jffs2_full_dirent* %117, %struct.jffs2_full_dirent** %119, align 8
  %120 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %121 = load %struct.jffs2_full_dirent**, %struct.jffs2_full_dirent*** %7, align 8
  store %struct.jffs2_full_dirent* %120, %struct.jffs2_full_dirent** %121, align 8
  br label %122

122:                                              ; preds = %115, %110
  ret void
}

declare dso_local i32 @dbg_dentlist(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, i64) #1

declare dso_local i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
