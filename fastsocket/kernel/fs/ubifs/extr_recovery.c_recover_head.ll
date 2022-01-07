; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_recover_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_recover_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"cleaning head at %d:%d\00", align 1
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i8*)* @recover_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_head(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  br label %21

20:                                               ; preds = %4
  store i32 512, i32* %10, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %21
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %87

39:                                               ; preds = %35
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ubi_read(i32 %42, i32 %43, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @is_empty(i8* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %50, %39
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %87

65:                                               ; preds = %55
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ubi_read(i32 %68, i32 %69, i8* %70, i32 0, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %87

77:                                               ; preds = %65
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @UBI_UNKNOWN, align 4
  %85 = call i32 @ubi_leb_change(i32 %80, i32 %81, i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %77, %75, %61, %38
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @is_empty(i8*, i32) #1

declare dso_local i32 @dbg_rcvry(i8*, i32, i32) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubi_leb_change(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
