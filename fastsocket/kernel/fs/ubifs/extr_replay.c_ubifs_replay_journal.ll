; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_ubifs_replay_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_ubifs_replay_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32 }

@UBIFS_TRUN_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bad index head LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"start replaying the journal\00", align 1
@UBIFS_LOG_LNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"finished, log head LEB %d:%d, max_sqnum %llu, highest_inum %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_replay_journal(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* @UBIFS_TRUN_KEY, align 4
  %11 = icmp sgt i32 %10, 5
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = call i32 @take_ihead(%struct.ubifs_info* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %161

20:                                               ; preds = %1
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ubifs_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %161

40:                                               ; preds = %20
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @vmalloc(i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %161

50:                                               ; preds = %40
  %51 = call i32 (i8*, ...) @dbg_mnt(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  store i32 %56, i32* %6, align 4
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %92, %50
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %70, %73
  %75 = icmp sge i32 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  store i32 %77, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @replay_log_leb(%struct.ubifs_info* %79, i32 %80, i32 %81, i8* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %97

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %151

91:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %62

97:                                               ; preds = %86, %62
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %99 = call i32 @replay_buds(%struct.ubifs_info* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %151

103:                                              ; preds = %97
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = call i32 @apply_replay_tree(%struct.ubifs_info* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %151

109:                                              ; preds = %103
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 14
  %112 = call i32 @atomic_long_read(i32* %111)
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %116 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %115, i32 0, i32 12
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 13
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp sle i64 %124, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %109
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 11
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %129, %109
  %135 = phi i1 [ true, %109 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @ubifs_assert(i32 %136)
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %142 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %145 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %148 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %147, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8*, ...) @dbg_mnt(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %143, i32 %146, i64 %149)
  br label %151

151:                                              ; preds = %134, %108, %102, %90
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %153 = call i32 @destroy_replay_tree(%struct.ubifs_info* %152)
  %154 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %155 = call i32 @destroy_bud_list(%struct.ubifs_info* %154)
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 @vfree(i8* %156)
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 2
  store i32 0, i32* %159, align 8
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %151, %47, %30, %18
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @take_ihead(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @dbg_mnt(i8*, ...) #1

declare dso_local i32 @replay_log_leb(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @replay_buds(%struct.ubifs_info*) #1

declare dso_local i32 @apply_replay_tree(%struct.ubifs_info*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @destroy_replay_tree(%struct.ubifs_info*) #1

declare dso_local i32 @destroy_bud_list(%struct.ubifs_info*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
