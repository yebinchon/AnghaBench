; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_som.c_check_som_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_som.c_check_som_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.som_hdr = type { i64, i64, i64 }

@SOM_SID_PARISC_1_0 = common dso_local global i64 0, align 8
@SOM_SID_PARISC_1_1 = common dso_local global i64 0, align 8
@SOM_SID_PARISC_2_0 = common dso_local global i64 0, align 8
@ENOEXEC = common dso_local global i32 0, align 4
@SOM_EXEC_NONSHARE = common dso_local global i64 0, align 8
@SOM_EXEC_SHARE = common dso_local global i64 0, align 8
@SOM_EXEC_DEMAND = common dso_local global i64 0, align 8
@SOM_ID_OLD = common dso_local global i64 0, align 8
@SOM_ID_NEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.som_hdr*)* @check_som_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_som_header(%struct.som_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.som_hdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.som_hdr* %0, %struct.som_hdr** %3, align 8
  %7 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %8 = bitcast %struct.som_hdr* %7 to i32*
  store i32* %8, i32** %4, align 8
  %9 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %10 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SOM_SID_PARISC_1_0, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %16 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOM_SID_PARISC_1_1, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %22 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOM_SID_PARISC_2_0, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOEXEC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %20, %14, %1
  %30 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %31 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SOM_EXEC_NONSHARE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %37 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SOM_EXEC_SHARE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %43 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SOM_EXEC_DEMAND, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOEXEC, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %87

50:                                               ; preds = %41, %35, %29
  %51 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %52 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOM_ID_OLD, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.som_hdr*, %struct.som_hdr** %3, align 8
  %58 = getelementptr inbounds %struct.som_hdr, %struct.som_hdr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SOM_ID_NEW, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOEXEC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %87

65:                                               ; preds = %56, %50
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @ENOEXEC, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %83, %62, %47, %26
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
