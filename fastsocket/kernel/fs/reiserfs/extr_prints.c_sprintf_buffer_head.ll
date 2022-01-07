; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_buffer_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_buffer_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i32, i64, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"dev %s, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UPTODATE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"!UPTODATE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DIRTY\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CLEAN\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNLOCKED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.buffer_head*)* @sprintf_buffer_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_buffer_head(i8* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load i32, i32* @BDEVNAME_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @bdevname(i32 %14, i8* %10)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 3
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = call i64 @buffer_uptodate(%struct.buffer_head* %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = call i64 @buffer_dirty(%struct.buffer_head* %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %42 = call i64 @buffer_locked(%struct.buffer_head* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %46 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18, i64 %21, i32 %24, i32 %27, i32 %30, i8* %35, i8* %40, i8* %45)
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i64, i32, i32, i32, i8*, i8*, i8*) #2

declare dso_local i8* @bdevname(i32, i8*) #2

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #2

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
