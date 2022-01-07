; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_init_if_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_init_if_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_if_block = type { i64, i64, i64, i8*, i8*, i32, i64 }
%struct.noce_if_info = type { i8*, i8*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ce_if_block*, %struct.noce_if_info*)* @noce_init_if_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_init_if_info(%struct.ce_if_block* %0, %struct.noce_if_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ce_if_block*, align 8
  %5 = alloca %struct.noce_if_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ce_if_block* %0, %struct.ce_if_block** %4, align 8
  store %struct.noce_if_info* %1, %struct.noce_if_info** %5, align 8
  %9 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %10 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %13 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %18 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %23 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %21
  %29 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %30 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %33 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %35 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %37 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ce_if_block*, %struct.ce_if_block** %4, align 8
  %39 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %28, %2
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @BB_END(i8* %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %45 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %44, i32 0, i32 3
  %46 = call i8* @noce_get_condition(i8* %43, i32* %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %40
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @onlyjump_p(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @XEXP(i8* %58, i32 0)
  %60 = call i64 @GET_MODE(i32 %59)
  %61 = load i64, i64* @BLKmode, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %68 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %71 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %74 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %65, %63, %55, %49, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @BB_END(i8*) #1

declare dso_local i8* @noce_get_condition(i8*, i32*) #1

declare dso_local i32 @onlyjump_p(i8*) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
