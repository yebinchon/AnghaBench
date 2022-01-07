; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_nxt_dir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_nxt_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"new entry %p old entry %p\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"search entry %p began after end of SMB %p old entry %p\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"search entry %p extends after end of SMB %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @nxt_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nxt_dir_entry(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = bitcast %struct.TYPE_4__* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %8, align 8
  br label %34

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %26, %16
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i32, i8*, i8*, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43, i8* %44)
  store i8* null, i8** %4, align 8
  br label %70

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59, %50
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i32, i8*, i8*, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %66)
  store i8* null, i8** %4, align 8
  br label %70

68:                                               ; preds = %59, %55
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %68, %64, %41
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i8*, i8*) #1

declare dso_local i32 @cERROR(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
