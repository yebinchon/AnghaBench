; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_orphan.c_do_write_orph_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_orphan.c_do_write_orph_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32, i32 }

@UBI_SHORTTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @do_write_orph_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_orph_node(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubifs_assert(i32 %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %18, i32 %21, i32 %22, i32 1)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ALIGN(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @UBI_SHORTTERM, align 4
  %38 = call i32 @ubifs_leb_change(%struct.ubifs_info* %29, i32 %32, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %69

39:                                               ; preds = %3
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %71

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @UBI_SHORTTERM, align 4
  %68 = call i32 @ubifs_write_node(%struct.ubifs_info* %56, i32 %59, i32 %60, i32 %63, i64 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %55, %11
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %52
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_leb_change(%struct.ubifs_info*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_write_node(%struct.ubifs_info*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
