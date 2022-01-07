; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_apply_replay_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_apply_replay_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32 }
%struct.replay_entry = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@REPLAY_DELETION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"LEB %d:%d len %d flgs %d sqnum %llu %s\00", align 1
@REPLAY_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.replay_entry*)* @apply_replay_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_replay_entry(%struct.ubifs_info* %0, %struct.replay_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.replay_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.replay_entry* %1, %struct.replay_entry** %5, align 8
  %9 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %10 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REPLAY_DELETION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %17 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %20 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %23 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %26 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %29 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %32 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %31, i32 0, i32 2
  %33 = call i32 @DBGKEY(i32* %32)
  %34 = call i32 @dbg_mnt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %36 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %41 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @REPLAY_REF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %49 = call i32 @set_bud_lprops(%struct.ubifs_info* %47, %struct.replay_entry* %48)
  store i32 %49, i32* %6, align 4
  br label %144

50:                                               ; preds = %2
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %53 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %52, i32 0, i32 2
  %54 = call i64 @is_hash_key(%struct.ubifs_info* %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %62 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %61, i32 0, i32 2
  %63 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %64 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %63, i32 0, i32 6
  %65 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %60, i32* %62, i32* %64)
  store i32 %65, i32* %6, align 4
  br label %82

66:                                               ; preds = %56
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %68 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %69 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %68, i32 0, i32 2
  %70 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %71 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %74 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %77 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %80 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %79, i32 0, i32 6
  %81 = call i32 @ubifs_tnc_add_nm(%struct.ubifs_info* %67, i32* %69, i32 %72, i32 %75, i32 %78, i32* %80)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %66, %59
  br label %143

83:                                               ; preds = %50
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %88 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %89 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %88, i32 0, i32 2
  %90 = call i32 @key_type(%struct.ubifs_info* %87, i32* %89)
  switch i32 %90, label %103 [
    i32 129, label %91
    i32 128, label %99
  ]

91:                                               ; preds = %86
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %93 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %94 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %93, i32 0, i32 2
  %95 = call i32 @key_inum(%struct.ubifs_info* %92, i32* %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ubifs_tnc_remove_ino(%struct.ubifs_info* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  br label %108

99:                                               ; preds = %86
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %101 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %102 = call i32 @trun_remove_range(%struct.ubifs_info* %100, %struct.replay_entry* %101)
  store i32 %102, i32* %6, align 4
  br label %108

103:                                              ; preds = %86
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %105 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %106 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %105, i32 0, i32 2
  %107 = call i32 @ubifs_tnc_remove(%struct.ubifs_info* %104, i32* %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %103, %99, %91
  br label %123

109:                                              ; preds = %83
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %111 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %112 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %111, i32 0, i32 2
  %113 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %114 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %117 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %120 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %110, i32* %112, i32 %115, i32 %118, i32 %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %109, %108
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %146

128:                                              ; preds = %123
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %130 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %135 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %136 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %135, i32 0, i32 2
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.replay_entry*, %struct.replay_entry** %5, align 8
  %139 = getelementptr inbounds %struct.replay_entry, %struct.replay_entry* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ubifs_recover_size_accum(%struct.ubifs_info* %134, i32* %136, i32 %137, i32 %140)
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %133, %128
  br label %143

143:                                              ; preds = %142, %82
  br label %144

144:                                              ; preds = %143, %46
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %126
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @dbg_mnt(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DBGKEY(i32*) #1

declare dso_local i32 @set_bud_lprops(%struct.ubifs_info*, %struct.replay_entry*) #1

declare dso_local i64 @is_hash_key(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, i32*, i32*) #1

declare dso_local i32 @ubifs_tnc_add_nm(%struct.ubifs_info*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @key_inum(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_tnc_remove_ino(%struct.ubifs_info*, i32) #1

declare dso_local i32 @trun_remove_range(%struct.ubifs_info*, %struct.replay_entry*) #1

declare dso_local i32 @ubifs_tnc_remove(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, i32*, i32, i32, i32) #1

declare dso_local i32 @ubifs_recover_size_accum(%struct.ubifs_info*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
