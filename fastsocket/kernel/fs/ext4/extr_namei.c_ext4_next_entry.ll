; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_next_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_dir_entry_2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_dir_entry_2* (%struct.ext4_dir_entry_2*, i64)* @ext4_next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %0, i64 %1) #0 {
  %3 = alloca %struct.ext4_dir_entry_2*, align 8
  %4 = alloca i64, align 8
  store %struct.ext4_dir_entry_2* %0, %struct.ext4_dir_entry_2** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %3, align 8
  %6 = bitcast %struct.ext4_dir_entry_2* %5 to i8*
  %7 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %3, align 8
  %8 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @ext4_rec_len_from_disk(i32 %9, i64 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %6, i64 %12
  %14 = bitcast i8* %13 to %struct.ext4_dir_entry_2*
  ret %struct.ext4_dir_entry_2* %14
}

declare dso_local i32 @ext4_rec_len_from_disk(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
