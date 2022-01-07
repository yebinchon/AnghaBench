; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_log.c_add_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_log.c_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_ch = type { i32 }

@UBI_SHORTTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32*, i32*, i8*)* @add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_node(%struct.ubifs_info* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ubifs_ch*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %18, %struct.ubifs_ch** %12, align 8
  %19 = load %struct.ubifs_ch*, %struct.ubifs_ch** %12, align 8
  %20 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %5
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ALIGN(i32 %34, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %40, i64 %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %45, %47
  %49 = call i32 @ubifs_pad(%struct.ubifs_info* %39, i8* %44, i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @UBI_SHORTTERM, align 4
  %56 = call i32 @ubifs_leb_change(%struct.ubifs_info* %50, i32 %52, i8* %53, i32 %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %32
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %6, align 4
  br label %82

61:                                               ; preds = %32
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @next_log_lnum(%struct.ubifs_info* %62, i32 %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %5
  %69 = load i8*, i8** %8, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %69, i64 %72
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @ALIGN(i32 %77, i32 8)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %78
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %68, %59
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_leb_change(%struct.ubifs_info*, i32, i8*, i32, i32) #1

declare dso_local i32 @next_log_lnum(%struct.ubifs_info*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
