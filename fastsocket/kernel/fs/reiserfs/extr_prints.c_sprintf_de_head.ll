; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_de_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_de_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"[offset=%d dir_id=%d objectid=%d location=%d state=%04x]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.reiserfs_de_head*)* @sprintf_de_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_de_head(i8* %0, %struct.reiserfs_de_head* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reiserfs_de_head*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.reiserfs_de_head* %1, %struct.reiserfs_de_head** %4, align 8
  %5 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %6 = icmp ne %struct.reiserfs_de_head* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %10 = call i32 @deh_offset(%struct.reiserfs_de_head* %9)
  %11 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %12 = call i32 @deh_dir_id(%struct.reiserfs_de_head* %11)
  %13 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %14 = call i32 @deh_objectid(%struct.reiserfs_de_head* %13)
  %15 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %16 = call i32 @deh_location(%struct.reiserfs_de_head* %15)
  %17 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %18 = call i32 @deh_state(%struct.reiserfs_de_head* %17)
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16, i32 %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_dir_id(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_objectid(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_state(%struct.reiserfs_de_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
