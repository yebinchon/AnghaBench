; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_set_bud_lprops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_set_bud_lprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.replay_entry = type { i64, i32, i32, i32 }
%struct.ubifs_lprops = type { i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"bud LEB %d was GC'd (%d free, %d dirty)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"LEB %d lp: %d free %d dirty replay: %d free %d dirty\00", align 1
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.replay_entry*)* @set_bud_lprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bud_lprops(%struct.ubifs_info* %0, %struct.replay_entry* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.replay_entry*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.replay_entry* %1, %struct.replay_entry** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %12 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %10, i32 %13)
  store %struct.ubifs_lprops* %14, %struct.ubifs_lprops** %5, align 8
  %15 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %16 = call i64 @IS_ERR(%struct.ubifs_lprops* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.ubifs_lprops* %19)
  store i32 %20, i32* %6, align 4
  br label %118

21:                                               ; preds = %2
  %22 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %26 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %94

29:                                               ; preds = %21
  %30 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %39 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %37, %29
  %43 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %44 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %47 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dbg_mnt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %48, i32 %51)
  %53 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %54 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %57 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %60 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dbg_gc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58, i32 %61)
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %67 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %42
  %77 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %78 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %81 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %84 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %87 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %90 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dbg_msg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %82, i32 %85, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %76, %42
  br label %94

94:                                               ; preds = %93, %37, %21
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %96 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %97 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %98 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.replay_entry*, %struct.replay_entry** %4, align 8
  %102 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %106 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @LPROPS_TAKEN, align 4
  %109 = or i32 %107, %108
  %110 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %95, %struct.ubifs_lprops* %96, i32 %99, i32 %104, i32 %109, i32 0)
  store %struct.ubifs_lprops* %110, %struct.ubifs_lprops** %5, align 8
  %111 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %112 = call i64 @IS_ERR(%struct.ubifs_lprops* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %94
  %115 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %116 = call i32 @PTR_ERR(%struct.ubifs_lprops* %115)
  store i32 %116, i32* %6, align 4
  br label %118

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %117, %114, %18
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %120 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %119)
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @dbg_mnt(i8*, i32, i64, i32) #1

declare dso_local i32 @dbg_gc(i8*, i32, i64, i32) #1

declare dso_local i32 @dbg_msg(i8*, i32, i64, i32, i32, i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
