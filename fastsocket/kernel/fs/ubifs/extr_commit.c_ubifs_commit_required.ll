; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_commit.c_ubifs_commit_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_commit.c_ubifs_commit_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"old: %s, new: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_commit_required(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %3 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %28 [
    i32 130, label %9
    i32 133, label %9
    i32 129, label %18
    i32 131, label %27
    i32 128, label %27
    i32 132, label %27
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dbg_cstate(i32 %12)
  %14 = call i32 @dbg_cstate(i32 131)
  %15 = call i32 @dbg_cmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  store i32 131, i32* %17, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dbg_cstate(i32 %21)
  %23 = call i32 @dbg_cstate(i32 128)
  %24 = call i32 @dbg_cmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  br label %28

27:                                               ; preds = %1, %1, %1
  br label %28

28:                                               ; preds = %1, %27, %18, %9
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dbg_cmt(i8*, i32, i32) #1

declare dso_local i32 @dbg_cstate(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
