; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_ubifs_find_free_leb_for_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_ubifs_find_free_leb_for_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ubifs_lprops = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"found LEB %d, free %d, dirty %d, flags %#x\00", align 1
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPROPS_NC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_find_free_leb_for_idx(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = call %struct.ubifs_lprops* @ubifs_fast_find_empty(%struct.ubifs_info* %10)
  store %struct.ubifs_lprops* %11, %struct.ubifs_lprops** %4, align 8
  %12 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %13 = icmp ne %struct.ubifs_lprops* %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %1
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = call %struct.ubifs_lprops* @ubifs_fast_find_freeable(%struct.ubifs_info* %15)
  store %struct.ubifs_lprops* %16, %struct.ubifs_lprops** %4, align 8
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %18 = icmp ne %struct.ubifs_lprops* %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %14
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ubifs_assert(i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %19
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = call %struct.ubifs_lprops* @scan_for_leb_for_idx(%struct.ubifs_info* %37)
  store %struct.ubifs_lprops* %38, %struct.ubifs_lprops** %4, align 8
  %39 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %40 = call i64 @IS_ERR(%struct.ubifs_lprops* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %44 = call i32 @PTR_ERR(%struct.ubifs_lprops* %43)
  store i32 %44, i32* %6, align 4
  br label %109

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46, %14
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %50 = icmp ne %struct.ubifs_lprops* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %109

54:                                               ; preds = %48
  %55 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %56 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %66 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dbg_find(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %70 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @LPROPS_TAKEN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @LPROPS_INDEX, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %77 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %76, %struct.ubifs_lprops* %77, i32 %80, i32 0, i32 %81, i32 0)
  store %struct.ubifs_lprops* %82, %struct.ubifs_lprops** %4, align 8
  %83 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %84 = call i64 @IS_ERR(%struct.ubifs_lprops* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %54
  %87 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %88 = call i32 @PTR_ERR(%struct.ubifs_lprops* %87)
  store i32 %88, i32* %6, align 4
  br label %109

89:                                               ; preds = %54
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %90)
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @LPROPS_NC, align 4
  %101 = load i32, i32* @LPROPS_NC, align 4
  %102 = load i32, i32* @LPROPS_TAKEN, align 4
  %103 = load i32, i32* @LPROPS_INDEX, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %98, i32 %99, i32 %100, i32 %101, i32 0, i32 %104, i32 0)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %113

107:                                              ; preds = %89
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %113

109:                                              ; preds = %86, %51, %42
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %107, %97
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_fast_find_empty(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_fast_find_freeable(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local %struct.ubifs_lprops* @scan_for_leb_for_idx(%struct.ubifs_info*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @dbg_find(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
