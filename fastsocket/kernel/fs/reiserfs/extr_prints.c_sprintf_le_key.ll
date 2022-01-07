; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_le_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_le_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_key = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"[%d %d %s %s]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.reiserfs_key*)* @sprintf_le_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_le_key(i8* %0, %struct.reiserfs_key* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reiserfs_key*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.reiserfs_key* %1, %struct.reiserfs_key** %4, align 8
  %5 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %6 = icmp ne %struct.reiserfs_key* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %10 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %14 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %18 = call i8* @le_offset(%struct.reiserfs_key* %17)
  %19 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %20 = call i8* @le_type(%struct.reiserfs_key* %19)
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i8* %18, i8* %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le_offset(%struct.reiserfs_key*) #1

declare dso_local i8* @le_type(%struct.reiserfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
