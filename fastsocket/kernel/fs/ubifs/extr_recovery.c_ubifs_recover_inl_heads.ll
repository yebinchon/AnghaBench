; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_recover_inl_heads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_recover_inl_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"checking index head at %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"checking LPT head at %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_recover_inl_heads(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MS_RDONLY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ true, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ubifs_assert(i32 %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @recover_head(%struct.ubifs_info* %31, i32 %34, i32 %37, i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %20
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @recover_head(%struct.ubifs_info* %52, i32 %55, i32 %58, i8* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %42
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @dbg_rcvry(i8*, i32, i32) #1

declare dso_local i32 @recover_head(%struct.ubifs_info*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
