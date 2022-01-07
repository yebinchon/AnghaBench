; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_master.c_ubifs_write_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_master.c_ubifs_write_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@UBIFS_MST_LNUM = common dso_local global i32 0, align 4
@UBIFS_MST_NODE_SZ = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_write_master(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EROFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %1
  %16 = load i32, i32* @UBIFS_MST_LNUM, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %15
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %91

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cpu_to_le64(i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @UBI_SHORTTERM, align 4
  %61 = call i32 @ubifs_write_node(%struct.ubifs_info* %53, %struct.TYPE_2__* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %41
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %91

66:                                               ; preds = %41
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @UBI_SHORTTERM, align 4
  %89 = call i32 @ubifs_write_node(%struct.ubifs_info* %81, %struct.TYPE_2__* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %80, %77, %64, %38, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ubifs_write_node(%struct.ubifs_info*, %struct.TYPE_2__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
