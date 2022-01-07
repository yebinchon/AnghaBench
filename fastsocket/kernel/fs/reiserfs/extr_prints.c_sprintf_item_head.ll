; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_item_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_item_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }

@KEY_FORMAT_3_6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"*3.6* \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"*3.5*\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c", item_len %d, item_location %d, free_space(entry_count) %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.item_head*)* @sprintf_item_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_item_head(i8* %0, %struct.item_head* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.item_head*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.item_head* %1, %struct.item_head** %4, align 8
  %5 = load %struct.item_head*, %struct.item_head** %4, align 8
  %6 = icmp ne %struct.item_head* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.item_head*, %struct.item_head** %4, align 8
  %10 = call i64 @ih_version(%struct.item_head* %9)
  %11 = load i64, i64* @KEY_FORMAT_3_6, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %15 = call i32 @strcpy(i8* %8, i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load %struct.item_head*, %struct.item_head** %4, align 8
  %22 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %23 = call i32 @sprintf_le_key(i8* %20, i32* %22)
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load %struct.item_head*, %struct.item_head** %4, align 8
  %30 = call i32 @ih_item_len(%struct.item_head* %29)
  %31 = load %struct.item_head*, %struct.item_head** %4, align 8
  %32 = call i32 @ih_location(%struct.item_head* %31)
  %33 = load %struct.item_head*, %struct.item_head** %4, align 8
  %34 = call i32 @ih_free_space(%struct.item_head* %33)
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32, i32 %34)
  br label %39

36:                                               ; preds = %2
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @ih_version(%struct.item_head*) #1

declare dso_local i32 @sprintf_le_key(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i32 @ih_free_space(%struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
