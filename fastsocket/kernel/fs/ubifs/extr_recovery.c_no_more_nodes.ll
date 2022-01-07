; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_no_more_nodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_no_more_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i32 }

@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unexpected bad common header at %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unexpected data at %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32, i32, i32)* @no_more_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_more_nodes(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_ch*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %16, %struct.ubifs_ch** %12, align 8
  %17 = load %struct.ubifs_ch*, %struct.ubifs_ch** %12, align 8
  %18 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @UBIFS_CH_SZ, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ALIGN(i32 %23, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i64 @is_empty(i8* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %79

40:                                               ; preds = %5
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ubifs_check_node(%struct.ubifs_info* %41, i8* %42, i32 %43, i32 %44, i32 1, i32 0)
  %46 = load i32, i32* @EUCLEAN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  store i32 0, i32* %6, align 4
  br label %79

53:                                               ; preds = %40
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ALIGN(i32 %56, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i64 @is_empty(i8* %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %79

73:                                               ; preds = %53
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %73, %72, %49, %39
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @is_empty(i8*, i32) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_rcvry(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
