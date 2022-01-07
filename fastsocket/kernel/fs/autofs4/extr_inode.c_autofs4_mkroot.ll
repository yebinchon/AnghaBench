; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_mkroot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_mkroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_info = type { i32 }
%struct.autofs_sb_info = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.autofs_info* (%struct.autofs_sb_info*)* @autofs4_mkroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.autofs_info* @autofs4_mkroot(%struct.autofs_sb_info* %0) #0 {
  %2 = alloca %struct.autofs_info*, align 8
  %3 = alloca %struct.autofs_sb_info*, align 8
  %4 = alloca %struct.autofs_info*, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %3, align 8
  %5 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %6 = load i32, i32* @S_IFDIR, align 4
  %7 = or i32 %6, 493
  %8 = call %struct.autofs_info* @autofs4_init_ino(i32* null, %struct.autofs_sb_info* %5, i32 %7)
  store %struct.autofs_info* %8, %struct.autofs_info** %4, align 8
  %9 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %10 = icmp ne %struct.autofs_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.autofs_info* null, %struct.autofs_info** %2, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  store %struct.autofs_info* %13, %struct.autofs_info** %2, align 8
  br label %14

14:                                               ; preds = %12, %11
  %15 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  ret %struct.autofs_info* %15
}

declare dso_local %struct.autofs_info* @autofs4_init_ino(i32*, %struct.autofs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
