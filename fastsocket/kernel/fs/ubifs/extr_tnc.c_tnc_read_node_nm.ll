; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_read_node_nm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_read_node_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @tnc_read_node_nm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_read_node_nm(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %10 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %11 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %10, i32 0, i32 2
  %12 = call i32 @is_hash_key(%struct.ubifs_info* %9, i32* %11)
  %13 = call i32 @ubifs_assert(i32 %12)
  %14 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ubifs_assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %30 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i8* %25, i64 %28, i64 %31)
  store i32 0, i32* %4, align 4
  br label %48

33:                                               ; preds = %3
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %34, %struct.ubifs_zbranch* %35, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %44 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @lnc_add(%struct.ubifs_info* %43, %struct.ubifs_zbranch* %44, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %40, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

declare dso_local i32 @lnc_add(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
